require 'eot'
eot = Eot.new
puts 'My Local Apparent Sidereal Time'
loop do
  eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
  puts "LST = #{ eot.string_time(((eot.tl_aries * Eot::R2D) + -88.75) / 15.0) }"
  # the number is syncing my machine. machine may vary in this.
  sleep 0.99613381875
end
