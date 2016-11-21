
# frozen_string_literal: true
require 'eot'
eot = Eot.new
puts 'My Local Apparent Sidereal Time'
loop do
  eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
  gst = eot.string_deg_to_time((eot.tl_aries + -88.75 * Eot::D2R) % (2 * Math::PI))
  era = eot.string_deg_to_time((eot.era + -88.75 * Eot::D2R) % (2 * Math::PI))
  puts "LST gst #{gst} LST era #{era}"
  # puts eot.ajd_to_datetime(eot.ajd)
  # the number is syncing my machine. machine may vary in this.
  sleep 0.99613381875
end
