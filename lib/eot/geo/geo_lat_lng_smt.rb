require 'geo_lat_lng_smt'

geo = GeoLatLng.new('Blackheath Ave, London SE10 8XJ, UK')

if __FILE__ == $PROGRAM_NAME

  p geo.get_coordinates_from_address

end
