# geo_spec.rb/
#

require_relative 'spec_config'

lib = File.expand_path('../../../lib', __FILE__) 
$LOAD_PATH.unshift(lib)unless$LOAD_PATH.include?(lib) 
require 'eot'

geo = GeoLatLng.new()

describe 'Geo defaults' do
	
  it 'expected "Blackheath Ave, London SE10 8XJ, UK" 'do
    assert_equal "Blackheath Ave, London SE10 8XJ, UK", geo.addr
  end

  it'expected    "http://maps.googleapis.com/maps/api/geocode/json?address="' do
    assert_equal "http://maps.googleapis.com/maps/api/geocode/json?address=", geo.base
  end

  it'expected    "Blackheath Ave, London SE10 8XJ, UK" 'do
    assert_equal "Blackheath Ave, London SE10 8XJ, UK", geo.default_int
  end

  it'expected    "3333 Coyote Hill Road, Palo Alto, CA, 94304, USA" 'do
    assert_equal "3333 Coyote Hill Road, Palo Alto, CA, 94304, USA", geo.default_us
  end

  it'expected    0.0'do
    assert_equal 0.0, geo.lat
  end

  it'expected    0.0'do
    assert_equal 0.0, geo.lng
  end

end