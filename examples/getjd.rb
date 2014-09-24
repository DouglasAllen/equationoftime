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
  360.0 * ( x / 360.0 - Integer(x / 360.0))
end

def calc_mean_long_aries(t)
  mod_360(280.46061666 + t * 36_525.0 * 360.98564736629 + t * (t * 0.000387933 - t * (t / 38_710_000.0)))
end

puts 'outputs data every 5 seconds'
loop do
  time = Time.now.utc
  theDate = Date.new(time.year, time.month, time.day)
  # puts time
  # puts theDate
  # puts "#{theDate.ajd} = Astronomical Julian Day"
  # puts "#{theDate.jd - 0.5} = Astronomical Julian Day"
  # puts "#{theDate.jd} = Julian Day"
  t = time
  theDayFraction = (t.usec / (1_000_000.0 * 3600.0) + t.min / 60.0 + t.hour + t.sec / 3600.0) / 24.0
  # puts "#{theDayFraction} = Day Fraction time now"

  theTotal = theDate.ajd + theDayFraction
  # puts "#{theTotal} = Astronomical Julian Day + Day Fraction time now"

  tjc = calc_time_julian_centurey(theTotal)
  gmst = calc_mean_long_aries(tjc)

  puts "#{gmst.round 3} = (GHA) Mean Hour Angle First Point of Aries (Vernal Equinox)"
  puts "#{(gmst / 15.0).round 3} = Mean Greenwich Siderial Time (GMST)"
  sleep 5
end
