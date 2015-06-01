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

  it 'expected   2_456_885.0 for aliased_angles.ajd 'do
    assert_equal(2_456_885.0, aliased_angles.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" from \
      aliased_angles.date.to_s ' do
    assert_equal('2014-08-15T12:00:00+00:00', \
                 aliased_angles.date.to_s)
  end

  it 'expected   3.8508003966 from aliased_angles.ma 'do
    assert_equal(3.8508003966, \
                 aliased_angles.ma.round(10))
  end

  it 'expected   2.4887103398 from \
      aliased_angles.apparent_longitude()? ' do
    assert_equal(2.4887103398, \
                 aliased_angles.apparent_longitude.round(10))
  end

  it 'expected   -0.794336157 from \
      aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal(-0.794336157, \
                 aliased_angles.cosine_apparent_longitude.round(10))
  end

  it 'expected   -0.794377276 from \
      aliased_angles.cosine_true_longitude()? ' do
    assert_equal(-0.794377276, \
                 aliased_angles.cosine_true_longitude.round(10))
  end

  it 'expected   0.9175115347 from \
      aliased_angles.cosine_true_obliquity()? ' do
    assert_equal(0.9175115347, \
                 aliased_angles.cosine_true_obliquity.round(10))
  end

  it 'expected   0.2440141022 from \
      aliased_angles.declination()? ' do
    assert_equal(0.2440141022, \
                 aliased_angles.declination.round(10))
  end

  it 'expected   -0.0410308256 from \
      aliased_angles.delta_t_ecliptic()? ' do
    assert_equal(-0.0410308256, \
                 aliased_angles.delta_t_ecliptic.round(10))
  end

  it 'expected   0.0214132497 from \
      aliased_angles.delta_t_elliptic()? ' do
    assert_equal(0.0214132497, \
                 aliased_angles.delta_t_elliptic.round(10))
  end

  it 'expected   0.0167024685 from \
      aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal(0.0167024685, \
                 aliased_angles.eccentricity_earth_orbit.round(10))
  end

  it 'expected   -0.0214132497 from \
      aliased_angles.equation_of_center()? ' do
    assert_equal(-0.0214132497, \
                 aliased_angles.equation_of_center.round(10))
  end

  it 'expected   2.5101912804 from \
      aliased_angles.geometric_mean_longitude()? ' do
    assert_equal(2.5101912804, \
                 aliased_angles.geometric_mean_longitude.round(10))
  end

  it 'expected   1.5857841878 from \
      aliased_angles.horizon_angle(1)? ' do
    assert_equal(1.5857841878, \
                 aliased_angles.horizon_angle(1).round(10))
  end

  it 'expected   3.8508003966 from \
      aliased_angles.mean_anomaly()? ' do
    assert_equal(3.8508003966, \
                 aliased_angles.mean_anomaly.round(10))
  end

  it 'expected   2.510089865 from \
      aliased_angles.mean_longitude_aries()? ' do
    assert_equal(2.510089865, \
                 aliased_angles.mean_longitude_aries.round(10))
  end

  it 'expected   0.4090594025 from \
      aliased_angles.mean_obliquity()? ' do
    assert_equal(0.4090594025, \
                 aliased_angles.mean_obliquity.round(10))
  end

  it 'expected   0.4090594025 from \
      aliased_angles.mean_obliquity_of_ecliptic()? ' do
    assert_equal(0.4090594025, \
                 aliased_angles.mean_obliquity_of_ecliptic.round(10))
  end

  it 'expected   0.4090187046 from \
      aliased_angles.obliquity_correction()? ' do
    assert_equal(0.4090187046, \
                 aliased_angles.obliquity_correction.round(10))
  end

  it 'expected   2.5297411654 from \
      aliased_angles.right_ascension()? ' do
    assert_equal(2.5297411654, \
                 aliased_angles.right_ascension.round(10))
  end

  it 'expected   0.607478452 from \
      aliased_angles.sine_apparent_longitude()? ' do
    assert_equal(0.607478452, \
                 aliased_angles.sine_apparent_longitude.round(10))
  end

  it 'expected   0.6074246813 from \
      aliased_angles.sine_true_longitude()? ' do
    assert_equal(0.6074246813, \
                 aliased_angles.sine_true_longitude.round(10))
  end

  it 'expected   3.8293871469 from \
      aliased_angles.true_anomaly()? ' do
    assert_equal(3.8293871469, \
                 aliased_angles.true_anomaly.round(10))
  end

  it 'expected   2.4887780307 from \
      aliased_angles.true_longitude()? ' do
    assert_equal(2.4887780307, \
                 aliased_angles.true_longitude.round(10))
  end

  it 'expected   2.5101242777 from \
      aliased_angles.true_longitude_aries()? ' do
    assert_equal(2.5101242777, \
                 aliased_angles.true_longitude_aries.round(10))
  end

  it 'expected   0.4090187046 from \
      aliased_angles.true_obliquity()? ' do
    assert_equal(0.4090187046, \
                 aliased_angles.true_obliquity.round(10))
  end
end

describe 'tests ajd of 2455055.5 ' do

  before(:each) do
    aliased_angles.ajd                   = 2_455_055.0
    ajd = aliased_angles.ajd
    aliased_angles.ma_ta_set
    # check date for this ajd when needed.
    aliased_angles.date = aliased_angles.ajd_to_datetime(ajd)
  end

  it 'expected   2_455_055.0, from aliased_angles.' do
    assert_equal(2_455_055.0, aliased_angles.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
      aliased_angles.date.to_s ' do
    assert_equal('2009-08-11T12:00:00+00:00', \
                 aliased_angles.date.to_s)
  end

  it 'expected   3.7871218189, from aliased_angles.ma ' do
    assert_equal(3.7871218189, \
                 aliased_angles.ma.round(10))
  end

  it 'expected   3.7871218189 from \
      aliased_angles.ma  from Eot_angles.mean_anomaly() ' do
    assert_equal(3.7871218189, \
                 aliased_angles.mean_anomaly.round(10))
  end

  it 'expected   2.4252140646 from \
      aliased_angles.apparent_longitude()? ' do
    assert_equal(2.4252140646, \
                 aliased_angles.apparent_longitude.round(10))
  end

  it 'expected   -0.754188697 from \
      aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal(-0.754188697, \
                 aliased_angles.cosine_apparent_longitude.round(10))
  end

  it 'expected   -0.754206077 from \
      aliased_angles.cosine_true_longitude()? ' do
    assert_equal(-0.754206077, \
                 aliased_angles.cosine_true_longitude.round(10))
  end

  it 'expected   0.9174818088 from \
      aliased_angles.cosine_true_obliquity()? ' do
    assert_equal(0.9174818088, \
                 aliased_angles.cosine_true_obliquity.round(10))
  end

  it 'expected   0.2642691272 from \
      aliased_angles.declination()? ' do
    assert_equal(0.2642691272, \
                 aliased_angles.declination.round(10))
  end

  it 'expected   -0.042349049 from \
      aliased_angles.delta_t_ecliptic()? ' do
    assert_equal(-0.042349049, \
                 aliased_angles.delta_t_ecliptic.round(10))
  end

  it 'expected   0.0197684135 from \
      aliased_angles.delta_t_elliptic()? ' do
    assert_equal(0.0197684135, \
                 aliased_angles.delta_t_elliptic.round(10))
  end

  it 'expected   0.0167045762 from \
      aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal(0.0167045762, \
                 aliased_angles.eccentricity_earth_orbit.round(10))
  end

  it 'expected   -0.0197684135 from \
      aliased_angles.equation_of_center()? ' do
    assert_equal(-0.0197684135, \
                 aliased_angles.equation_of_center.round(10))
  end

  it 'expected   2.4450089458 from \
      aliased_angles.geometric_mean_longitude()? ' do
    assert_equal(2.4450089458, \
                 aliased_angles.geometric_mean_longitude.round(10))
  end

  it 'expected   1.5858632618 from \
      aliased_angles.horizon_angle()? ' do
    assert_equal(1.5858632618, \
                 aliased_angles.horizon_angle(1).round(10))
  end

  it 'expected   3.7871218189 from \
      aliased_angles.mean_anomaly()? ' do
    assert_equal(3.7871218189, \
                 aliased_angles.mean_anomaly.round(10))
  end

  it 'expected   2.4449073823 from \
      aliased_angles.mean_longitude_aries()? ' do
    assert_equal(2.4449073823, \
                 aliased_angles.mean_longitude_aries.round(10))
  end

  it 'expected   0.4090707794 from \
      aliased_angles.mean_obliquity()? ' do
    assert_equal(0.4090707794, \
                 aliased_angles.mean_obliquity.round(10))
  end

  it 'expected   0.4090934409 from \
      aliased_angles.obliquity_correction()? ' do
    assert_equal(0.4090934409, \
                 aliased_angles.obliquity_correction.round(10))
  end

  it 'expected   2.4675631135 from \
      aliased_angles.right_ascension()? ' do
    assert_equal(2.4675631135, \
                 aliased_angles.right_ascension.round(10))
  end

  it 'expected   0.6566577566 from \
      aliased_angles.sine_apparent_longitude()? ' do
    assert_equal(0.6566577566, \
                 aliased_angles.sine_apparent_longitude.round(10))
  end

  it 'expected   0.6566377947 from \
      aliased_angles.sine_true_longitude()? ' do
    assert_equal(0.6566377947, \
                 aliased_angles.sine_true_longitude.round(10))
  end

  it 'expected   3.7673534054 from aliased_angles.true_anomaly()? ' do
    assert_equal(3.7673534054, \
                 aliased_angles.true_anomaly.round(10))
  end

  it 'expected   2.4252405323 from \
      aliased_angles.true_longitude()? ' do
    assert_equal(2.4252405323, \
                 aliased_angles.true_longitude.round(10))
  end

  it 'expected   2.4449774608 from \
      aliased_angles.true_longitude_aries()? ' do
    assert_equal(2.4449774608, \
                 aliased_angles.true_longitude_aries.round(10))
  end

  it 'expected   0.4090934409 from \
      aliased_angles.true_obliquity()? ' do
    assert_equal(0.4090934409, \
                 aliased_angles.true_obliquity.round(10))
  end

end
