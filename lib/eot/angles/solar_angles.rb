##
# class Mainb file = solar_angles.rb:
# methods for non delta angle calculations.
class Main

  ##
  # From solar_angles.rb:

  # Apparent solar longitude = true longitude - aberation

  def apparent_longitude
    @cs.apparent_longitude(@jd)
  end

  ##
  # From solar_angles.rb:

  # eccentricity of Earth orbit

  def eccentricity
    @cs.eccentricity(@jd)
  end

  ##
  # From solar_angles.rb:

  # equation of center is
  # added to mean anomaly to get true anomaly.

  def equation_of_center
    @cs.equation_of_center(@jd)
  end

  ##
  # From solar_angles.rb:

  # solar declination

  def declination
    @cs.declination(@jd)
  end

  ##
  # From solar_angles.rb:

  # used by ha_sun method
  # to select rise set and civil, nautical, astronomical twilights.

  def choice(c)
    case c
    when 1
      90.8333 # Sunrise and Sunset
    when 2
      96 # Civil Twilight
    when 3
      102 # Nautical Twilight
    when 4
      108 # Astronomical Twilight
    end
  end


  ##
  # From solar_angles.rb:

  # horizon angle for provided geo coordinates
  # used for angles from transit to horizons.

  def ha_sun(c)
    zenith = choice(c)
    @cs.horizon_angle(zenith, @jd, @latitude).round(12)
  end

  ##
  # From solar_angles.rb:

  # solar right ascension

  def right_ascension
    @cs.right_ascension(@jd)
  end

end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'solar_angles_spec'

end
