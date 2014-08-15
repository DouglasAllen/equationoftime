# suntimes_test.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'equation_of_time'

eot = Equation_of_Time.new

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

if gets.chomp.to_f == 0.0
	eot.longitude = @longitude	
else  
	eot.longitude = gets.chomp.to_f
end
puts "Your longitude is #{eot.longitude}"

print "Enter your latitude in decimal format Ex: 39.3339 \n"

if gets.chomp.to_f == 0.0
	eot.latitude = @latitude
else
	eot.latitude = gets.chomp.to_f
end
puts "Your longitude is #{eot.latitude}"

print "Enter the date you want to compute sun times for Ex: yyyy-mm-dd \n"

if gets.chomp == ""
	eot.date = @date
else
	eot.date = gets.chomp
end
puts "The date is #{eot.date}"

puts "Sunrise #{eot.display_time(eot.sunrise_time)}"
puts "Sunset #{eot.display_time(eot.sunset_time)}"

