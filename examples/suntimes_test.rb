# suntimes_test.rb

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = Eot.new

# Change these for your geographic location Ex: of mine.
# Note the two coordinate parameters must be passed as floats.
# All parameters may be passed at any time.
# eot.date = @date
# eot.longitude = @longitude
# eot.latitude = @latitude
@latitude = 0.0 # sign in Northern Hemishere is none,  - (minus)for Southern Hemisphere
@longitude = 0.0  # East of UTC is none, - (minus)West of UTC
@date = "2000-01-01"
eot.jd = Date.parse(@date).jd

print "Enter your longitude in decimal format Ex: -125.099 \n"

lng = gets

lng.nil? ? eot.longitude = @longitude : eot.longitude = lng.chomp.to_f		

puts "Your longitude is #{eot.longitude}"

print "Enter your latitude in decimal format Ex: 39.3339 \n"

lat = gets

lat.nil? ? eot.latitude = @latitude : eot.latitude = lat.chomp.to_f

puts "Your latitude is #{eot.latitude}"

print "Enter the date you want to compute sun times for Ex: yyyy-mm-dd \n"

date = gets

date.nil? ? eot.date = @date : eot.date = date.chomp.to_f

puts "The date is #{eot.date}"

puts "Sunrise #{eot.sunrise_dt.to_time}"
puts "Sunset #{eot.sunset_dt.to_time}"

