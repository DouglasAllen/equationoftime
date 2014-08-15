# displays.rb

class EqoT

  # String formatter for d:m:s display 
    # in displays.rb  
  def degrees_to_s( degrees = 0.0 )
    degrees.nil? ? degrees = 0.0 : degrees
    degrees < 0 ? sign_string      = "-" : sign_string = "+"    
                  absolute_degrees = degrees.abs
          absolute_degrees_integer = Integer( absolute_degrees )
          absolute_decimal_minutes = 60.0 * 
                                     (
                                      absolute_degrees - 
                                      absolute_degrees_integer
                                     )
          absolute_minutes_integer = Integer( absolute_decimal_minutes )
          absolute_decimal_seconds = bd( 60.0 * 
                                        (
                                         absolute_decimal_minutes - 
                                         absolute_minutes_integer
                                        )
                                       )
          absolute_seconds_integer = Integer( absolute_decimal_seconds )
    absolute_milli_seconds_integer = Integer(1000.0 *
	                                         (
                                              absolute_decimal_seconds - 
                                              absolute_seconds_integer
                                             )
                                            )
                            sign_string +
      "%03d" % absolute_degrees_integer +
                                    ":" + 
      "%02d" % absolute_minutes_integer +
                                    ":" + 
      "%02d" % absolute_seconds_integer +
                                    "." + 
      "%3.3d" % absolute_milli_seconds_integer
  end  
  
  # String formatter for + and - time 
    # in displays.rb 
  def show_minutes(min = 0.0)
    min.nil? ? min = 0.0 : min
    time = Time.utc(1, 1, 1, 0, 0, 0, 0.0)
    time = time + (min.abs * 60.0)
    if min < 0.0
      sign = "-"
    else
      sign = "+"
    end
    time.strftime("#{sign}%M:%S.%3N")
  end

  # String for time now
    # in displays.rb 
  def show_now(now = now(Time.now.utc))
    show_minutes(now)
  end  
  
  # String format of apparent longitude 
    # in displays.rb
  def string_al_Sun( ta = A2000 )
    degrees_to_s( al_Sun( ta ) )
  end

  # String formatter for fraction of Julian day number
    # in displays.rb    
  def string_day_fraction_to_time( jpd_time = 0.0 )
    jpd_time.nil? ? jpd_time = 0.0 : jpd_time
    fraction = jpd_time + 0.5 - Integer( jpd_time )
    hours = Integer( fraction * DAY_HOURS )
    minutes = Integer(( fraction - hours / DAY_HOURS ) * DAY_MINUTES )
    seconds = Integer(( fraction - hours / 24.0 - minutes / DAY_MINUTES ) * DAY_SECONDS )
    "%02d" % hours   +
    ":"              +
    "%02d" % minutes +
    ":"              +
    "%02d" % seconds
  end  

  # String format of declination 
    # in displays.rb
  def string_dec_Sun( ta = A2000 )
    degrees_to_s( dec_Sun( ta ) )
  end
  
  # String format for delta oblique
     # in displays.rb
  def string_delta_oblique( ta = A2000 )
    show_minutes(delta_oblique( ta ))
  end
  
  # String format for delta orbit
     # in displays.rb
  def string_delta_orbit( ta = A2000 )
    show_minutes(delta_orbit( ta ))
  end
  
   # String format for centre
     # in displays.rb
  def string_eqc( ta = A2000 )
    degrees_to_s( center( ta ))
  end
  
  # Equation of time output for minutes and seconds
    # in displays.rb 
  def string_eot( dt = DT2000 )    
    eot = time_eot( dt )  
    min_eot = eot
    if min_eot < 0.0
      sign = "-"
    else
      sign = "+"
    end
    eot = min_eot.abs
    minutes = Integer( eot )
    seconds = ( eot - minutes ) * 60.0
    decimal_seconds = ( seconds - Integer( seconds )) * 100.0
    min = "%02d" % minutes
    sec = "%02d" %  seconds
    dec_sec = "%01d" % decimal_seconds
    sign << min << "m, " << sec << "." << dec_sec << "s"
  end  
  
  # String format conversion of jd to date
    # in displays.rb  
  def string_jd_to_date( jd = J2000 )
    jd = check_jd_zero( jd )
    Date.jd( jd ).to_s
  end  

  # String format of mean anomaly 
    # in displays.rb      
  def string_ma_Sun( ta = A2000 )
    degrees_to_s( ma_Sun( ta ) )
  end 

  # String format of right ascension
    # in displays.rb  
  def string_ra_Sun( ta = A2000 )
    degrees_to_s( ra_Sun( ta ) )
  end     

  # String format of true anomaly  
  # in displays.rb 
  def string_ta_Sun( ta = A2000 )
    degrees_to_s( ta_Sun( ta ) )
  end

  # String formatter for h:m:s display 
    # in displays.rb  
  def string_time( dt = DT2000 )
    dt = check_t_zero( dt )
    
    if dt.class == DateTime      
      hours   = dt.hour
      minutes = dt.min
      seconds = dt.sec
      intsecs = Integer( seconds )
      decsecs = Integer(( seconds - intsecs ).round( 3 ) * 1000.0 )
    else
      decimal = dt % DAY_HOURS
      hours = Integer( decimal )
      mindecimal = bd( 60.0 * ( decimal - hours )) * 1.0
      minutes = Integer( mindecimal )
      seconds = bd( 60.0 * ( mindecimal - minutes )) * 1.0    
      intsecs = Integer( seconds )
      decsecs = Integer(( seconds - intsecs ).round( 3 ) * 1000.0 )
    end
    
    "%02d" % hours   +
                 ":" + 
    "%02d" % minutes + 
                 ":" + 
    "%02d" % intsecs +
                 "." +
    "%3.3d" % decsecs
  end    

  # String format of true longitude 
    # in displays.rb 
  def string_tl_Sun( ta = A2000 )
    degrees_to_s( tl_Sun( ta ) )
  end 

  # String format of true obliquity 
    # in displays.rb 
  def string_to_Earth( ta = A2000 )
    degrees_to_s( to_Earth( ta ) )
  end 
end
if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'displays_spec'

end