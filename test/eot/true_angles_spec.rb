# true_angles_spec.rb

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
    angles.set_t_ma
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

  it 'expected   3.829387146883189 from  angles.true_anomaly()? ' do
    assert_equal(3.829387146883189, angles.true_anomaly)
  end

  it 'expected   2.5100898649874446 from  angles.true_longitude_aries()? ' do
    assert_equal(2.5100898649874446, angles.true_longitude_aries)
  end

  it 'expected   2.48877803069344 from  angles.true_longitude()? ' do
    assert_equal(2.48877803069344, angles.true_longitude)
  end

  it 'expected   0.4090187046320026 from angles.true_obliquity()? ' do
    assert_equal(0.4090187046320026, angles.true_obliquity)
  end
end

describe 'Tests ajd of 2455055.5 ' do

  before(:each) do
    angles.ajd             = 2_455_055.0
    ajd = angles.ajd
    angles.set_t_ma
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

  it 'expected   3.767353405438211 from angles.true_anomaly()? ' do
    assert_equal(3.767353405438211, angles.true_anomaly)
  end

  it 'expected   2.4449073822678455 from angles.true_longitude_aries()? ' do
    assert_equal(2.4449073822678455, angles.true_longitude_aries)
  end

  it 'expected   2.4252405323331674 from angles.true_longitude()? ' do
    assert_equal(2.4252405323331674, angles.true_longitude)
  end

  it 'expected   0.40909344089880095 from angles.true_obliquity()? ' do
    assert_equal(0.40909344089880095, angles.true_obliquity)
  end
end
