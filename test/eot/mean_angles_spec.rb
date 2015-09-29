# mean_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

angles = Eot.new

describe 'Tests ajd of 2456885.0 ' do

  before(:each) do
    angles.ajd  =   2_456_885.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected   2456885.0 for angles.ajd'do
    assert_equal(2_456_885.0, angles.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" for angles.date'.to_s do
    assert_equal('2014-08-15T12:00:00+00:00', angles.date.to_s)
  end

  it 'expected   3.8508003966038915 for angles.ma'do
    assert_equal(3.8508003966038915, angles.ma)
  end

  it 'expected   2.5101912804141424 from  angles.mean_longitude()? ' do
    assert_equal(2.5101912804141424, angles.mean_longitude)
  end

  it 'expected   1.585784187793996 from  angles.ha_sun(1)? ' do
    assert_equal(1.585784187793996, angles.ha_sun(1))
  end

  it 'expected   3.8508003966038915 from  angles.mean_anomaly()? ' do
    assert_equal(3.8508003966038915, angles.mean_anomaly)
  end

  it 'expected   2.510089864980358 from  angles.mean_longitude_aries()? ' do
    assert_equal(2.510089864980358, angles.mean_longitude_aries)
  end

  it 'expected   0.40905940254265843 from  angles.mean_obliquity()? ' do
    assert_equal(0.40905940254265843, angles.mean_obliquity)
  end

  it 'expected   3.829387146883189 from  angles.true_anomaly()? ' do
    assert_equal(3.829387146883189, angles.true_anomaly)
  end

end

describe 'Tests ajd of 2455055.5 ' do

  before(:each) do
    angles.ajd             = 2_455_055.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected   2455055.0, from angles.' do
    assert_equal(2_455_055.0, angles.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00", from angles.date.to_s' do
    assert_equal('2009-08-11T12:00:00+00:00', angles.date.to_s)
  end

  it 'expected   3.7871218188949207, from angles.' do
    assert_equal(3.7871218188949207, angles.ma)
  end

  it 'expected   2.445008945789877 from  angles.mean_longitude()? ' do
    assert_equal(2.445008945789877, angles.mean_longitude)
  end

  it 'expected   3.7871218188949207 from angles.mean_anomaly()? ' do
    assert_equal(3.7871218188949207, angles.mean_anomaly)
  end

  it 'expected   2.444907382260759 from angles.mean_longitude_aries()? ' do
    assert_equal(2.444907382260759, angles.mean_longitude_aries)
  end

  it 'expected   0.4090707793981491 from angles.mean_obliquity()? ' do
    assert_equal(0.4090707793981491, angles.mean_obliquity)
  end

end
