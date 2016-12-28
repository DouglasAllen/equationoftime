# class Main file = deltas.rb
# methods for angle deltas
class Main
  # From delta_angles.rb:
  # delta epsilon
  # component of equation of equinox
  def delta_epsilon
    'not implemented yet'
    # @cs.delta_epsilon(@jd)
  end

  # From delta_angles.rb:
  # one time component to total equation of time
  def delta_oblique
    @cs.apparent_longitude(@jd) - @cs.right_ascension(@jd) * 15.0 * Eot::D2R
  end

  # From delta_angles.rb:
  # one time component to total equation of time
  def delta_orbit
    -1.0 * @cs.equation_of_center(@jd)
  end

  # From delta_angles.rb:
  # component of equation of equinox
  def delta_psi
    'not implemented yet'
    # @cs.delta_psi(@jd)
  end

  # From delta_angles.rb:
  # total equation of time
  def delta_total
    delta_orbit + delta_oblique
  end
end
