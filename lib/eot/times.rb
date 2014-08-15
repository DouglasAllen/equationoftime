# times.rb
#

class EqoT    

  # From times.rb:
  # Pass in an AJD number
  # Returns a DateTime object
  def ajd_to_datetime(ajd)
    DateTime.jd(ajd + 0.5)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns EOT as an AJD Julian number
  def eot_jd
    time_eot() / DAY_MINUTES 
  end

  # From times.rb:
  # Uses @ajd and @longitude attributes
  # Returns DateTime object of local mean noon or solar transit
  def mean_local_noon_dt()
    ajd_to_datetime(@ajd + @longitude / 360.0)
  end
  
  # From times.rb:
  # Uses changed @ajd attribute
  # Returns EOT (equation of time) now in decimal minutes time
  def now()
    @ajd = DateTime.now.to_time.utc.to_datetime.ajd
    time_eot()
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns a DateTime object of local sunrise
  def sunrise_dt()
    eot_jd()                
    eot_dt             = ajd_to_datetime(eot_jd())
    local_noon_dt      = ajd_to_datetime(mean_local_noon_dt() - eot_dt)
    tjca               = time_julian_century( local_noon_dt.ajd )
    lha_dt             = ajd_to_datetime(ha_Sun( tjca ) / 360.0)                      
    ajd_to_datetime(local_noon_dt - lha_dt)      
  end

  # From times.rb: 
  # Uses @ajd attribute
  # Returns Sunrise as a Julian number
  def sunrise_jd()    
    sunrise_dt.ajd.to_f
  end 	

  # From times.rb:
  # Uses @ajd attribute
  # Returns a DateTime object of local sunset
  def sunset_dt()                               
    eot_dt             = ajd_to_datetime(eot_jd())
    local_noon_dt      = ajd_to_datetime(mean_local_noon_dt() - eot_dt)
    tjca               = time_julian_century( local_noon_dt.ajd )
    lha_dt             = ajd_to_datetime(-ha_Sun( tjca ) / 360.0)                      
    ajd_to_datetime(local_noon_dt - lha_dt)      
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns Sunset as a Julian number
  def sunset_jd()
    sunset_dt.ajd.to_f  
  end
  
  # From times.rb:
  # Uses @ajd attribute
  # Returns Oblique component of EOT in decimal minutes time  
  def time_delta_oblique()
    ta  = time_julian_century(@ajd)
    @ma =         ma_Sun()       
    (tl_Sun( ta ) - 
     ra_Sun( ta )) * SM        
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns Orbit component of EOT in decimal minutes time 
  def time_delta_orbit()
    ta  = time_julian_century(@ajd)    
    @ma   =         ma_Sun()       
    (@ma - ta_Sun( ta )) * SM
  end  
  
  # From times.rb:
  # Uses @ajd attribute
  # Returns EOT as a float for decimal minutes time
  def time_eot()
    eot() * SM	  
  end

  # From times.rb:
  # All calculations with ( ta )  based on this.
  # Julian Century Time is a fractional century
  # Julian Day Number J2000 is subtracted
  # Returns an array of fractional century powers
  def time_julian_century( dt = DT2000 )
    dt  = check_t_zero( dt )      	  
    dt.class == DateTime ? jd = dt.ajd : jd = dt

    t1 = ( jd - J2000 ) / DJC
    t2 = t1 * t1
    t3 = t1 * t2
    t4 = t2 * t2
    t5 = t2 * t3
    t6 = t3 * t3
    t7 = t3 * t4
    t8 = t4 * t4
    t9 = t4 * t5
    t10 = t5 * t5
    [ t1, t2, t3, t4, t5, t6, t7, t8, t9, t10 ]      
  end
      
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'times_spec'

end
