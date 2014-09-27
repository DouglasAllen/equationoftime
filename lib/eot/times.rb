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
  # Returns Sunrise as a Julian Day Number
  def sunrise_jd
    local_noon_dt.ajd - ha_sun(1) / P2
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns a DateTime object of local sunset
  def sunset_dt
    ajd_to_datetime(sunset_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns Sunset as a Julian Day Number
  def sunset_jd
    local_noon_dt.ajd + ha_sun(1) / P2
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns Oblique component of EOT in decimal minutes time
  def time_delta_oblique
    delta_oblique * R2D * SM
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns Orbit component of EOT in decimal minutes time
  def time_delta_orbit
    delta_orbit * R2D * SM
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns EOT as a float for decimal minutes time
  def time_eot
    eot * R2D * SM
  end

  # From times.rb:
  # All calculations with ( ta )  were based on this.
  # Julian Century Time is a fractional century
  # Julian Day Number DJ00 is subtracted from the JDN or AJDN and then divided
  # by days in a Julian Century.
  # Deprecated
  def time_julian_century
    t1 = (@ajd - DJ00) / DJC
    @ta = t1
  end
  alias_method :time_julian_centurey, :time_julian_century
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'times_spec'

end
