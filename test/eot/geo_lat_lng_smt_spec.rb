# geo_lat_lng_smt__spec.rb
gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestGeoLatLng < Minitest::Test
  def setup
    @geo = GeoLatLng.new
    @base = @geo.base_json
    @international = @geo.default_int
    @us = @geo.default_us
  end
  describe 'Geo defaults' do
    before(:each) do
      @geo = GeoLatLng.new
      @base = @geo.base_json
      @international = @geo.default_int
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
