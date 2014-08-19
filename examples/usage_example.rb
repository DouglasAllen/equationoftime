# usage_example.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = EqoT.new()
p eot.date
p eot.longitude
p eot.latitude
p eot.sunrise_dt
p eot.sunset_dt