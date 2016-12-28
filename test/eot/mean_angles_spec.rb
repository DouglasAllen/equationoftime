# mean_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestMain < Minitest::Test

  describe 'Tests ajd of 2456885.0 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(@main.jd + 0.5)
      @main.set_t_ma
    end

    it 'expected   2456885.0 for @main.ajd' do
      assert_equal(2_456_885.0, @main.ajd)
    end

    it 'expected   "2014-08-15T12:00:00+00:00" for @main.date'.to_s do
      assert_equal('2014-08-15T12:00:00+00:00', @main.date.to_s)
    end

    it 'expected   3.850800396604 for @main.ma.round(12)' do
      assert_equal(3.850800396604, @main.ma.round(12))
    end
  end
end

#
class TestMeanAngles < Minitest::Test
  describe 'Tests ajd of 2456885.0 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(@main.jd + 0.5)
      @main.set_t_ma
    end

    it 'expected   2.510191280414 from  @main.mean_longitude.round(12)' do
      assert_equal(2.510191280414, @main.mean_longitude.round(12))
    end

    it 'expected   3.850800396604 from  @main.mean_anomaly.round(12)' do
      assert_equal(3.850800396604, @main.mean_anomaly.round(12))
    end

    it 'expected from @main.mean_longitude_aries.round(12)
                   2.506820536931' do
      assert_equal(2.506820536931, @main.mean_longitude_aries.round(12))
    end

    it 'expected   0.409092599692 from  @main.mean_obliquity.round(12)' do
      assert_equal(0.409092599692, @main.mean_obliquity.round(12))
    end
  end
end

#
class TestMain < Minitest::Test
  describe 'Tests ajd of 2455055.5 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(@main.jd + 0.5)
      @main.set_t_ma
    end

    it 'expected   2_455_055.0, from @main.ajd' do
      assert_equal(2_455_055.0, @main.ajd)
    end

    it 'expected   "2009-08-11T12:00:00+00:00", from @main.date.to_s' do
      assert_equal('2009-08-11T12:00:00+00:00', @main.date.to_s)
    end

    it 'expected   3.787121818895, from @main.ma.round(12)' do
      assert_equal(3.787121818895, @main.ma.round(12))
    end
  end
end

#
class TestMeanAngles < Minitest::Test
  describe 'Tests ajd of 2456885.0 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(@main.jd + 0.5)
      @main.set_t_ma
    end

    it 'expected   2.44500894579 from  @main.mean_longitude.round(12)' do
      assert_equal(2.44500894579, @main.mean_longitude.round(12))
    end

    it 'expected   3.787121818895 from @main.mean_anomaly.round(12)' do
      assert_equal(3.787121818895, @main.mean_anomaly.round(12))
    end

    it 'expected from @main.mean_longitude_aries.round(12)
                   2.442758450133' do
      assert_equal(2.442758450133, @main.mean_longitude_aries.round(12))
    end

    it 'expected   0.409092600003 from @main.mean_obliquity.round(12)' do
      assert_equal(0.409092600003, @main.mean_obliquity.round(12))
    end
  end
end
