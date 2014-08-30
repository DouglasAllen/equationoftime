# times.rb
#

class Eot    

  # From times.rb:<br>
  # Pass in an AJD number
  # Returns a DateTime object
  def ajd_to_datetime(ajd)
    DateTime.jd(ajd + 0.5)
  end

  # From times.rb:<br>
  # Uses @ajd attribute
  # Returns EOT as an AJD Julian number
  def eot_jd
    time_eot() / DAY_MINUTES 
  end

  # From times.rb:<br>
  # Uses @ajd and @longitude attributes
  # Returns DateTime object of local noon or solar transit
  def local_noon_dt()
    ajd_to_datetime(@ajd - @longitude / 360.0 - eot_jd())
  end
  
  # From times.rb:<br>
  # Uses @ajd and @longitude attributes
  # Returns DateTime object of local mean noon or solar transit
  def mean_local_noon_dt()
    ajd_to_datetime(@ajd - @longitude / 360.0)
  end
  
  # From times.rb:<br>
  # Uses changed @ajd attribute
  # Returns EOT (equation of time) now in decimal minutes time
  def now()
    @ajd = DateTime.now.to_time.utc.to_datetime.ajd
    time_eot()
  end

  # From times.rb:<br>
  # Uses @ajd attribute
  # Returns a DateTime object of local sunrise
  def sunrise_dt()
    local_noon_dt = local_noon_dt()
    time_julian_century()
    lha_dt        = ajd_to_datetime(ha_Sun() / 360.0)                      
    ajd_to_datetime((local_noon_dt - lha_dt).to_f)     
  end

  # From times.rb:<br> 
  # Uses @ajd attribute
  # Returns Sunrise as a Julian number
  def sunrise_jd()    
    sunrise_dt.ajd.to_f
  end 	

  # From times.rb:<br>
  # Uses @ajd attribute
  # Returns a DateTime object of local sunset
  def sunset_dt()                               
    local_noon_dt = local_noon_dt()
    time_julian_century()
    lha_dt        = ajd_to_datetime(-ha_Sun() / 360.0)                      
    ajd_to_datetime((local_noon_dt - lha_dt).to_f)      
  end

  # From times.rb:<br>
  # Uses @ajd attribute
  # Returns Sunset as a Julian number
  def sunset_jd()
    sunset_dt.ajd.to_f  
  end
  
  # From times.rb:<br>
  # Uses @ajd attribute
  # Returns Oblique component of EOT in decimal minutes time  
  def time_delta_oblique()
    @ma = ma_Sun()       
    (tl_Sun() - 
     ra_Sun()) * SM        
  end

  # From times.rb:<br>
  # Uses @ajd attribute
  # Returns Orbit component of EOT in decimal minutes time 
  def time_delta_orbit()
    @ma = ma_Sun()       
    (@ma - ta_Sun()) * SM
  end  
  
  # From times.rb:<br>
  # Uses @ajd attribute
  # Returns EOT as a float for decimal minutes time
  def time_eot()
    eot() * SM	  
  end

  # From times.rb:<br>
  # All calculations with ( ta )  based on this.
  # Julian Century Time is a fractional century
  # Julian Day Number J2000 is subtracted
  # Returns fractional century
  def time_julian_century()
    t1 = ( @ajd - J2000 ) / DJC
    t2 = t1 * t1
    t3 = t1 * t2
    t4 = t2 * t2
    t5 = t2 * t3
    t6 = t3 * t3
    t7 = t3 * t4
    t8 = t4 * t4
    t9 = t4 * t5
    t10 = t5 * t5
#    @ta = [ t1, t2, t3, t4, t5, t6, t7, t8, t9, t10 ] 
    @ta = t1     
  end
  alias_method :time_julian_centurey, :time_julian_century  
      
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'times_spec'
  require 'aliased_times_spec'

end
