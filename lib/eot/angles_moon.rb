##
# class Eot file = angles_moon.rb:
# methods for lunar angle calculations.

class Eot

  ##
  # From angles_moon.rb:

  # omega is a component of nutation and used
  # in apparent longitude
  # omega is the longitude of the mean ascending node of the lunar orbit
  # on the ecliptic plane measured from the mean equinox of date.

  def omega
    ma_ta_set
    Celes.faom03(@t)
  end

  def lunar_mean_anomaly
    set_t_ma
    Celes.fal03(@t)
  end

end