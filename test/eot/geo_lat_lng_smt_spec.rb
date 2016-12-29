# geo_lat_lng_smt__spec.rb
gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestGeoLatLng < Minitest::Test

  describe 'Geo defaults' do

    before(:each) do
      @base =
        'http://maps.googleapis.com/maps/api/geocode/json?sensor=false&address='
      @international = 'Blackheath Ave, London SE10 8XJ, UK'
      @us = '3333 Coyote Hill Road, Palo Alto, CA, 94304, USA'
      @geo = GeoLatLng.new
    end

    it "expected #{@international}" do
      assert_equal @international, @geo.addr
    end

    it "expected #{@base}" do
      assert_equal @base, @geo.base_json
    end

    it "expected #{@us}" do
      assert_equal @us, @geo.default_us
    end

    it 'expected   0.0' do
      assert_equal 0.0, @geo.lat
    end

    it 'expected   0.0' do
      assert_equal 0.0, @geo.lng
    end
  end
end
