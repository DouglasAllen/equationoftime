# input_suntimes.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'equation_of_time'

eot = Equation_of_Time.new

@date = Date.today.to_s
@zone = -5
puts @date
eot.date = @date
geo = GeoLatLng.new
geo.addr = "8000 South Michigan Ave., Chicago, IL"
geo.get_coordinates_from_address
eot.longitude = geo.lng.to_f
eot.latitude = geo.lat.to_f
puts "Sunrise #{eot.sunrise_time(@date).to_time}"
puts "Sunset #{eot.sunset_time(@date).to_time}"
