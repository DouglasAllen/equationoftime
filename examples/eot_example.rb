lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

@solar = Eot.new

puts 'Enter your latitude in decimal. ex: 5.238 or -5.238'
@solar.latitude = gets.strip.to_f   # + in North lat, - in South lat
puts 'Enter your longitude in decimal. ex: 55.555 or -55.555'
@solar.longitude = gets.strip.to_f  # + East lon, - West lon

@solar.jd = Date.today.jd

puts 'Sunrise today:', @solar.sunrise_dt.to_time
puts 'Sunset today:', @solar.sunset_dt.to_time
# "Sunrise today = 2015-09-21 00:49:51 -0500" # defaults to nil lat and lon
# "Sunset today = 2015-09-21 12:56:31 -0500"   # gets here will not eval input.
