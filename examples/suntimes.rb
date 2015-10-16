# suntimes.rb

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
end

eot = Eot.new
# Change these for your geo location
@latitude = 41.9474  # + in Northern Hemishere,  - in Southern Hemisphere
@longitude = -88.74467  # + East of zulu time zone, - West of zulu time zone
@zone = -5 # Time offset for zone.

eot.longitude = @longitude
eot.latitude = @latitude
puts
@date = Date.today
# get the times for a few more days.
for i in 0..10

  eot.ajd = (@date.jd + i)

  puts "Sunrise #{(eot.sunrise_dt.to_time).strftime('%c')}"
  puts "Sunset #{(eot.sunset_dt.to_time).strftime('%c')}"
  puts
end
