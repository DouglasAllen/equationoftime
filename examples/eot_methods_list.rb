# eot_methods_list.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require  'eot'
$DEBUG and set_trace_func proc { |event, file, line, id, binding, classname|
       printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
    }
    
date = DateTime.now.to_time.utc.to_datetime
puts date
 
eot = Eot.new
puts eot.nil?
puts eot.public_methods(false).count
list = eot.public_methods(false).sort
sym_list = []
list.each {|i|sym_list << i.to_sym}
#p sym_list
my_list =[:al_Sun, :angle_delta_oblique, :angle_delta_orbit, :angle_delta_psi, :angle_equation_of_time, 
          :apparent_longitude, :apparent_longitude_string, :center, :cosine_al_Sun, :cosine_apparent_longitude, 
          :cosine_tl_Sun, :cosine_to_Earth, :cosine_true_longitude, :cosine_true_obliquity,  :dec_Sun, 
          :declination, :declination_string, :degrees_to_s, :delta_epsilon, :delta_equinox, :delta_oblique, :delta_orbit,
          :delta_psi, :delta_t_ecliptic, :delta_t_elliptic, :display_equation_of_time, :display_time_string,
          :eccentricity_Earth, :eccentricity_earth_orbit, :ecliptic_longitude, :eot, :eot_jd, :eq_of_equinox, 
          :equation_of_center, :geometric_mean_longitude, :gml_Sun, :ha_Sun, :horizon_angle,
          :jd_to_date_string, :julian_period_day_fraction_to_time, :latitude, :latitude=, :local_noon_dt, 
          :ma_Sun, :mean_anomaly, :mean_anomaly_string, :mean_local_noon_dt, :mean_longitude_aries, 
          :mean_obliquity, :mean_obliquity_of_ecliptic, :ml_Aries, :mo_Earth, :mod_360, :now,
          :obliquity_correction, :omega, :ra_Sun, :right_ascension, :right_ascension_string, :show_minutes, 
          :show_now, :sine_al_Sun, :sine_apparent_longitude, :sine_tl_Sun, :sine_to_Earth, 
          :sine_true_longitude, :string_al_Sun, :string_day_fraction_to_time, :string_dec_Sun, 
          :string_delta_oblique, :string_delta_orbit, :string_eot, :string_eqc, :string_jd_to_date, 
          :string_ma_Sun, :string_ra_Sun, :string_ta_Sun, :string_time, :string_tl_Sun, :string_to_Earth, 
          :sunrise_dt, :sunrise_jd, :sunset_dt, :sunset_jd, :ta_Sun, :time_delta_oblique, :time_delta_orbit, 
          :time_eot, :time_julian_centurey, :time_julian_century, :tl_Aries, :tl_Sun, :to_Earth, 
          :true_anomaly, :true_anomaly_string, :true_longitude, :true_longitude_aries, 
          :true_longitude_string, :true_obliquity, :true_obliquity_string, :truncate]
my_list.collect {|e| p e}

puts date

