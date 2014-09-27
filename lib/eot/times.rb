# class Eot file = times.rb
class Eot
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
    time_eot / DAY_MINUTES
  end

  # From times.rb:
  # Uses @ajd and @longitude attributes
  # Returns DateTime object of local noon or solar transit
  def local_noon_dt
    ajd_to_datetime(mean_local_noon_jd - eot_jd)
  end

  # From times.rb:
  # Uses @ajd and @longitude attributes
  # Returns DateTime object of local mean noon or solar transit
  def mean_local_noon_jd
    @ajd - @longitude / 360.0
  end

  # From times.rb:
  # sets @ajd to DateTime.now
  # Returns EOT (equation of time) now in decimal minutes form
  def now
    @ajd = DateTime.now.to_time.utc.to_datetime.ajd
    @ta = (@ajd - DJ00) / DJC
    time_eot
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns a DateTime object of local sunrise
  def sunrise_dt
    ajd_to_datetime(sunrise_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns a DateTime object of local sunset
  def sunset_dt
    ajd_to_datetime(sunset_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns Sunrise as a Julian Day Number
  def sunrise_jd
    local_noon_dt.ajd - ha_sun(1) / P2
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns Sunset as a Julian Day Number
  def sunset_jd
    local_noon_dt.ajd + ha_sun(1) / P2
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns civil twilight end as a Julian Day Number
  def civil_twilight_end_jd
    local_noon_dt.ajd + ha_sun(2) / P2
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns civil twilight start as a Julian Day Number
  def civil_twilight_start_jd
    local_noon_dt.ajd - ha_sun(2) / P2
  end
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'times_spec'

end
