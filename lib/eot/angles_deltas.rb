# class Eot file = angles_deltas.rb
# methods for delta angles

class Eot

  # From angles_deltas.rb:
  # delta epsilon
  # component of equation of equinox
  def delta_epsilon
    Celes.nut06a(@jd, 0)[1]
  end
  alias_method :angle_delta_epsilon, :delta_epsilon

  # From angles_deltas.rb:
  # one time component to total equation of time
  def delta_oblique
    ma_ta_set
    al_sun - ra_sun
  end
  alias_method :delta_t_ecliptic, :delta_oblique
  alias_method :angle_delta_oblique, :delta_oblique

  # From angles_deltas.rb:
  # one time component to total equation of time
  def delta_orbit
    ma_ta_set
    -1.0 * eqc(@ma, @t)
  end
  alias_method :delta_t_elliptic, :delta_orbit
  alias_method :angle_delta_orbit, :delta_orbit

  # From angles_deltas.rb:
  # component of equation of equinox
  def delta_psi
    Celes.nut06a(@jd, 0)[0]
  end
  alias_method :angle_delta_psi, :delta_psi

  # From angles_deltas.rb:
  # total equation of time
  def eot
    ma_ta_set
    delta_orbit + delta_oblique
  end
  alias_method :angle_equation_of_time, :eot
end
