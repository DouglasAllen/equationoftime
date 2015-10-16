<<<<<<< HEAD
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = Eot.new
puts 'My Local Apparent Sidereal Time'
loop do
  eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
  eot.ma_ta_set
  gst = eot.string_deg_to_time(eot.true_longitude_aries - -88.75 * Eot::D2R)
  era = eot.string_deg_to_time(eot.earth_rotation_angle - -88.75 * Eot::D2R)
  puts "LST era #{era}  LST gst #{gst}" 
  # the number is syncing my machine. machine may vary in this.
  # sleep 0.99613381875
  sleep 1.0
=======
require 'eot'; eot = Eot.new
puts 'My Local Apparent Sidereal Time'
loop do
  eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
  puts "LST = #{ eot.string_time(((eot.tl_Aries * Eot::R2D) + -88.75) / 15.0) }"
  sleep ( 1 - 0.00273790935 / 1.0027390935) / 1.00273790935
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
end
