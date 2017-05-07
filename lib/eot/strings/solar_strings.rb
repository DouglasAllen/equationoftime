##
# class Main file = solar_strings.rb:
# methods for display of angles.
class Main

  ##
  # From solar_strings.rb

  def deg_sign(degs)
    degs >= 0 ? '+' : '-'
  end

  ##
  # From solar_strings.rb

  def deg_mins(degs, deg)
    ((degs - deg) * 60.0).abs.floor
  end

  ##
  # From solar_strings.rb

  def minsecs(degs, deg, mins)
    secs = ((((degs - deg) * 60.0) - mins) * 60.0).floor
    ms = ((((((degs - deg) * 60.0) - mins) * 60.0) - secs) * 1000.0).round(0)
    sign = deg_sign(degs)
    f_string(sign, deg, mins, secs, ms)
  end

  ##
  # From solar_strings.rb

  # String formatter for d:m:s display
  def format_degrees(degs)
    deg = degs.floor
    mins = deg_mins(degs, deg)
    minsecs(degs, deg, mins)
  end

  # From solar_strings.rb
  # check radians convert to degrees for formatter
  def degrees(radians = 0.0)
    radians.nil? ? radians = 0.0 : radians
    degs = (radians * Eot::R2D) % 360.0
    format_degrees(degs)
  end

  # From solar_strings.rb
  # String format of apparent longitude
  def degrees_apparent_longitude
    degrees(Eot.apparent_longitude(@jd))
  end

  # From solar_strings.rb
  # String format of declination
  def degrees_declination
    degrees(Eot.declination(@jd))
  end

  # From solar_strings.rb
  # String format for centre
  def degrees_equation_of_center
    degrees(Eot.equation_of_center(@jd))
  end

  # From solar_strings.rb
  # String format of mean anomaly
  def degrees_mean_anomaly
    degrees(Eot.mean_anomaly(@jd))
  end

  # From solar_strings.rb
  # String format of right ascension
  def degrees_right_ascension
    degrees(Eot.right_ascension(@jd))
  end

  # From solar_strings.rb
  # String format of true anomaly
  def degrees_true_anomaly
    degrees(Eot.true_anomaly(@jd))
  end

  # From solar_strings.rb
  # String format of true longitude
  def degrees_true_longitude
    degrees(Eot.true_longitude(@jd))
  end

  # From solar_strings.rb
  # String format of true obliquity
  def degrees_true_obliquity
    'not implemented yet'
    # degrees(@cs.true_obliquity(@jd))
  end
end
