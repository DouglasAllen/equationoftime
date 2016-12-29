gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestEot < Minitest::Test
  def setup
    @eot = Main.new
  end

  def test_addr; end

  def test_addr_equals; end

  def test_ajd; end

  def test_ajd_equals; end

  def test_ajd_to_datetime; end

  def test_apparent_longitude; end

  def test_astronomical_twilight_end_dt; end

  def test_astronomical_twilight_end_jd; end

  def test_astronomical_twilight_start_dt; end

  def test_astronomical_twilight_start_jd; end

  def test_check_jd_nil; end

  def test_check_jd_zero; end

  def test_check_t_nil; end

  def test_check_t_zero; end

  def test_choice; end

  def test_civil_twilight_end_dt; end

  def test_civil_twilight_end_jd; end

  def test_civil_twilight_start_dt; end

  def test_civil_twilight_start_jd; end

  def test_cosine_apparent_longitude; end

  def test_cosine_true_longitude; end

  def test_cosine_true_obliquity; end

  def test_date; end

  def test_date_equals; end

  def test_day_fraction; end

  def test_declination; end

  def test_deg_to_time; end

  def test_degrees; end

  def test_degrees_apparent_longitude; end

  def test_degrees_declination; end

  def test_degrees_equation_of_center; end

  def test_degrees_mean_anomaly; end

  def test_degrees_right_ascension; end

  def test_degrees_true_anomaly; end

  def test_degrees_true_longitude; end

  def test_degrees_true_obliquity; end

  def test_delta_epsilon; end

  def test_delta_oblique; end

  def test_delta_oblique_jd; end

  def test_delta_orbit; end

  def test_delta_orbit_jd; end

  def test_delta_psi; end

  def test_delta_total; end

  def test_delta_total_jd; end

  def test_dt_parts; end

  def test_earth_rotation_angle; end

  def test_eccentricity; end

  def test_equation_of_center; end

  def test_equation_of_equinox; end

  def test_f_string; end

  def test_float_parts; end

  def test_format_time; end

  def test_ha_sun; end

  def test_jd; end

  def test_jd_equals; end

  def test_jd_to_date; end

  def test_latitude; end

  def test_latitude_equals; end

  def test_local_noon_dt; end

  def test_local_noon_jd; end

  def test_longitude; end

  def test_longitude_equals; end

  def test_ma; end

  def test_ma_equals; end

  def test_mean_anomaly; end

  def test_mean_local_noon_dt; end

  def test_mean_local_noon_jd; end

  def test_mean_longitude; end

  def test_mean_longitude_aries; end

  def test_mean_obliquity; end

  def test_mod_360; end

  def test_nautical_twilight_end_dt; end

  def test_nautical_twilight_end_jd; end

  def test_nautical_twilight_start_dt; end

  def test_nautical_twilight_start_jd; end

  def test_now; end

  def test_omega; end

  def test_right_ascension; end

  def test_set_t_ma; end

  def test_show_delta_oblique; end

  def test_show_delta_orbit; end

  def test_show_delta_total; end

  def test_show_minutes; end

  def test_show_now; end

  def test_sign_min; end

  def test_sine_apparent_longitude; end

  def test_sine_true_longitude; end

  def test_sine_true_obliquity; end

  def test_sunrise_dt; end

  def test_sunrise_jd; end

  def test_sunset_dt; end

  def test_sunset_jd; end

  def test_t; end

  def test_t_equals; end

  def test_time; end

  def test_time_delta_oblique; end

  def test_time_delta_orbit; end

  def test_time_delta_total; end

  def test_true_anomaly; end

  def test_true_longitude; end

  def test_true_longitude_aries; end

  def test_true_obliquity; end
end
