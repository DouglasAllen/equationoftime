#!/usr/bin/env ruby

require 'date'
include Math

def calc_time_julian_centurey(t)
  # Julian Day Number j(2000) subtracted
  (t - 2_451_545.0) / 36_525.0
  # Time in fractional centurey
end

# Truncate large angles
def mod_360(x)
  360.0 * (x / 360.0 - Integer(x / 360.0))
end

def calc_mean_long_aries(t)
  mod_360(280.46061666 +
    t * 36_525.0 * 360.98564736629 +
    t * (t * 0.000387933 -
    t * (t / 38_710_000.0)))
end

puts 'outputs data every 5 seconds'
loop do
  time = Time.now.utc
  date = Date.new(time.year, time.month, time.day)
  t = time
  day_fraction =
    (t.usec / (1_000_000.0 * 3600.0) +
     t.min / 60.0 + t.hour + t.sec / 3600.0) / 24.0

  total = date.ajd + day_fraction

  tjc = calc_time_julian_centurey(total)
  gmst = calc_mean_long_aries(tjc)

  puts '(GHA) Mean Hour Angle First Point of Aries (Vernal Equinox)'
  puts "#{gmst.round 3}"
  puts 'Greenwich Mean Siderial Time (GMST)'
  puts "#{(gmst / 15.0).round 3}"
  sleep 5
end
