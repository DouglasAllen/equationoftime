# geo_locator.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'equation_of_time'

geo = GeoLatLng.new
geo.addr = "8000 South Michigan Ave., Chicago, IL"
geo.get_coordinates_from_address
p geo.lat
p geo.lng