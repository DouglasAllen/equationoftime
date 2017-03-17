
# class Eot file = deltas.rb
# methods for angle deltas
class Eot
  # From deltas.rb:
  # delta epsilon
  # component of equation of equinox
  def angle_delta_epsilon
    Celes.nut06a(@jd, 0)[1].to_f.round(12)
  end
  alias delta_epsilon angle_delta_epsilon

  # From deltas.rb:
  # one time component to total equation of time
  def angle_delta_oblique
    (al_sun - right_ascension_sun).to_f.round(12)
  end
  alias delta_t_ecliptic angle_delta_oblique
  alias delta_oblique angle_delta_oblique

  # From deltas.rb:
  # one time component to total equation of time
  def angle_delta_orbit
    -1.0 * eqc(@t).to_f.round(12)
  end
  alias delta_t_elliptic angle_delta_orbit
  alias delta_orbit angle_delta_orbit

  # From deltas.rb:
  # component of equation of equinox
  def angle_delta_psi
    Celes.nut06a(@jd, 0)[0].to_f.round(12)
  end
  alias delta_psi angle_delta_psi

  # From deltas.rb:
  # total equation of time
  def angle_equation_of_time
    (delta_orbit + delta_oblique).to_f.round(12)
  end
  alias eot angle_equation_of_time
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'deltas_spec'
  require 'aliased_deltas_spec'
end
