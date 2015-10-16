# true_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'Tests ajd of 2456885.0 ' do

    before(:each) do
      @true_angles = Eot.new
      @true_angles.ajd  =   2_456_885.0
      ajd = @true_angles.ajd
      @true_angles.set_t_ma
      # check date for this ajd when needed.
      @true_angles.date = @true_angles.ajd_to_datetime(ajd)
    end

    it 'expected   2456885.0 for @true_angles.ajd'do
      assert_equal(2_456_885.0, @true_angles.ajd)
    end

    it 'expected   "2014-08-15T12:00:00+00:00" for @true_angles.date'.to_s do
      assert_equal('2014-08-15T12:00:00+00:00', @true_angles.date.to_s)
    end

    it 'expected   3.8508003966038915 for @true_angles.ma'do
      assert_equal(3.8508003966038915, @true_angles.ma)
    end

    it 'expected   3.829387146883189 from  @true_angles.true_anomaly()? ' do
      assert_equal(3.829387146883189, @true_angles.true_anomaly)
    end

    it 'expected   2.5101242776566672 from  @true_angles.true_longitude_aries()? ' do
      assert_equal(2.5101242776566672, @true_angles.true_longitude_aries)
    end

    it 'expected   2.48877803069344 from  @true_angles.true_longitude()? ' do
      assert_equal(2.48877803069344, @true_angles.true_longitude)
    end

    it 'expected   0.4090187046320026 from @true_angles.true_obliquity()? ' do
      assert_equal(0.4090187046320026, @true_angles.true_obliquity)
    end
  end

  describe 'Tests ajd of 2455055.5 ' do

    before(:each) do
      @true_angles = Eot.new
      @true_angles.ajd             = 2_455_055.0
      ajd = @true_angles.ajd
      @true_angles.set_t_ma
      # check date for this ajd when needed.
      @true_angles.date = @true_angles.ajd_to_datetime(ajd)
    end

    it 'expected   2455055.0, from @true_angles.' do
      assert_equal(2_455_055.0, @true_angles.ajd)
    end

    it 'expected   "2009-08-11T12:00:00+00:00", from @true_angles.date.to_s' do
      assert_equal('2009-08-11T12:00:00+00:00', @true_angles.date.to_s)
    end

    it 'expected   3.7871218188949207, from @true_angles.' do
      assert_equal(3.7871218188949207, @true_angles.ma)
    end

    it 'expected   3.767353405438211 from @true_angles.true_anomaly()? ' do
      assert_equal(3.767353405438211, @true_angles.true_anomaly)
    end

    it 'expected   2.444977460790369 from @true_angles.true_longitude_aries()? ' do
      assert_equal(2.444977460790369, @true_angles.true_longitude_aries)
    end

    it 'expected   2.4252405323331674 from @true_angles.true_longitude()? ' do
      assert_equal(2.4252405323331674, @true_angles.true_longitude)
    end

    it 'expected   0.40909344089880095 from @true_angles.true_obliquity()? ' do
      assert_equal(0.40909344089880095, @true_angles.true_obliquity)
    end
  end
end