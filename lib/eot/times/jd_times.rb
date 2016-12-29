# class Main file = jd_times.rb
# methods returning JD numbers
#
class Main
  # From jd_times.rb:
  # Uses @ajd and @longitude attributes
  # Returns mean local noon/transit as a Julian Day Number
  def mean_local_noon_jd
    @jd - @longitude / 360.0
  end

  # From jd_times.rb:
  # Uses @ajd and @longitude attributes
  # Returns local noon/transit as a Julian Day Number
  def local_noon_jd
    @jd - @longitude / 360.0 - eot_jd
  end

  # From jd_times.rb:
  # Uses @ajd attribute
  # Returns astronomical twilight end as a Julian Day Number
  def astronomical_twilight_end_jd
    local_noon_dt.jd + ha_sun(4) / Eot::P2
  end

  # From jd_times.rb:
  # Uses @ajd attribute
  # Returns astronomical twilight start as a Julian Day Number
  def astronomical_twilight_start_jd
    local_noon_dt.jd - ha_sun(4) / Eot::P2
  end

  # From jd_times.rb:
  # Uses @ajd attribute
  # Returns civil twilight end as a Julian Day Number
  def civil_twilight_end_jd
    local_noon_dt.jd + ha_sun(2) / Eot::P2
  end

  # From jd_times.rb:
  # Uses @ajd attribute
  # Returns civil twilight start as a Julian Day Number
  def civil_twilight_start_jd
    local_noon_dt.jd - ha_sun(2) / Eot::P2
  end

  # From jd_times.rb:
  # Uses @ajd attribute
  # Returns nautical twilight end as a Julian Day Number
  def nautical_twilight_end_jd
    local_noon_dt.jd + ha_sun(3) / Eot::P2
  end

  # From jd_times.rb:
  # Uses @ajd attribute
  # Returns nautical twilight start as a Julian Day Number
  def nautical_twilight_start_jd
    local_noon_dt.jd - ha_sun(3) / Eot::P2
  end

  # From jd_times.rb:
  # Uses @ajd attribute
  # Returns Sunrise as a Julian Day Number
  def sunrise_jd
    local_noon_dt.jd - ha_sun(1) / Eot::P2
  end

  # From jd_times.rb:
  # Uses @ajd attribute
  # Returns Sunset as a Julian Day Number
  def sunset_jd
    local_noon_dt.jd + ha_sun(1) / Eot::P2
  end
end
