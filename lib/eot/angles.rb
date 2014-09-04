# angles.rb

class Eot
  include Math
  # From angles.rb:<br> 
  # Apparent solar longitude = true longitude - aberation   
  def al_Sun()    
    tl_Sun() - 9.9309234438477352926958004727002e-5 - 8.3426738245328953776952418733756e-5 * sin(omega())
  end 
  alias_method  :apparent_longitude, :al_Sun 
  
  # From angles.rb:<br>
  # one time component to total equation of time
  def angle_delta_oblique()           
    tl_Sun() - ra_Sun()        
  end

  # From angles.rb:<br> 
  # one time component to total equation of time
  def angle_delta_orbit()           
    @ma - ta_Sun() 
  end  
  
  # From angles.rb:<br>
  # component of equation of equinox
  def angle_delta_psi()   
    delta_equinox()[ 1 ]
  end
  
  # From angles.rb:<br>
  # total equation of time  
  def angle_equation_of_time()    
    @ma = ma_Sun()    
    angle_delta_oblique() + angle_delta_orbit()    
  end 

  # From angles.rb:<br>
  # equation of centre
  # added to mean anomaly to get true anomaly. 
  def center()      
    sine_1M = sin( 1.0 * @ma )
    sine_2M = sin( 2.0 * @ma )
    sine_3M = sin( 3.0 * @ma )
    sine_4M = sin( 4.0 * @ma )
    sine_5M = sin( 5.0 * @ma )
    e = eccentricity_Earth()
    sine_1M * (     2.0  * e    - e**3/4.0 + 5/96.0 * e**5 ) +  
    sine_2M * (   5/4.0  * e**2 - 11/24.0 * e**4 )           + 
    sine_3M * ( 13/12.0  * e**3 - 43/64.0 * e**5 )           +
    sine_4M *  103/96.0  * e**4                              +
    sine_5M * 1097/960.0 * e**5                              
    # sine_1M *( 1.914602 - ta[ 0 ] * ( 0.004817 + ta[ 0 ] * 0.000014 )) +                                               +
    # sine_2M *( 0.019993 - ta[ 0 ] * 0.000101 )                         +                                              +
    # sine_3M *  0.000289
  end
  alias_method :equation_of_center, :center
  
  # From angles.rb:<br>
  # cosine apparent longitude
  # could be useful when dividing 
  def cosine_al_Sun()    
    cos( al_Sun() ) 
  end
  alias_method :cosine_apparent_longitude, :cosine_al_Sun
  
  # From angles.rb:<br>
  # cosine true longitude
  # used in solar right ascension  
  def cosine_tl_Sun()    
    cos( tl_Sun() ) 
  end
  alias_method :cosine_true_longitude, :cosine_tl_Sun
  
  # From angles.rb:<br>
  # cosine true obliquity
  # used in solar right ascension 
  def cosine_to_Earth()    
    cos( to_Earth() ) 
  end
  alias_method :cosine_true_obliquity, :cosine_to_Earth
  
  # From angles.rb:<br>
  # solar declination
  def dec_Sun()   
    sine_declination = sin( to_Earth() )  * sine_al_Sun()
    asin( sine_declination ) 
  end
  alias_method :declination, :dec_Sun
  
  # From angles.rb:<br>
  # delta epsilon
  # component of equation of equinox 
  def delta_epsilon()    
    delta_equinox()[ 0 ]
  end
  
  # From angles.rb:<br>
  # one time component to total equation of time 
  def delta_oblique()            
    tl_Sun() -  ra_Sun()        
  end
  alias_method :delta_t_ecliptic, :delta_oblique

  # From angles.rb:<br>
  # one time component to total equation of time
  def delta_orbit()           
    @ma - ta_Sun() 
  end
  alias_method :delta_t_elliptic, :delta_orbit  
  
  # From angles.rb:<br>
  # component of equation of equinox 
  def delta_psi()     
    delta_equinox()[ 1 ]
  end
  
  # From angles.rb:<br>
  # eccentricity of elliptical Earth orbit around Sun
  # Horners' calculation method  
  def eccentricity_Earth()
    [-0.0000001235, -0.000042037, 0.016708617].inject(0.0) {|p, a| p * @ta + a} 
  end
  alias_method :eccentricity_earth_orbit, :eccentricity_Earth
  
  # From angles.rb:<br>
  # equation of equinox  
  def eq_of_equinox()   
    cosine_to_Earth() * delta_psi()
  end
  
  # From angles.rb:<br>
  # total equation of time  
  def eot()  
    delta_orbit() + delta_oblique()	      
  end 
  
  # From angles.rb:<br>
  # angle factor for daily sidereal time (experimental)  
  def factor
    @ajd  =           Date.parse("2000-01-01").jd    
    tlaa =             tl_Aries( )
    @ajd    =         @ajd + 1
    tlab =             tl_Aries()
    dif  = tlab - tlaa
    dr   = dif  + 360.0
    360 / dr
  end

  # From angles.rb:<br>
  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.  
  def gml_Sun()    
    total = [ 1.0/-19880000.0, 1.0/-152990.0, 1.0/499310.0,
		 0.0003032028, 36000.76982779, 280.4664567 ] 
    mod_360(total.inject(0.0) {|p, a| p * @ta + a}) * D2R
  end
  alias_method :geometric_mean_longitude, :gml_Sun

  # From angles.rb:<br>
  # horizon angle for provided geo coordinates
  # used for angles from transit to horizons  
  def ha_Sun()
    zenith              = 90.8333 * D2R
    cosine_zenith       = cos( zenith ) 
    cosine_declination  = cos( dec_Sun() ) 
    sine_declination    = sin( dec_Sun() )   
    cosine_latitude     = cos( @latitude * D2R )
    sine_latitude       = sin( @latitude * D2R )
    top                 = cosine_zenith - sine_declination * sine_latitude
    bottom              = cosine_declination * cosine_latitude
    t_cosine = top / bottom 
    t_cosine > 1.0 || t_cosine < -1.0 ? cos = 1.0 : cos = t_cosine
    acos( cos )  
  end
  alias_method :horizon_angle, :ha_Sun  
 
  # From angles.rb:<br>
  # angle of Suns' mean anomaly
  # used in equation of time
  # and to get true anomaly. 
  def ma_Sun()
    @ta = ( @ajd - DJ00 ) / DJC     
    @ma = delta_equinox()[ 2 ]       
  end
  alias_method :mean_anomaly, :ma_Sun
  
  # From angles.rb:<br>
  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf 
  def ml_Aries()   
    jd     = @ta * DJC # convert first term back to jdn - J2000
    # old terms  	
    # angle  = (36000.770053608 / DJC + 360) * jd  # 36000.770053608 = 0.9856473662862 * DJC
    # total = [ -1.0/3.8710000e7, 3.87930e-4, 0, 100.460618375 ].inject(0.0) {|p, a| p * ta[0] + a} + 180 + angle  
    # newer terms seem to be in arcseconds / 15.0
    # 0.0000013, - 0.0000062, 0.0931118, 307.4771600, 8639877.3173760, 24110.5493771
    angle  = (35999.4888224 / DJC + 360) * jd     
#    total  = angle +   280.460622404583   +
#              @ta[ 0 ] *  1.281154833333   +
#              @ta[ 1 ] *  3.87965833333e-4 +
#              @ta[ 2 ] * -2.58333333333e-8 +
#              @ta[ 3 ] *  5.41666666666e-9
    total = [5.41666666666e-9, -2.58333333333e-8, 3.87965833333e-4, 1.281154833333, 280.460622404583].inject(0.0) {|p, a| p * @ta + a}          
    mod_360( angle + total )  * D2R  
  end
  alias_method :mean_longitude_aries, :ml_Aries
  
  # From angles.rb:<br>
  # mean obliquity of Earth  
  def mo_Earth()     
    [ -0.0000000434, -0.000000576,  0.00200340, 
      -0.0001831,   -46.836769, 84381.406 ].inject(0.0) {|p, a| p * @ta + a} * DAS2R
  end
  alias_method :mean_obliquity_of_ecliptic, :mo_Earth
  alias_method :mean_obliquity, :mo_Earth
  
  # From angles.rb:<br>
  # omega is a component of nutation and used 
  # in apparent longitude 
  # omega is the longitude of the mean ascending node of the lunar orbit 
  # on the ecliptic plane measured from the mean equinox of date. 
  def omega()    
    delta_equinox()[ 3 ]       
  end
  
  # From angles.rb:<br>
  # solar right ascension
  def ra_Sun()    
    y0 = sine_al_Sun() * cosine_to_Earth()
    180.0 * PI / 180.0 + atan2( -y0, -cosine_al_Sun() )   
  end
  alias_method :right_ascension, :ra_Sun
  
  # From angles.rb:<br>
  # sine apparent longitude
  # used in solar declination  
  def sine_al_Sun()
    sin( al_Sun() ) 
  end
  alias_method :sine_apparent_longitude, :sine_al_Sun
  
  # From angles.rb:<br>
  # sine true longitude
  # used in solar right ascension 
  def sine_tl_Sun()    
    sin( tl_Sun() ) 
  end
  alias_method :sine_true_longitude, :sine_tl_Sun

  # From angles.rb:<br>
  # angle true anomaly
  # used in equation of time  
  def ta_Sun()     
    @ma + center()	
  end
  alias_method :true_anomaly, :ta_Sun 

  # From angles.rb:<br>
  # true longitude of equinox 'first point of aries'
  # considers nutation 
  def tl_Aries()     
    eq_of_equinox() + ml_Aries()     
  end
  alias_method :true_longitude_aries, :tl_Aries  
  
  # From angles.rb:<br>
  # angle of true longitude sun
  # used in equation of time 
  def tl_Sun()   
    gml_Sun() + center() 	 
  end
  alias_method :true_longitude, :tl_Sun
  
  # From angles.rb:<br>
  # true obliquity considers nutation  
  def to_Earth()   
    delta_epsilon() + mo_Earth()     
  end
  alias_method :obliquity_correction, :to_Earth
  alias_method :true_obliquity, :to_Earth

end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'angles_spec'
  require 'aliased_angles_spec'

end