# class Eot file = deltas.rb
# methods for angle deltas

class Eot
  # From deltas.rb:
  # delta epsilon
  # component of equation of equinox
  def delta_epsilon
    Helio.delta_epsilon(@t)
  end

  # From deltas.rb:
  # one time component to total equation of time
  def delta_oblique
    apparent_longitude - right_ascension
  end

  # From angles.rb:
  # one time component to total equation of time
  def delta_orbit
    -1.0 * Helio.equation_of_center(@t)
  end

  # From angles.rb:
  # component of equation of equinox
  def delta_psi
    Helio.delta_psi(@t)
  end

  # From angles.rb:
  # total equation of time
  def equation_of_time
    delta_orbit + delta_oblique
  end

end
