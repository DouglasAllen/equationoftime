# class Eot file = trigometric.rb
# methods using trig functions

class Eot

  # From trigometric.rb:
  # cosine apparent longitude
  # could be useful when dividing
  def cosine_apparent_longitude
    Helio.cosine_apparent_longitude(@t)
  end

  # From trigometric.rb:
  # cosine true longitude
  # used in solar right ascension
  def cosine_true_longitude
    Helio.cosine_true_longitude(@t)
  end

  # From trigometric.rb:
  # cosine true obliquity
  # used in solar right ascension and equation of equinox
  def cosine_true_obliquity
    Helio.cosine_true_obliquity(@t)
  end

  # From trigometric.rb:
  # sine apparent longitude
  # used in solar declination
  def sine_apparent_longitude
    Helio.sine_apparent_longitude(@t)
  end

  # From trigometric.rb:
  # sine true longitude
  # used in solar right ascension
  def sine_true_longitude
    Helio.sine_true_longitude(@t)
  end

  # From trigometric.rb:
  # sine true obliquity angle of Earth
  # used in solar declination
  def sine_true_obliquity
    Helio.sine_true_obliquity(@t)
  end
end
