# geo_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Geo = GeoLatLng.new

describe 'Geo defaults' do

  it'expected    "http://maps.googleapis.com/maps/api/geocode/xml?sensor=false&address="' do
    assert_equal "http://maps.googleapis.com/maps/api/geocode/xml?sensor=false&address=", Geo.base
  end

  it'expected    "Blackheath Ave, London SE10 8XJ, UK" 'do
    assert_equal "Blackheath Ave, London SE10 8XJ, UK", Geo.default_int
  end

  it'expected    "3333 Coyote Hill Road, Palo Alto, CA, 94304, USA" 'do
    assert_equal "3333 Coyote Hill Road, Palo Alto, CA, 94304, USA", Geo.default_us
  end

  it'expected    0.0'do
    assert_equal 0.0, Geo.lat
  end

  it'expected    0.0'do
    assert_equal 0.0, Geo.lng
  end

end