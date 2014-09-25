# class Eot file = angle_displays.rb
class Eot
  def deg_string(sgn, d, m, s, ds)
    sgn +
    format('%03d', d) +
            ':' +
    format('%02d', m) +
            ':' +
    format('%02d', s) +
            '.' +
    format('%3.3d', ds)
  end

  # From displays.rb
  # String formatter for d:m:s display
  def degrees_to_s(radians = 0.0)
    radians.nil? ? radians = 0.0 : radians
    radians < 0 ? sign = '-' : sign = '+'
    deg = (radians * R2D).abs
    int_deg = Integer(deg)
    min = 60.0 * (deg - int_deg)
    int_min = Integer(min)
    sec = 60.0 * (min - int_min)
    int_sec = Integer(sec)
    int_ds = Integer(1000.0 * (sec - int_sec))
    deg_string(sign, int_deg, int_min, int_sec, int_ds)
  end

  # From displays.rb
  # String format of apparent longitude
  def string_al_sun
    degrees_to_s(al_sun)
  end
  alias_method :apparent_longitude_string, :string_al_sun

  # From displays.rb
  # String format of declination
  def string_dec_sun
    degrees_to_s(dec_sun)
  end
  alias_method :declination_string, :string_dec_sun

  # From displays.rb
  # String format for delta oblique
  def string_delta_oblique
    show_minutes(delta_oblique)
  end

  # From displays.rb
  # String format for delta orbit
  def string_delta_orbit
    show_minutes(delta_orbit)
  end

  # From displays.rb
  # String format for centre
  def string_eqc
    degrees_to_s(center)
  end

  # From displays.rb
  # String format of mean anomaly
  def string_ma_sun
    degrees_to_s(@ma)
  end
  alias_method :mean_anomaly_string, :string_ma_sun

  # From displays.rb
  # String format of right ascension
  def string_ra_sun
    degrees_to_s(ra_sun)
  end
  alias_method :right_ascension_string, :string_ra_sun

  # From displays.rb
  # String format of true anomaly
  def string_ta_sun
    degrees_to_s(ta_sun)
  end
  alias_method :true_anomaly_string, :string_ta_sun

  # From displays.rb
  # String format of true longitude
  def string_tl_sun
    degrees_to_s(tl_sun)
  end
  alias_method :true_longitude_string, :string_tl_sun

  # From displays.rb
  # String format of true obliquity
  def string_to_earth
    degrees_to_s(to_earth)
  end
  alias_method :true_obliquity_string, :string_to_earth
end
