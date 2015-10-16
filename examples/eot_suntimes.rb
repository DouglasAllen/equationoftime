#!/usr/bin/env ruby
# eot_suntimes.rb leftover from building the parts in the gem
# so just left it here.
#
begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
end

# def sunrise_jd(arg)
#
#   arg.date.nil? ? result =
#   "date parameter not set" : result = "date parameter OK"
#
#   arg.longitude.nil? ? result =
#    "longitude parameter not set" : result = "longitude parameter OK"
#
#   arg.latitude.nil? ? result =
#    "latitude parameter not set" : result = "latitude parameter OK"
#
#   utc_noon_jd = arg.date.jd
#
#   lng_jd = arg.longitude / 360.0
#
#   mean_utc_noon_jd = utc_noon_jd - lng_jd
#
#   tjc_mean_local_noon_array = arg.time_julian_century(mean_utc_noon_jd)
#
#   eot = arg.equation_of_time(tjc_mean_local_noon_array)
#
#   eot_jd = eot / 1440.0
#
#   true_utc_noon_jd = mean_utc_noon_jd - eot_jd
#
#   tjc_true_local_noon_array = arg.time_julian_century(true_utc_noon_jd)
#
#   mean_anomaly = arg.ma_Sun(tjc_true_local_noon_array)
#
#   lha = arg.ha_Sun(tjc_true_local_noon_array, mean_anomaly)
#
#   lha_jd = lha / 360.0
#
#   # rise_jd
#   true_utc_noon_jd - lha_jd
#
# end
#
# def sunset_jd(arg)
#
#  arg.date.nil? ? result =
#   "date parameter not set" : result = "date parameter OK"
#
#  arg.longitude.nil? ? result =
#   "longitude parameter not set" : result = "longitude parameter OK"
#
#  arg.latitude.nil? ? result =
#   "latitude parameter not set" : result = "latitude parameter OK"
#
#  utc_noon_jd = arg.date.jd
#
#  lng_jd = arg.longitude / 360.0
#
#  mean_utc_noon_jd = utc_noon_jd - lng_jd
#
#  tjc_mean_local_noon = arg.time_julian_century(mean_utc_noon_jd)
#
#  eot_jd = arg.equation_of_time(tjc_mean_local_noon) / 1440.0
#
#  true_utc_noon_jd = mean_utc_noon_jd - eot_jd
#
#  tjc_true_local_noon = arg.time_julian_century(true_utc_noon_jd)
#
#  mean_anomaly = arg.ma_Sun(tjc_true_local_noon)
#
#  lha_jd = arg.ha_Sun(tjc_true_local_noon, mean_anomaly) / 360.0
#
#  # sunset jd
#  true_utc_noon_jd  + lha_jd
#
# end

require 'eot'

addr = '8000 South Michigan Ave., Chicago, IL'
# loc = GeoLatLng.new
# loc.addr = addr
# loc.get_coordinates_from_address
# puts loc.lat, loc.lng

eot = Eot.new(addr)
# eot.longitude = loc.lng
# eot.ajd = Date.today.jd
# eot.latitude = loc.lat

# puts "Using this files methods"
# puts sunrise_jd(Date.today)

## Note: DateTime.jd() renders time from midnight not noon
##       so 12 hours need to be added for correct time.
# puts DateTime.jd(sunrise_jd() + 0.5)
# puts DateTime.jd(sunrise_jd() + 0.5).to_time.utc
#
# puts
# puts sunset_jd()
#
# puts DateTime.jd(sunset_jd() + 0.5)
# puts DateTime.jd(sunset_jd() + 0.5).to_time.utc

OUT = <<EOS

Using eot gem methods

#{eot.latitude}
#{eot.longitude}

#{eot.sunrise_jd}
#{eot.ajd_to_datetime(eot.sunrise_jd)}
#{eot.ajd_to_datetime(eot.sunrise_jd).to_time}

#{eot.sunset_jd}
#{eot.ajd_to_datetime(eot.sunset_jd)}
#{eot.ajd_to_datetime(eot.sunset_jd).to_time}

#{Date.jd(Date.today.jd)}
#{Date.today.jd}

#{DateTime.jd(Date.today.jd)}
#{DateTime.jd(Date.today.jd + 0.5)}

#{DateTime.jd(Date.today.jd).to_time.utc}
#{DateTime.jd(Date.today.jd + 0.5).to_time.utc}

#{Time.now.to_datetime}
#{Time.now.to_datetime.jd}

#{Time.now.utc.to_datetime}
#{Time.now.utc.to_date.jd}

#{Date.jd(Time.now.to_date.jd)}
#{Date.jd(Time.now.utc.to_date.jd)}

#{DateTime.jd(Time.now.to_datetime.jd)}
#{DateTime.jd(Time.now.utc.to_datetime.jd)}

#{DateTime.jd(Time.now.to_datetime.jd).to_time}
#{DateTime.jd(Time.now.utc.to_datetime.jd).to_time}

#{DateTime.jd(Time.now.to_datetime.jd + 0.5).to_time}
#{DateTime.jd(Time.now.utc.to_datetime.jd + 0.5).to_time}
EOS

puts OUT
