# mean_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'Tests ajd of 2456885.0 ' do

    before(:each) do
      @mean_angles = Eot.new
      @mean_angles.ajd  =   2_456_885.0
      ajd = @mean_angles.ajd
      @mean_angles.set_t_ma
      # check date for this ajd when needed.
      @mean_angles.date = @mean_angles.ajd_to_datetime(ajd)
    end

    it 'expected   2456885.0 for @mean_angles.ajd'do
      assert_equal(2_456_885.0, @mean_angles.ajd)
    end

    it 'expected   "2014-08-15T12:00:00+00:00" for @mean_angles.date'.to_s do
      assert_equal('2014-08-15T12:00:00+00:00', @mean_angles.date.to_s)
    end

    it 'expected   3.8508003966038915 for @mean_angles.ma'do
      assert_equal(3.8508003966038915, @mean_angles.ma)
    end

    it 'expected   2.5101912804141424 from  @mean_angles.mean_longitude()? ' do
      assert_equal(2.5101912804141424, @mean_angles.mean_longitude)
    end

    it 'expected   1.585784187793996 from  @mean_angles.ha_sun(1)? ' do
      assert_equal(1.585784187793996, @mean_angles.ha_sun(1))
    end

    it 'expected   3.8508003966038915 from  @mean_angles.mean_anomaly()? ' do
      assert_equal(3.8508003966038915, @mean_angles.mean_anomaly)
    end

    it 'expected   2.5100898649874446 from  @mean_angles.mean_longitude_aries()? ' do
      assert_equal(2.5100898649874446, @mean_angles.mean_longitude_aries)
    end

    it 'expected   0.40905940254265843 from  @mean_angles.mean_obliquity()? ' do
      assert_equal(0.40905940254265843, @mean_angles.mean_obliquity)
    end


  end

  describe 'Tests ajd of 2455055.5 ' do

    before(:each) do
      @mean_angles = Eot.new
      @mean_angles.ajd             = 2_455_055.0
      ajd = @mean_angles.ajd
      @mean_angles.set_t_ma
      # check date for this ajd when needed.
      @mean_angles.date = @mean_angles.ajd_to_datetime(ajd)
    end

    it 'expected   2455055.0, from @mean_angles.' do
      assert_equal(2_455_055.0, @mean_angles.ajd)
    end

    it 'expected   "2009-08-11T12:00:00+00:00", from @mean_angles.date.to_s' do
      assert_equal('2009-08-11T12:00:00+00:00', @mean_angles.date.to_s)
    end

    it 'expected   3.7871218188949207, from @mean_angles.' do
      assert_equal(3.7871218188949207, @mean_angles.ma)
    end

    it 'expected   2.445008945789877 from  @mean_angles.mean_longitude()? ' do
      assert_equal(2.445008945789877, @mean_angles.mean_longitude)
    end

    it 'expected   3.7871218188949207 from @mean_angles.mean_anomaly()? ' do
      assert_equal(3.7871218188949207, @mean_angles.mean_anomaly)
    end

    it 'expected   2.4449073822678455 from @mean_angles.mean_longitude_aries()? ' do
      assert_equal(2.4449073822678455, @mean_angles.mean_longitude_aries)
    end

    it 'expected   0.4090707793981491 from @mean_angles.mean_obliquity()? ' do
      assert_equal(0.4090707793981491, @mean_angles.mean_obliquity)
    end

  end
end