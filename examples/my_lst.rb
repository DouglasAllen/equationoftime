require 'eot'
eot = Eot.new
puts 'My Local Apparent Sidereal Time'
loop do
  eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
  puts "LST = #{ eot.string_deg_to_time(eot.tl_aries + -88.75 * Eot::D2R) }"
  # the number is syncing my machine. machine may vary in this.
  sleep 0.99613381875
end
