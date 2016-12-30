# geo_lat_lng_smt_spec.rb

gem 'minitest'
require 'minitest/autorun'

require 'geo_lat_lng_smt'
#
class TestGeoLatLng < Minitest::Test
  describe 'Geo defaults' do
    def setup
      @geo = GeoLatLng.new('Blackheath Ave, London SE10 8XJ, UK')
    end

    it 'expected   "51.4770228, -0.0001147"' do
      assert_equal '51.4770228, -0.0001147', '51.4770228, -0.0001147'
    end
  end
end
