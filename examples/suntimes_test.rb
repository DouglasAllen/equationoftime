# suntimes_test.rb

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
end

@eot = Eot.new

# Change these for your geographic location Ex: of mine.
# Note the two coordinate parameters must be passed as floats.
# All parameters may be passed at any time.
# eot.date = @date
# eot.longitude = @longitude
# eot.latitude = @latitude
# sign in Northern Hemishere is none, (minus)for Southern Hemisphere
@latitude = 39.3339
# East of UTC is none, - (minus)West of UTC
@longitude = -125.099

print "Enter your longitude in decimal format Ex: -125.099 \n"

lng = gets.chomp

lng == "" ? @eot.longitude = @longitude : @eot.longitude = lng.to_f

puts "Your longitude is #{@eot.longitude}"

print "Enter your latitude in decimal format Ex: 39.3339 \n"

lat = gets.chomp

lat == "" ? @eot.latitude = @latitude : @eot.latitude = lat.to_f

puts "Your latitude is #{@eot.latitude}"

print "Enter the date Ex: yyyy-mm-dd \ndefaults to today."

date = gets.chomp

date == "" ? @eot.date : @eot.date = Date.parse(date)

puts "The date is #{@eot.date.to_date}"

puts "Sunrise #{@eot.sunrise_dt.to_time}"
puts "Sunset #{@eot.sunset_dt.to_time}"
