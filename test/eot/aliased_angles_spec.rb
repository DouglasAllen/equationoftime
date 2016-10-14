# aliased_angles_spec.rb
gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_angles = Eot.new

describe 'tests ajd of 2456885.0 ' do

  before(:each) do
    aliased_angles.ajd  = 2_456_885.0
    ajd = aliased_angles.ajd
    aliased_angles.ma_ta_set
    # somtimes need date to check values somewhere else
    aliased_angles.date = aliased_angles.ajd_to_datetime(ajd)
  end

  it 'expected from \
      aliased_angles.ajd \
                 2_456_885.0 ' do
    assert_equal(2_456_885.0, 
    aliased_angles.ajd)
  end

  it 'expected from \
      aliased_angles.date.to_s \
                 "2014-08-15T12:00:00+00:00" ' do
    assert_equal('2014-08-15T12:00:00+00:00', 
    aliased_angles.date.to_s)
  end

  it 'expected from \
      aliased_angles.ma.round(10) \
                 3.8508003966038915 'do
    assert_equal(3.8508003966038915, 
    aliased_angles.ma.round(10))
  end

  it 'expected from \
      aliased_angles.apparent_longitude.round(10) \
                 2.4887103398 ' do
    assert_equal(2.4887103398, 
    aliased_angles.apparent_longitude.round(10))
  end

  it 'expected from \
      aliased_angles.cosine_apparent_longitude.round(10) \
                 -0.794336157 ' do
    assert_equal(-0.794336157, 
    aliased_angles.cosine_apparent_longitude.round(10))
  end

  it 'expected from \   -0.7943772759574919 from \
      aliased_angles.cosine_true_longitude()? ' do
    assert_equal(-0.7943772759574919, 
    aliased_angles.cosine_true_longitude.round(10))
  end

  it 'expected from \
      aliased_angles.cosine_true_obliquity.round(10) \
                 0.9175115347 ' do
    assert_equal(0.9175115347, 
    aliased_angles.cosine_true_obliquity.round(10))
  end

  it 'expected from \   0.24401410218543554 from \
      aliased_angles.declination()? ' do
    assert_equal(0.24401410218543554, 
    aliased_angles.declination.round(10))
  end

  it 'expected from \
      aliased_angles.delta_t_ecliptic.round(10) \
                 -0.0410308256' do
    assert_equal(-0.0410308256, 
    aliased_angles.delta_t_ecliptic.round(10))
  end

  it 'expected from \   0.0214132497 from \
      aliased_angles.delta_t_elliptic()? ' do
    assert_equal(0.0214132497, 
    aliased_angles.delta_t_elliptic.round(10))
  end

  it 'expected from \   0.0167024685 from \
      aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal(0.0167024685, 
    aliased_angles.eccentricity_earth_orbit.round(10))
  end

  it 'expected from \   -0.0214132497 from \
      aliased_angles.equation_of_center()? ' do
    assert_equal(-0.0214132497, 
    aliased_angles.equation_of_center.round(10))
  end

  it 'expected from \   2.5101912804 from \
      aliased_angles.geometric_mean_longitude()? ' do
    assert_equal(2.5101912804, 
    aliased_angles.geometric_mean_longitude.round(10))
  end

  it 'expected from \
      aliased_angles.horizon_angle(1).round(10) \
                 1.5857841878 ' do
    assert_equal(1.5857841878, 
    aliased_angles.horizon_angle(1).round(10))
  end

  it 'expected from \   3.8508003966038915 from \
      aliased_angles.mean_anomaly()? ' do
    assert_equal(3.8508003966038915, 
    aliased_angles.mean_anomaly.round(10))
  end

  it 'expected from \   2.510089865 from \
      aliased_angles.mean_longitude_aries()? ' do
    assert_equal(2.510089865, 
    aliased_angles.mean_longitude_aries.round(10))
  end

  it 'expected from \   0.40905940254265843 from \
      aliased_angles.mean_obliquity()? ' do
    assert_equal(0.40905940254265843, 
    aliased_angles.mean_obliquity.round(10))
  end

  it 'expected from \   0.40905940254265843 from \
      aliased_angles.mean_obliquity_of_ecliptic()? ' do
    assert_equal(0.40905940254265843, \
    aliased_angles.mean_obliquity_of_ecliptic)
  end

  it 'expected from \   0.40901870461547685 from \
      aliased_angles.obliquity_correction()? ' do
    assert_equal(0.40901870461547685, 
    aliased_angles.obliquity_correction)
  end

  it 'expected from \   2.5297411654316497 from \
      aliased_angles.right_ascension()? ' do
    assert_equal(2.5297411654316497, 
    aliased_angles.right_ascension)
  end

  it 'expected from \   0.6074784519729512 from \
      aliased_angles.sine_apparent_longitude()? ' do
    assert_equal(0.6074784519729512, 
    aliased_angles.sine_apparent_longitude)
  end

  it 'expected from \   0.6074246812917259 from \
      aliased_angles.sine_true_longitude()? ' do
    assert_equal(0.6074246812917259, 
    aliased_angles.sine_true_longitude)
  end

  it 'expected from \   3.8293871468831893 from \
      aliased_angles.true_anomaly()? ' do
    assert_equal(3.8293871468831893, 
    aliased_angles.true_anomaly)
  end

  it 'expected from \   2.48877803069344 from \
      aliased_angles.true_longitude()? ' do
    assert_equal(2.48877803069344, 
    aliased_angles.true_longitude)
  end

  it 'expected from \   2.5101242776531474 from \
      aliased_angles.true_longitude_aries()? ' do
    assert_equal(2.5101242776531474, 
    aliased_angles.true_longitude_aries)
  end

  it 'expected from \   0.40901870461547685 from \
      aliased_angles.true_obliquity()? ' do
    assert_equal(0.40901870461547685, 
    aliased_angles.true_obliquity)
  end
end

describe 'tests ajd of 2455055.5 ' do

  before(:each) do
    aliased_angles.ajd = 
      2_455_055.0
    ajd = aliased_angles.ajd
    aliased_angles.ma_ta_set
    # check date for this ajd when needed.
    aliased_angles.date = 
      aliased_angles.ajd_to_datetime(ajd)
  end

  it 'expected from \ from aliased_angles.ajd \
                 2_455_055.0 ' do
    assert_equal(2_455_055.0, 
    aliased_angles.ajd)
  end

  it 'expected from \ from aliased_angles.date.to_s \
                 "2009-08-11T12:00:00+00:00"' do
    assert_equal('2009-08-11T12:00:00+00:00', 
    aliased_angles.date.to_s)
  end

  it 'expected from \ from aliased_angles.ma.round(10) 
                 ' do
    assert_equal(3.7871218188949207, 
    aliased_angles.ma.round(10))
  end

  it 'expected from \ from aliased_angles.ma.round(10) \
                 3.7871218188949207 ' do
    assert_equal(3.7871218188949207, 
    aliased_angles.mean_anomaly.round(10))
  end

  it 'expected from \
      aliased_angles.apparent_longitude.round(10) \
                 2.4252140646' do
    assert_equal(2.4252140646, 
    aliased_angles.apparent_longitude.round(10))
  end

  it 'expected from \
      aliased_angles.cosine_apparent_longitude.round(10) \
                 -0.754188697 ' do
    assert_equal(-0.754188697, 
    aliased_angles.cosine_apparent_longitude.round(10))
  end

  it 'expected from \
      aliased_angles.cosine_true_longitude.round(10) \
                 -0.754206077 ' do
    assert_equal(-0.754206077, 
    aliased_angles.cosine_true_longitude.round(10))
  end

  it 'expected from \   0.9174818088112336 from \
      aliased_angles.cosine_true_obliquity()? ' do
    assert_equal(0.9174818088112336, 
    aliased_angles.cosine_true_obliquity)
  end

  it 'expected from \   0.2642691272294404 from \
      aliased_angles.declination()? ' do
    assert_equal(0.2642691272294404, 
    aliased_angles.declination)
  end

  it 'expected from \   -0.04234904897476355 from \
      aliased_angles.delta_t_ecliptic()? ' do
    assert_equal(-0.04234904897476355, 
    aliased_angles.delta_t_ecliptic)
  end

  it 'expected from \    0.0197684135 from \
      aliased_angles.delta_t_elliptic()? ' do
    assert_equal(0.0197684135, 
    aliased_angles.delta_t_elliptic.round(10))
  end

  it 'expected from \   0.016704576164208475 from \
      aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal(0.016704576164208475, \
    aliased_angles.eccentricity_earth_orbit)
  end

  it 'expected from \   -0.019768413456709915 from \
      aliased_angles.equation_of_center()? ' do
    assert_equal(-0.019768413456709915, 
    aliased_angles.equation_of_center)
  end

  it 'expected from \   2.445008945789877 from \
      aliased_angles.geometric_mean_longitude()? ' do
    assert_equal(2.445008945789877, 
    aliased_angles.geometric_mean_longitude)
  end

  it 'expected from \   1.585863261753274 from \
      aliased_angles.horizon_angle()? ' do
    assert_equal(1.585863261753274, 
    aliased_angles.horizon_angle(1))
  end

  it 'expected from \   3.7871218188949207 from \
      aliased_angles.mean_anomaly()? ' do
    assert_equal(3.7871218188949207, 
    aliased_angles.mean_anomaly)
  end

  it 'expected from \   2.444907382260759 from \
      aliased_angles.mean_longitude_aries()? ' do
    assert_equal(2.444907382260759, 
    aliased_angles.mean_longitude_aries)
  end

  it 'expected from \   0.4090707793981491 from \
      aliased_angles.mean_obliquity()? ' do
    assert_equal(0.4090707793981491, 
    aliased_angles.mean_obliquity)
  end

  it 'expected from \   0.4090934409048494 from \
      aliased_angles.obliquity_correction()? ' do
    assert_equal(0.4090934409048494, 
    aliased_angles.obliquity_correction)
  end

  it 'expected from \   2.467563113547267 from \
      aliased_angles.right_ascension()? ' do
    assert_equal(2.467563113547267, 
    aliased_angles.right_ascension)
  end

  it 'expected from \   0.6566577566139093 from \
      aliased_angles.sine_apparent_longitude()? ' do
    assert_equal(0.6566577566139093, 
    aliased_angles.sine_apparent_longitude)
  end

  it 'expected from \   0.6566377946979757 from \
      aliased_angles.sine_true_longitude()? ' do
    assert_equal(0.6566377946979757, 
    aliased_angles.sine_true_longitude)
  end

  it 'expected from \   3.767353405438211 from aliased_angles.true_anomaly()? ' do
    assert_equal(3.767353405438211, 
    aliased_angles.true_anomaly)
  end

  it 'expected from \   2.4252405323331674 from \
      aliased_angles.true_longitude()? ' do
    assert_equal(2.4252405323331674, 
    aliased_angles.true_longitude)
  end

  it 'expected from \   2.4449774607872907 from \
      aliased_angles.true_longitude_aries()? ' do
    assert_equal(2.4449774607872907, 
    aliased_angles.true_longitude_aries)
  end

  it 'expected from \   0.4090934409048494 from \
      aliased_angles.true_obliquity()? ' do
    assert_equal(0.4090934409048494, 
    aliased_angles.true_obliquity)
  end

end
