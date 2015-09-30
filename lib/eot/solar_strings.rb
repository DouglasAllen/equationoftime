##
# class Eot file = solar_strings.rb:
# methods for display of angles.

class Eot

  # From solar_strings.rb
  # String formatter for d:m:s display
  def degrees(radians = 0.0)
    radians.nil? ? radians = 0.0 : radians
    s, idmsf = Helio.a2af(3, radians)
    f_string(s, idmsf[0], idmsf[1], idmsf[2], idmsf[3])
  end

  # From solar_strings.rb
  # String format of apparent longitude
  def degrees_apparent_longitude
    degrees(apparent_longitude)
  end

  # From solar_strings.rb
  # String format of declination
  def degrees_declination
    degrees(dec_sun)
  end

  # From solar_strings.rb
  # String format for centre
  def degrees_equation_of_center
    degrees(equation_of_center)
  end

  # From solar_strings.rb
  # String format of mean anomaly
  def degrees_mean_anomaly
    degrees(@ma)
  end

  # From solar_strings.rb
  # String format of right ascension
  def degrees_right_ascension
    degrees(right_ascension)
  end

  # From solar_strings.rb
  # String format of true anomaly
  def degrees_true_anomaly
    degrees(true_anomaly)
  end

  # From solar_strings.rb
  # String format of true longitude
  def degrees_true_longitude
    degrees(true_longitude)
  end

  # From solar_strings.rb
  # String format of true obliquity
  def degrees_true_obliquity
    degrees(Helio.true_obliquity(@t))
  end

end
