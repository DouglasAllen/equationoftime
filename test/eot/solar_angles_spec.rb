# solar_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestMain < Minitest::Test
  describe 'Tests ajd of 2_455_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_455_885.0
      @main.ajd = 2_455_885.0
      @main.date = DateTime.jd(2_455_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   2_455_885.0 for @main.ajd' do
      assert_equal(2_455_885.0, @main.jd)
      assert_equal(2_455_885.0, @main.ajd)
    end

    it 'expected   "2011-11-19T12:00:00+00:00" for @main.date.to_s' do
      assert_equal('2011-11-19T12:00:00+00:00', @main.date.to_s)
    end

    it 'expected   5.498386312376 for @main.ma.round(12)' do
      assert_equal(5.498386312376, @main.ma.round(12))
    end
  end
end

#
class TestSolarAngles < Minitest::Test
  describe 'Tests ajd of 2_455_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_455_885.0
      @main.ajd = 2_455_885.0
      @main.date = DateTime.jd(2_455_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   4.132977017475 from @main.apparent_longitude.round(12)' do
      assert_equal(4.132977017475, @main.apparent_longitude.round(12))
    end

    it 'expected from @main.equation_of_center.round(12)
                   -0.023959807728' do
      assert_equal(-0.023959807728, @main.equation_of_center.round(12))
    end

    it 'expected   -0.32133311202 from  @main.declination.round(12)' do
      assert_equal(-0.32133311202, @main.declination.round(12))
    end

    it 'expected from @main.eccentricity.round(12)
                   0.016703620305' do
      assert_equal(0.016703620305, @main.eccentricity.round(12))
    end

    it 'expected from @main.ha_sun(1).round(12)' do
      assert_equal(1.586124796588, @main.ha_sun(1).round(12))
      assert_equal(1.681187754971, @main.ha_sun(2).round(12))
      assert_equal(1.791716672017, @main.ha_sun(3).round(12))
      assert_equal(1.902534816197, @main.ha_sun(4).round(12))
    end

    it 'expected   15.633911123321 from  @main.right_ascension.round(12)' do
      assert_equal(15.633911123321, @main.right_ascension.round(12))
    end
  end
end
