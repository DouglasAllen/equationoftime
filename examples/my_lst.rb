require 'eot'
eot = Eot.new
puts 'My Local Apparent Sidereal Time'
loop do
  eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
  puts "LST = #{ eot.string_time(((eot.tl_aries * Eot::R2D) + -88.75) / 15.0) }"
  dur = (1 - 0.0027379093499 / 1.002739093499) / 1.0027379093499
  sleep dur
end
