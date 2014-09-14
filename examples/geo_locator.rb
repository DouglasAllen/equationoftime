# geo_locator.rb

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot' 
end

eot = Eot.new
eot.addr = "8000 South Michigan Ave., Chicago, IL"
# gets defaults not what we set eot.addr to.
p eot.latitude
p eot.longitude
# check eot.addr
p eot.addr

#=begin works just fine
geo = GeoLatLng.new
#checl geo.addr
p geo.addr # default address
geo.get_coordinates_from_address
p geo.lat
p geo.lng
#=end
# still the dfaults
p eot.latitude
p eot.longitude
geo.addr = eot.addr
# check geo.addr now
p geo.addr
# call the lookup method now
geo.get_coordinates_from_address
# still the dfaults
p eot.latitude
p eot.longitude
# so set eot.latitude and eot.longitude to the geo coordinates from your code
eot.latitude = geo.lat
eot.longitude = geo.lng
# 
p eot.latitude
p eot.longitude
# now we can use the ones we want.