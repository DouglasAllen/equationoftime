# angles.rb
#

class EqoT

  # Apparent solar longitude = true longitude - aberation   
  def al_Sun( ta = A2000 )
    ta = check_jct_zero( ta )  
    tl_Sun( ta ) - 
             0.00569 - 
             0.00478 * sin( deg_to_rad( omega( ta ) ) )
  end 
  
  # one time component to total equation of time
  # in angles.rb  
  def angle_delta_oblique( ta = A2000 )
    ta    = check_jct_zero( ta )         
    tl_Sun( ta ) - 
    ra_Sun( ta )        
  end

  # one time component to total equation of time
  # in angles.rb
  def angle_delta_orbit( ta = A2000 )
    ta    = check_jct_zero( ta )        
    @ma - ta_Sun( ta ) 
  end  
  
  # component of equation of equinox
  # in angles.rb  
  def angle_delta_psi( ta = A2000 )
    ta = check_jct_zero( ta )  
    delta_equinox( ta )[ 1 ]
  end
  
  # total equation of time
    # in angles.rb  
  def angle_equation_of_time( ta = A2000 )
    ta = check_jct_zero( ta )
    @ma    =         ma_Sun( ta )    
    angle_delta_oblique( ta ) +
	  angle_delta_orbit( ta )    
  end 

  # equation of centre
  # added to mean anomaly to get true anomaly.
  # in angles.rb  
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
  
  # cosine apparent longitude
  # could be useful when dividing
  # in angles.rb  
  def cosine_al_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    cos( deg_to_rad( al_Sun( ta ) ) )
  end
  
  # cosine true longitude
  # used in solar right ascension
  # in angles.rb  
  def cosine_tl_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    cos( deg_to_rad( tl_Sun( ta ) ) )
  end
  
  # cosine true obliquity
  # used in solar right ascension 
  def cosine_to_Earth( ta = A2000 )
    ta = check_jct_zero( ta )
    cos( deg_to_rad( to_Earth( ta ) ) )
  end
  
  # solar declination
  def dec_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    sine_declination = sin( deg_to_rad( to_Earth( ta ) ) ) * 
                                     sine_al_Sun( ta )
    rad_to_deg( asin( sine_declination ) )
  end
  
  # delta epsilon
  # component of equation of equinox 
  def delta_epsilon( ta = A2000 )
    ta = check_jct_zero( ta )
    delta_equinox( ta )[ 0 ]
  end
  
  # one time component to total equation of time 
  def delta_oblique( ta = A2000 )
    ta    = check_jct_zero( ta )          
    tl_Sun( ta ) - 
    ra_Sun( ta )        
  end

  # one time component to total equation of time
  def delta_orbit( ta = A2000 )
    ta    = check_jct_zero( ta )        
    @ma - ta_Sun( ta ) 
  end  
  
  # component of equation of equinox 
  def delta_psi( ta = A2000 )
    ta = check_jct_zero( ta )  
    delta_equinox( ta )[ 1 ]
  end
  
  # eccentricity of elliptical Earth orbit around Sun
  # Horner calculation method  
  def eccentricity_Earth( ta = A2000 )
    ta = check_jct_zero( ta )      
    # 0.016708617 - ta[ 0 ] * ( 0.000042037 + ta[ 0 ] * 0.0000001235 )
    [-0.0000001235, -0.000042037, 0.016708617].poly_eval( ta[0] )
  end
  
  # equation of equinox  
  def eq_of_equinox( ta = A2000 )
    ta = check_jct_zero( ta )  
    cosine_to_Earth( ta ) *
          delta_psi( ta )
  end
  
  # total equation of time  
  def eot()
    ta  = time_julian_century( @ajd )
    @ma =         ma_Sun()    
    delta_orbit( ta ) + delta_oblique( ta )	      
  end 
  
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

  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.  
  def gml_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    total =                 280.4664567    +
            ta[ 0 ] *     36000.76982779   +
            ta[ 1 ] *         0.0003032028 +
            ta[ 2 ] /    499310.0          +
            ta[ 3 ] /   -153000.0          +
            ta[ 4 ] / -20000000.0
	mod_360( total )
	total = [ 1.0/-19880000.0, 1.0/-152990.0, 1.0/499310.0,
			      0.0003032028, 36000.76982779, 280.4664567 ]
    mod_360( total.poly_eval( ta[0] ) )
  end

  # horizon angle for provided geo coordinates
  # used for angles from transit to horizon  
  def ha_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    zenith              = 90.8333
    cosine_zenith       = cos( deg_to_rad( zenith ) )
    cosine_declination  = cos( deg_to_rad( dec_Sun( ta ) ) )
    sine_declination    = sin( deg_to_rad( dec_Sun( ta ) ) )
    
    @latitude.nil? ? latitude = 0 : latitude = @latitude
    
    cosine_latitude     = cos( deg_to_rad( latitude ) )
    sine_latitude       = sin( deg_to_rad( latitude ) )
    # tangent_altitude    = cosine_zenith / cosine_declination * cosine_latitude
    # tangent_declination = sine_declination / cosine_declination
    # tangent_latitude    = sine_latitude / cosine_latitude
    top                 = cosine_zenith - sine_declination * sine_latitude
    bottom              = cosine_declination * cosine_latitude
    t_cosine = top / bottom
    p 
    t_cosine > 1.0 || t_cosine < -1.0 ? cos = 1.0 : cos = t_cosine
    rad_to_deg( acos( cos ) ) 
  end  
 
  # angle of Suns' mean anomaly
  # used in equation of time
  # and to get true anomaly. 
  def ma_Sun()
    ta = time_julian_century( @ajd )
    ade = delta_equinox( ta )[ 2 ] / ASD
    @ma = mod_360 ade       
  end
  
  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf
  # in angles.rb  
  def ml_Aries( ta = A2000 )
    ta     = check_jct_zero( ta )
    jd     = ta[ 0 ] * DJC # convert first term back to jdn - J2000
    # old terms  	
    # angle  = (36000.770053608 / DJC + 360) * jd  # 36000.770053608 = 0.9856473662862 * DJC
    # total = [ -1.0/3.8710000e7, 3.87930e-4, 0, 100.460618375 ].poly_eval( ta[0] ) + 180 + angle  
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
  
  # mean obliquity of Earth
  # 
  # in angles.rb  
  def mo_Earth( ta = A2000 )
    ta = check_jct_zero( ta )    
    [ -0.0000000434, -0.000000576,  0.00200340, 
      -0.0001831,   -46.836769, 84381.406 ].poly_eval( ta[0] ) / ASD	
  end
  
  # omega is a component of nutation and used 
  # in apparent longitude 
  #
  # omega is the longitude of the mean ascending node of the lunar orbit 
  # on the ecliptic plane measured from the mean equinox of date.
  # in angles.rb  
  def omega( ta = A2000 )
    ta = check_jct_zero( ta )
    delta_equinox( ta )[ 3 ] / ASD      
  end
  
  # solar right ascension
  # in angles.rb
  def ra_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    y0 = sine_al_Sun( ta ) * cosine_to_Earth( ta )
    180.0 +           
    rad_to_deg( atan2( -y0, -cosine_al_Sun( ta ) ) )    
  end
  
  # sine apparent longitude
  # used in solar declination
  # in angles.rb  
  def sine_al_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    sin( deg_to_rad( al_Sun( ta ) ) )
  end
  
  # sine true longitude
  # used in solar right ascension
  # in angles.rb  
  def sine_tl_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    sin( deg_to_rad( tl_Sun( ta ) ) )
  end

  # angle true anomaly
  # used in equation of time
  # in angles.rb  
  def ta_Sun( ta = A2000 )
  ta = check_jct_zero( ta )  
    @ma + center( ta )	
  end 

  # true longitude of equinox 'first point of aries'
  # considers nutation
  # in angles.rb  
  def tl_Aries( ta = A2000 )
    ta = check_jct_zero( ta )  
    eq_of_equinox( ta ) +
	     ml_Aries( ta )     
  end  
  
  # angle of true longitude sun
  # used in equation of time
  # in angles.rb  
  def tl_Sun( ta = A2000 )
    ta = check_jct_zero( ta )
    mod_360( 
	          gml_Sun( ta ) + 
             center( ta )
           )	 
  end
  
  # true obliquity considers nutation
  # in angles.rb  
  def to_Earth( ta = A2000 )
    ta = check_jct_zero( ta )
    delta_epsilon( ta ) +
	     mo_Earth( ta )     
  end

end
if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'angles_spec'

end