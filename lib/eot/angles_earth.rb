##
# class Eot file = angles_earth.rb:
# methods for earth angle calculations.

class Eot

  ##
  # From angles_earth.rb:

  # eccentricity of elliptical Earth orbit around Sun
  # Horners' calculation method

  def eccentricity
    ma_ta_set
    eoe(@t)
  end
  alias_method :eccentricity_earth_orbit, :eccentricity
  alias_method :eccentricity_earth, :eccentricity

  ##
  # From angles_earth.rb:

  # used by ha_sun method
  # to select rise set and civil, nautical, astronomical twilights.

  def choice(c)
    case c
    when 1
      return 90.8333 # Sunrise and Sunset
    when 2
      return 96 # Civil Twilight
    when 3
      return 102 # Nautical Twilight
    when 4
      return 108 # Astronomical Twilight
    end
  end

  ##
  # From angles_earth.rb:

  # horizon angle for provided geo coordinates
  # used for angles from transit to horizons.

  def horizon_angle(c)
    zenith = choice(c)
    sun(zenith, dec_sun, @latitude)
  end
  alias_method :ha_sun, :horizon_angle

  ##
  # From angles_earth.rb:

  # mean heliocentric longitude of Earth

  def earth_mean_heliocentric_longitude
    pvh = Celes.epv00(@jd, 0.0)[0]
    Celes.pv2s(pvh)[0]
  end

  ##
  # From angles_earth.rb:

  # mean obliquity of Earth

  def mean_obliquity
    ma_ta_set
    Celes.obl06(@jd, 0)
  end
  alias_method :mean_obliquity_of_ecliptic, :mean_obliquity
  alias_method :mo_earth, :mean_obliquity

  ##
  # From angles_earth.rb:

  # true obliquity considers nutation

  def true_obliquity
    mo_earth + angle_delta_epsilon
  end
  alias_method :obliquity_correction, :true_obliquity
  alias_method :to_earth, :true_obliquity
  alias_method :toearth, :true_obliquity

end