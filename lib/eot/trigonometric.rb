# class Eot file = trigometric.rb
# methods using trig functions
class Eot
  # From trigometric.rb:
  # cosine apparent longitude
  # could be useful when dividing
  def cosine_al_sun
    cos_al_sun(@t)
  end
  alias cosine_apparent_longitude cosine_al_sun
  alias cosalsun cosine_al_sun

  # From trigometric.rb:
  # cosine true longitude
  # used in solar right ascension
  def cosine_tl_sun
    cos_tl_sun(@t)
  end
  alias cosine_true_longitude cosine_tl_sun

  # From trigometric.rb:
  # cosine true obliquity
  # used in solar right ascension and equation of equinox
  def cosine_to_earth
    cos_to_earth(to_earth)
  end
  alias cosine_true_obliquity cosine_to_earth

  # From trigometric.rb:
  # sine apparent longitude
  # used in solar declination
  def sine_al_sun
    sin_al_sun(@t)
  end
  alias sine_apparent_longitude sine_al_sun

  # From trigometric.rb:
  # sine true longitude
  # used in solar right ascension
  def sine_tl_sun
    sin_tl_sun(tl_sun)
  end
  alias sine_true_longitude sine_tl_sun

  # From trigometric.rb:
  # sine true obliquity angle of Earth
  # used in solar declination
  def sine_to_earth
    sin_to_earth(to_earth)
  end
  alias sine_true_obliquity sine_to_earth
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'trig_spec'
  require 'aliased_trig_spec'

end
