##
# class Eot file = angle_displays.rb:
# methods for display of angles.

class Eot

  # From angle_displays.rb

  # String formatter for d:m:s display
  def degrees_to_s(radians = 0.0)
    radians.nil? ? radians = 0.0 : radians
    s, idmsf = Helio.a2af(3, radians)
    f_string(s, idmsf[0], idmsf[1], idmsf[2], idmsf[3])
  end

  # From angle_displays.rb

  # String format of apparent longitude
  def string_al_sun
    degrees_to_s(apparent_longitude)
  end


  # From angle_displays.rb

  # String format of declination
  def string_dec_sun
    degrees_to_s(dec_sun)
  end


  # From angle_displays.rb

  # String format for delta oblique
  def string_delta_oblique
    show_minutes(delta_oblique)
  end

  # From angle_displays.rb

  # String format for delta orbit
  def string_delta_orbit
    show_minutes(delta_orbit)
  end

  # From angle_displays.rb

  # String format for centre
  def string_eqc
    degrees_to_s(center)
  end

  # From angle_displays.rb

  # String format of mean anomaly
  def string_ma_sun
    degrees_to_s(@ma)
  end

  # From angle_displays.rb

  # String format of right ascension
  def string_ra_sun
    degrees_to_s(right_ascension)
  end

  # From angle_displays.rb

  # String format of true anomaly
  def string_ta_sun
    degrees_to_s(true_anomaly)
  end

  # From angle_displays.rb

  # String format of true longitude
  def string_tl_sun
    degrees_to_s(true_longitude)
  end

  # From angle_displays.rb

  # String format of true obliquity
  def string_to_earth
    degrees_to_s(Helio.true_obl(@t))
  end

end
