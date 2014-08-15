# usage_example.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'equation_of_time'

eot = Equation_of_Time.new(0.0, 0.0, "2000-01-01")
p eot.date
p eot.longitude
p eot.latitude
p eot.sunrise_time
p eot.sunset_time