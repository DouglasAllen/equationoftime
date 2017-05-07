# class Main file = trigometric.rb
# methods using trig functions
class Main

  # From trigometric.rb:
  # cosine apparent longitude
  # could be useful when dividing
  def cosine_apparent_longitude
    Eot.cos_al_sun(@jd)
  end

  # From trigometric.rb:
  # sine apparent longitude
  # used in solar declination
  def sine_apparent_longitude
    Eot.sin_al_sun(@jd)
  end

  # From trigometric.rb:
  # cosine true longitude
  # used in solar right ascension
  def cosine_true_longitude
    Eot.cos_tl_sun(@jd)
  end

  # From trigometric.rb:
  # sine true longitude
  # used in solar right ascension
  def sine_true_longitude
    Eot.sin_tl_sun(@jd)
  end

  # From trigometric.rb:
  # cosine true obliquity
  # used in solar right ascension and equation of equinox
  def cosine_mean_obliquity
    Eot.cos_mo_earth(@jd)
  end

  # From trigometric.rb:
  # sine true obliquity angle of Earth
  # used in solar declination
  def sine_mean_obliquity
    Eot.sin_mo_earth(@jd)
  end
end
