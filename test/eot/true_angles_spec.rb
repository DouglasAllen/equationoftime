# true_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestMain < Minitest::Test
  describe 'Tests ajd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   2_456_885.0 for @main.jd' do
      assert_equal(2_456_885.0, @main.jd)
    end

    it 'expected   2_456_885.0 for @main.ajd' do
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
class TestTrueAngles < Minitest::Test
  describe 'Tests ajd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   3.829387146883 from  @main.true_anomaly.round(12)' do
      assert_equal(3.829387146883, @main.true_anomaly.round(12))
    end

    it 'expected   2.510124277657 from  @main.true_longitude_aries.round(12)' do
      assert_equal('not implemented yet', @main.true_longitude_aries)
    end

    it 'expected   2.488778030693 from  @main.true_longitude.round(12)' do
      assert_equal(2.488778030693, @main.true_longitude.round(12))
    end

    it 'expected   0.409018704632 from @main.true_obliquity.round(12)' do
      assert_equal('not implemented yet', @main.true_obliquity)
    end
  end
end

#
class TestMain < Minitest::Test
  describe 'Tests ajd of 2_455_055.5 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.5
      @main.ajd = 2_455_055.5
      @main.date = DateTime.jd(2_455_055.5)
      @main.set_t_ma
    end

    it 'expected   2_455_055.5, from @main.jd' do
      assert_equal(2_455_055.5, @main.jd)
    end

    it 'expected   2_455_055.5, from @main.ajd' do
      assert_equal(2_455_055.5, @main.ajd)
    end

    it 'expected   "2009-08-11T12:00:00+00:00", from @main.date.to_s' do
      assert_equal('2009-08-11T12:00:00+00:00', @main.date.to_s)
    end

    it 'expected   3.7957228039, from @main.ma.round(12)' do
      assert_equal(3.7957228039, @main.ma.round(12))
    end
  end
end

#
class TestTrueAngles < Minitest::Test
  describe 'Tests ajd of 2_455_055.5 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.5
      @main.ajd = 2_455_055.5
      @main.date = DateTime.jd(2_455_055.5 + 0.5)
      @main.set_t_ma
    end

    it 'expected   3.775727266791 from @main.true_anomaly.round(12)' do
      assert_equal(3.775727266791, @main.true_anomaly.round(12))
    end

    it 'expected   2.433614804543 from @main.true_longitude_aries.round(12)' do
      assert_equal('not implemented yet', @main.true_longitude_aries)
    end

    it 'expected   2.433614804543 from @main.true_longitude.round(12)' do
      assert_equal(2.433614804543, @main.true_longitude.round(12))
    end

    it 'expected   0.4090934408988 from @main.true_obliquity.round(12)' do
      assert_equal('not implemented yet', @main.true_obliquity)
    end
  end
end
