# angles_spec.rb
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

  it 'expected   2.4887103398436143 from angles.apparent_longitude()? ' do
    assert_equal(2.4887103398436143, angles.apparent_longitude)
  end

  it 'expected   -0.021413249720702462 from angles.equation_of_center()? ' do
    assert_equal(-0.021413249720702462, angles.equation_of_center)
  end

  it 'expected   0.24406085412237594 from  angles.dec_sun()? ' do
    assert_equal(0.24406085412237594, angles.dec_sun)
  end

  it 'expected   2.506820536931464  from angle.earth_rotation_angle()' do
    assert_equal(2.506820536931464, angles.earth_rotation_angle)
  end
  
  it 'expected   0.016702468499021204 from  \
      angles.eccentricity_earth()? ' do
    assert_equal(0.016702468499021204, angles.eccentricity_earth)
  end

  it 'expected   2.5101912804141424 from  angles.mean_longitude()? ' do
    assert_equal(2.5101912804141424, angles.mean_longitude)
  end

  it 'expected   1.585784362285372 from  angles.ha_sun(1)? ' do
    assert_equal(1.585784362285372, angles.ha_sun(1))
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

  it 'expected   -2.7528817371494685 from  angles.omega()? ' do
    assert_equal(-2.7528817371494685, angles.omega)
  end

  it 'expected   2.5297577562929665 from  angles.right_ascension()? ' do
    assert_equal(2.5297577562929665, angles.right_ascension)
  end

  it 'expected   3.829387146883189 from  angles.true_anomaly()? ' do
    assert_equal(3.829387146883189, angles.true_anomaly)
  end

  it 'expected   2.5101242776566672 from  angles.true_longitude_aries()? ' do
    assert_equal(2.5101242776566672, angles.true_longitude_aries)
  end

  it 'expected   2.48877803069344 from  angles.true_longitude()? ' do
    assert_equal(2.48877803069344, angles.true_longitude)
  end

  it 'expected   0.4091001004863658 from angles.true_obliquity()? ' do
    assert_equal(0.4091001004863658, angles.true_obliquity)
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

  it 'expected   2.4252140645725033 from angles.apparent_longitude()? ' do
    assert_equal(2.4252140645725033, angles.apparent_longitude)
  end

  it 'expected   -0.019768413456709915 from angles.equation_of_center()? ' do
    assert_equal(-0.019768413456709915, angles.equation_of_center)
  end

  it 'expected   0.2642408391786298 from angles.dec_sun()? ' do
    assert_equal(0.2642408391786298, angles.dec_sun)
  end

  it 'expected   0.016704576164208475 from \
      angles.eccentricity_earth()? ' do
    assert_equal(0.016704576164208475, angles.eccentricity_earth)
  end

  it 'expected   2.445008945789877 from  angles.mean_longitude()? ' do
    assert_equal(2.445008945789877, angles.mean_longitude)
  end

  it 'expected   1.5858631464187376 from angles.ha_sun(1)? ' do
    assert_equal(1.5858631464187376, angles.ha_sun(1))
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

  it 'expected   -1.0615640635268548 from angles.omega()? ' do
    assert_equal(-1.0615640635268548, angles.omega)
  end

  it 'expected   2.4675535318494584 from angles.right_ascension()? ' do
    assert_equal(2.4675535318494584, angles.right_ascension)
  end

  it 'expected   3.767353405438211 from angles.true_anomaly()? ' do
    assert_equal(3.767353405438211, angles.true_anomaly)
  end

  it 'expected   2.444977460790369 from angles.true_longitude_aries()? ' do
    assert_equal(2.444977460790369, angles.true_longitude_aries)
  end

  it 'expected   2.4252405323331674 from angles.true_longitude()? ' do
    assert_equal(2.4252405323331674, angles.true_longitude)
  end

  it 'expected   0.4090481178854004 from angles.true_obliquity()? ' do
    assert_equal(0.4090481178854004, angles.true_obliquity)
  end
end
