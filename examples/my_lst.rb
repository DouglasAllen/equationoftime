
# frozen_string_literal: true
require 'eot'
include Math
eot = Eot.new
puts 'My Local Apparent Sidereal Time'
ajd = proc do
  eot.jd = DateTime.now.to_time.utc.to_datetime.ajd.to_f
  eot.set_t
  # now = eot.ajd_to_datetime(eot.ajd)
  # puts now.strftime('%m/%d/%Y %H:%M:%S.%L')
  # puts now.strftime('')
  lst1 = (eot.tl_aries + -88.75 * Eot::D2R) % (2 * PI)
  lst1_dt = eot.ajd_to_datetime((lst1 * Eot::R2D - 180) / 360.0)
  # lst2 = (eot.era + -88.75 * Eot::D2R) % (2 * PI)
  # lst2_dt = eot.ajd_to_datetime((lst2 * Eot::R2D - 180) / 360.0)
  puts "LST gst #{lst1_dt.strftime('%H:%M:%S.%L')}"
  # puts "LST era #{lst2_dt.strftime('%H:%M:%S.%L')}"
  sleep 0.9
end

INV360 = 1.0 / 360.0
def rev180(x)
  (x - 360.0 * (x * INV360 + 0.5).floor) % 180.0
end

# lst3 = (lst1 * Eot::R2D) % 360.0
# sra = eot.right_ascension * Eot::R2D
# t_diff = (lst3 - sra) % 360.0
# 12 - rev180(t_diff) / 15
# t_south = 12 - rev180(t_diff) / 15.0
# t_south_string = eot.string_deg_to_time(t_south)
# puts "The sun is on your meridian at #{t_south_string} UTC"
# puts eot.ajd_to_datetime(eot.ajd)
# the number is syncing my machine. machine may vary in this.
# t_hour = Integer(t_south)
# t_min  = Integer((t_south - t_hour) * 60.0)
# t_sec  = ((t_south - t_hour - t_min / 60.0) * 3600.0).round(3)
loop do
  eot.jd = DateTime.now.to_time.utc.to_datetime.ajd.to_f
  eot.set_t
  lst1 = (eot.tl_aries + -88.75 * Eot::D2R) % (2 * PI)
  lst1_dt = eot.ajd_to_datetime((lst1 * Eot::R2D - 180) / 360.0)
  puts "LST gst #{lst1_dt.strftime('%H:%M:%S.%L')}"
  sleep 0.98
end
