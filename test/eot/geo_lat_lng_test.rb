gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestGeoLatLng < Minitest::Test
  def setup
    @geo = GeoLatLng.new
  end

  def test_addr
    @geo.addr
  end

  def test_addr_equals
    @geo.addr = ''
  end

  def test_base_json; end

  def test_default_int; end

  def test_default_us; end

  def test_lat; end

  def test_lat_equals; end

  def test_lng; end

  def test_lng_equals; end

  def test_set_coordinates; end
end
