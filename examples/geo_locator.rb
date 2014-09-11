# geo_locator.rb

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot' 
end


geo = GeoLatLng.new
geo.addr = "8000 South Michigan Ave., Chicago, IL"
geo.get_coordinates_from_address
p geo.lat
p geo.lng