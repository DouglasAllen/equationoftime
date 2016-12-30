# geo_lat_lng_smt__spec.rb
gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestGeoLatLng < Minitest::Test
  describe 'Geo defaults' do
    def setup
      @geo = GeoLatLng.new
      @international = @geo.default_int
      @base = @geo.base_json
      @us = @geo.default_us
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
