# angles.rb
#

class EqoT

  # From angles.rb:<br> 
  # Apparent solar longitude = true longitude - aberation   
  def al_Sun( ta = A2000 )
    ta = check_jct_zero( ta )  
    tl_Sun( ta ) - 
             0.00569 - 
             0.00478 * sin( deg_to_rad( omega( ta ) ) )
  end 
  alias_method  :apparent_longitude, :al_Sun 
  
  # From angles.rb:<br>
  # one time component to total equation of time
  def angle_delta_oblique( ta = A2000 )
    ta    = check_jct_zero( ta )         
    tl_Sun( ta ) - 
    ra_Sun( ta )        
  end

  # From angles.rb:<br> 
  # one time component to total equation of time
  def angle_delta_orbit( ta = A2000 )
    ta    = check_jct_zero( ta )        
    @ma - ta_Sun( ta ) 
  end  
  
  # From angles.rb:<br>
  # component of equation of equinox
  def angle_delta_psi( ta = A2000 )
    ta = check_jct_zero( ta )  
    delta_equinox( ta )[ 1 ]
  end
  
  # From angles.rb:<br>
  # total equation of time  
  def angle_equation_of_time( ta = A2000 )
    ta = check_jct_zero( ta )
    @ma    =         ma_Sun()    
    angle_delta_oblique( ta ) +
	  angle_delta_orbit( ta )    
  end 

  # From angles.rb:<br>
  # equation of centre
  # added to mean anomaly to get true anomaly. 
  def center( ta = A2000)
    ta = check_jct_zero( ta )    
    sine_1M = sin( 1.0 * deg_to_rad( @ma ) )
    sine_2M = sin( 2.0 * deg_to_rad( @ma ) )
    sine_3M = sin( 3.0 * deg_to_rad( @ma ) )
    sine_4M = sin( 4.0 * deg_to_rad( @ma ) )
    sine_5M = sin( 5.0 * deg_to_rad( @ma ) )
    e = eccentricity_Earth( ta )
    rad_to_deg( sine_1M * (     2.0  * e    - e**3/4.0 + 5/96.0 * e**5 ) +  
                sine_2M * (   5/4.0  * e**2 - 11/24.0 * e**4 )           + 
                sine_3M * ( 13/12.0  * e**3 - 43/64.0 * e**5 )           +
                sine_4M *  103/96.0  * e**4                              +
                sine_5M * 1097/960.0 * e**5                              )
    # sine_1M *( 1.914602 - ta[ 0 ] * ( 0.004817 + ta[ 0 ] * 0.000014 )) +                                               +
    # sine_2M *( 0.019993 - ta[ 0 ] * 0.000101 )                         +                                              +
    # sine_3M *  0.000289
  end
  alias_method :equation_of_center, :center
  
  # From angles.rb:<br>
  # cosine apparent longitude
  # could be useful when dividing 
  def cosine_al_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    cos( deg_to_rad( al_Sun( ta ) ) )
  end
  alias_method :cosine_apparent_longitude, :cosine_al_Sun
  
  # From angles.rb:<br>
  # cosine true longitude
  # used in solar right ascension  
  def cosine_tl_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    cos( deg_to_rad( tl_Sun( ta ) ) )
  end
  alias_method :cosine_true_longitude, :cosine_tl_Sun
  
  # From angles.rb:<br>
  # cosine true obliquity
  # used in solar right ascension 
  def cosine_to_Earth( ta = A2000 )
    ta = check_jct_zero( ta )
    cos( deg_to_rad( to_Earth( ta ) ) )
  end
  alias_method :cosine_true_obliquity, :cosine_to_Earth
  
  # From angles.rb:<br>
  # solar declination
  def dec_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    sine_declination = sin( deg_to_rad( to_Earth( ta ) ) ) * 
                                     sine_al_Sun( ta )
    rad_to_deg( asin( sine_declination ) )
  end
  alias_method :declination, :dec_Sun
  
  # From angles.rb:<br>
  # delta epsilon
  # component of equation of equinox 
  def delta_epsilon( ta = A2000 )
    ta = check_jct_zero( ta )
    delta_equinox( ta )[ 0 ]
  end
  
  # From angles.rb:<br>
  # one time component to total equation of time 
  def delta_oblique( ta = A2000 )
    ta    = check_jct_zero( ta )          
    tl_Sun( ta ) - 
    ra_Sun( ta )        
  end
  alias_method :delta_t_ecliptic, :delta_oblique

  # From angles.rb:<br>
  # one time component to total equation of time
  def delta_orbit( ta = A2000 )
    ta    = check_jct_zero( ta )        
    @ma - ta_Sun( ta ) 
  end
  alias_method :delta_t_elliptic, :delta_orbit  
  
  # From angles.rb:<br>
  # component of equation of equinox 
  def delta_psi( ta = A2000 )
    ta = check_jct_zero( ta )  
    delta_equinox( ta )[ 1 ]
  end
  
  # From angles.rb:<br>
  # eccentricity of elliptical Earth orbit around Sun
  # Horner calculation method  
  def eccentricity_Earth( ta = A2000 )
    ta = check_jct_zero( ta )      
    # 0.016708617 - ta[ 0 ] * ( 0.000042037 + ta[ 0 ] * 0.0000001235 )
    [-0.0000001235, -0.000042037, 0.016708617].inject(0.0) {|p, a| p * ta[0] + a}
  end
  alias_method :eccentricity_earth_orbit, :eccentricity_Earth
  
  # From angles.rb:<br>
  # equation of equinox  
  def eq_of_equinox( ta = A2000 )
    ta = check_jct_zero( ta )  
    cosine_to_Earth( ta ) *
          delta_psi( ta )
  end
  
  # From angles.rb:<br>
  # total equation of time  
  def eot()
    ta  = time_julian_century( @ajd )
    @ma = ma_Sun()    
    delta_orbit( ta ) + delta_oblique( ta )	      
  end 
  
  # From angles.rb:<br>
  # angle factor for daily sidereal time (experimental)  
  def factor
    jda  =           Date.parse("2000-01-01").jd
    jdb  =           jda + 1
    tjca =  time_julian_century( jda )
    tjcb =  time_julian_century( jdb )
    tlaa =             tl_Aries( tjca )
    tlab =             tl_Aries( tjcb )
    dif  = tlab - tlaa
    dr   = dif  + 360.0
	360 / dr
  end

  # From angles.rb:<br>
  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.  
  def gml_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
	total = [ 1.0/-19880000.0, 1.0/-152990.0, 1.0/499310.0,
	          0.0003032028, 36000.76982779, 280.4664567 ]
    mod_360( total.inject(0.0) {|p, a| p * ta[0] + a} )
  end
  alias_method :geometric_mean_longitude, :gml_Sun

  # From angles.rb:<br>
  # horizon angle for provided geo coordinates
  # used for angles from transit to horizon  
  def ha_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    zenith              = 90.8333
    cosine_zenith       = cos( deg_to_rad( zenith ) )
    cosine_declination  = cos( deg_to_rad( dec_Sun( ta ) ) )
    sine_declination    = sin( deg_to_rad( dec_Sun( ta ) ) )    
    cosine_latitude     = cos( deg_to_rad( @latitude ) )
    sine_latitude       = sin( deg_to_rad( @latitude ) )
    top                 = cosine_zenith - sine_declination * sine_latitude
    bottom              = cosine_declination * cosine_latitude
    t_cosine = top / bottom 
    t_cosine > 1.0 || t_cosine < -1.0 ? cos = 1.0 : cos = t_cosine
    rad_to_deg( acos( cos ) ) 
  end
  alias_method :horizon_angle, :ha_Sun  
 
  # From angles.rb:<br>
  # angle of Suns' mean anomaly
  # used in equation of time
  # and to get true anomaly. 
  def ma_Sun()
    ta = time_julian_century( @ajd )
    ade = delta_equinox( ta )[ 2 ] / ASD
    @ma = mod_360 ade       
  end
  alias_method :mean_anomaly, :ma_Sun
  
  # From angles.rb:<br>
  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf 
  def ml_Aries( ta = A2000 )
    ta     = check_jct_zero( ta )
    jd     = ta[ 0 ] * DJC # convert first term back to jdn - J2000
    # old terms  	
    # angle  = (36000.770053608 / DJC + 360) * jd  # 36000.770053608 = 0.9856473662862 * DJC
    # total = [ -1.0/3.8710000e7, 3.87930e-4, 0, 100.460618375 ].inject(0.0) {|p, a| p * ta[0] + a} + 180 + angle  
    # newer terms seem to be in arcseconds / 15.0
    # 0.0000013, - 0.0000062, 0.0931118, 307.4771600, 8639877.3173760, 24110.5493771
    angle  = (35999.4888224 / DJC + 360) * jd     
    total  = angle +   280.460622404583   +
              ta[ 0 ] *  1.281154833333   +
              ta[ 1 ] *  3.87965833333e-4 +
              ta[ 2 ] * -2.58333333333e-8 +
              ta[ 3 ] *  5.41666666666e-9           
	  mod_360( total )      
  end
  alias_method :mean_longitude_aries, :ml_Aries
  
  # From angles.rb:<br>
  # mean obliquity of Earth  
  def mo_Earth( ta = A2000 )
    ta = check_jct_zero( ta )    
    [ -0.0000000434, -0.000000576,  0.00200340, 
      -0.0001831,   -46.836769, 84381.406 ].inject(0.0) {|p, a| p * ta[0] + a} / ASD	
  end
  alias_method :mean_obliquity_of_ecliptic, :mo_Earth
  alias_method :mean_obliquity, :mo_Earth
  
  # From angles.rb:<br>
  # omega is a component of nutation and used 
  # in apparent longitude 
  # omega is the longitude of the mean ascending node of the lunar orbit 
  # on the ecliptic plane measured from the mean equinox of date. 
  def omega( ta = A2000 )
    ta = check_jct_zero( ta )
    delta_equinox( ta )[ 3 ] / ASD      
  end
  
  # From angles.rb:<br>
  # solar right ascension
  def ra_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    y0 = sine_al_Sun( ta ) * cosine_to_Earth( ta )
    180.0 +           
    rad_to_deg( atan2( -y0, -cosine_al_Sun( ta ) ) )    
  end
  alias_method :right_ascension, :ra_Sun
  
  # From angles.rb:<br>
  # sine apparent longitude
  # used in solar declination  
  def sine_al_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    sin( deg_to_rad( al_Sun( ta ) ) )
  end
  alias_method :sine_apparent_longitude, :sine_al_Sun
  
  # From angles.rb:<br>
  # sine true longitude
  # used in solar right ascension 
  def sine_tl_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    sin( deg_to_rad( tl_Sun( ta ) ) )
  end
  alias_method :sine_true_longitude, :sine_tl_Sun

  # From angles.rb:<br>
  # angle true anomaly
  # used in equation of time  
  def ta_Sun( ta = A2000 )
  ta = check_jct_zero( ta )  
    @ma + center( ta )	
  end
  alias_method :true_anomaly, :ta_Sun 

  # From angles.rb:<br>
  # true longitude of equinox 'first point of aries'
  # considers nutation 
  def tl_Aries( ta = A2000 )
    ta = check_jct_zero( ta )  
    eq_of_equinox( ta ) +
	     ml_Aries( ta )     
  end
  alias_method :true_longitude_aries, :tl_Aries  
  
  # From angles.rb:<br>
  # angle of true longitude sun
  # used in equation of time 
  def tl_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    mod_360( 
	          gml_Sun( ta ) + 
             center( ta )
           )	 
  end
  alias_method :true_longitude, :tl_Sun
  
  # From angles.rb:<br>
  # true obliquity considers nutation  
  def to_Earth( ta = A2000 )
    ta = check_jct_zero( ta )
    delta_epsilon( ta ) +
	     mo_Earth( ta )     
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