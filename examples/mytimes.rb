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

if __FILE__ == $PROGRAM_NAME

end
