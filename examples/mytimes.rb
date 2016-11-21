# frozen_string_literal: true
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
p lib
require_relative '../lib/eot'

# set_trace_func proc { |event, file, line, id, _binding, classname|
#   printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
# }

@eot = Eot.new
@geo = GeoLatLng.new
@geo.addr = 'dekalb, il'
@geo.set_coordinates
@eot.longitude = @geo.lng
@eot.latitude = @geo.lat

@eot.ma_ta_set

p @eot.sunrise_dt
p @eot.local_noon_dt
p @eot.sunset_dt
p @eot.sunrise_dt.rfc3339
p @eot.local_noon_dt.rfc3339
p @eot.sunset_dt.rfc3339
p @eot.sunrise_dt.iso8601
p @eot.local_noon_dt.iso8601
p @eot.sunset_dt.iso8601
p @eot.sunrise_dt.xmlschema
p @eot.local_noon_dt.xmlschema
p @eot.sunset_dt.xmlschema
p @eot.sunrise_dt.jisx0301
p @eot.local_noon_dt.jisx0301
p @eot.sunset_dt.jisx0301
p @eot.sunrise_dt.rfc2822
p @eot.local_noon_dt.rfc2822
p @eot.sunset_dt.rfc2822
p @eot.sunrise_dt.rfc822
p @eot.local_noon_dt.rfc822
p @eot.sunset_dt.rfc822
p @eot.sunrise_dt.to_time.rfc822
p @eot.local_noon_dt.to_time.rfc822
p @eot.sunset_dt.to_time.rfc822

if __FILE__ == $PROGRAM_NAME

end
