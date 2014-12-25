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

  it 'expected   3.8508003966038915 from aliased_angles.ma 'do
    assert_equal(3.8508003966039, aliased_angles.ma.round(13))
  end

  it 'expected   2.4887103398436143 from \
      aliased_angles.apparent_longitude()? ' do
    assert_equal(2.4887103398436, \
                 aliased_angles.apparent_longitude.round(13))
  end

  it 'expected   -0.7943361570447028 from \
      aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal(-0.7943361570447, \
                 aliased_angles.cosine_apparent_longitude.round(13))
  end

  it 'expected   -0.7943772759574919 from \
      aliased_angles.cosine_true_longitude()? ' do
    assert_equal(-0.7943772759575, \
                 aliased_angles.cosine_true_longitude.round(13))
  end

  it 'expected   0.9175115346811911 from \
      aliased_angles.cosine_true_obliquity()? ' do
    assert_equal(0.9175115346812, \
                 aliased_angles.cosine_true_obliquity.round(13))
  end

  it 'expected   0.24401410218543554 from \
      aliased_angles.declination()? ' do
    assert_equal(0.2440141021854, \
                 aliased_angles.declination.round(13))
  end

  it 'expected   -0.04103082558803539 from \
      aliased_angles.delta_t_ecliptic()? ' do
    assert_equal(-0.041030825588, \
                 aliased_angles.delta_t_ecliptic.round(13))
  end

  it 'expected   0.021413249720702462 from \
      aliased_angles.delta_t_elliptic()? ' do
    assert_equal(0.0214132497207, \
                 aliased_angles.delta_t_elliptic.round(13))
  end

  it 'expected   0.016702468499021204 from \
      aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal(0.016702468499, \
                 aliased_angles.eccentricity_earth_orbit.round(13))
  end

  it 'expected   -0.021413249720702462 from \
      aliased_angles.equation_of_center()? ' do
    assert_equal(-0.0214132497207, \
                 aliased_angles.equation_of_center.round(13))
  end

  it 'expected   2.5101912804141424 from \
      aliased_angles.geometric_mean_longitude()? ' do
    assert_equal(2.510191280414, \
                 aliased_angles.geometric_mean_longitude.round(12))
  end

  it 'expected   1.5857841877939605 from \
      aliased_angles.horizon_angle(1)? ' do
    assert_equal(1.585784187794, \
                 aliased_angles.horizon_angle(1).round(13))
  end

  it 'expected   3.8508003966038915 from \
      aliased_angles.mean_anomaly()? ' do
    assert_equal(3.8508003966039, \
                 aliased_angles.mean_anomaly.round(13))
  end

  it 'expected   2.510089864980358 from \
      aliased_angles.mean_longitude_aries()? ' do
    assert_equal(2.5100898649804, \
                 aliased_angles.mean_longitude_aries.round(13))
  end

  it 'expected   0.40905940254265843 from \
      aliased_angles.mean_obliquity()? ' do
    assert_equal(0.4090594025427, \
                 aliased_angles.mean_obliquity.round(13))
  end

  it 'expected   0.40905940254265843 from \
      aliased_angles.mean_obliquity_of_ecliptic()? ' do
    assert_equal(0.4090594025427, \
                 aliased_angles.mean_obliquity_of_ecliptic.round(13))
  end

  it 'expected   0.40901870461547685 from \
      aliased_angles.obliquity_correction()? ' do
    assert_equal(0.4090187046155, \
                 aliased_angles.obliquity_correction.round(13))
  end

  it 'expected   2.5297411654316497 from \
      aliased_angles.right_ascension()? ' do
    assert_equal(2.529741165432, \
                 aliased_angles.right_ascension.round(12))
  end

  it 'expected   0.6074784519729512 from \
      aliased_angles.sine_apparent_longitude()? ' do
    assert_equal(0.607478451973, \
                 aliased_angles.sine_apparent_longitude.round(12))
  end

  it 'expected   0.6074246812917259 from \
      aliased_angles.sine_true_longitude()? ' do
    assert_equal(0.6074246812917, \
                 aliased_angles.sine_true_longitude.round(13))
  end

  it 'expected   3.8293871468831893 from \
      aliased_angles.true_anomaly()? ' do
    assert_equal(3.8293871468832, \
                 aliased_angles.true_anomaly.round(13))
  end

  it 'expected   2.48877803069344 from \
      aliased_angles.true_longitude()? ' do
    assert_equal(2.4887780306934, \
                 aliased_angles.true_longitude.round(13))
  end

  it 'expected   2.5101242776531474 from \
      aliased_angles.true_longitude_aries()? ' do
    assert_equal(2.5101242776531, \
                 aliased_angles.true_longitude_aries.round(13))
  end

  it 'expected   0.40901870461547685 from \
      aliased_angles.true_obliquity()? ' do
    assert_equal(0.4090187046155, \
                 aliased_angles.true_obliquity.round(13))
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

  it 'expected   3.7871218188949207 from \
      aliased_angles.ma ' do
    assert_equal(3.7871218188949, \
                 aliased_angles.ma.round(13))
  end

  it 'expected   3.7871218188949207 from \
      aliased_angles.ma  from Eot_angles.mean_anomaly() ' do
    assert_equal(3.7871218188949, \
                 aliased_angles.mean_anomaly.round(13))
  end

  it 'expected   2.4252140645725033 from \
      aliased_angles.apparent_longitude()? ' do
    assert_equal(2.4252140645725, \
                 aliased_angles.apparent_longitude.round(13))
  end

  it 'expected   -0.7541886969975007 from \
      aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal(-0.7541886969975, \
                 aliased_angles.cosine_apparent_longitude.round(13))
  end

  it 'expected   -0.7542060769936684 from \
      aliased_angles.cosine_true_longitude()? ' do
    assert_equal(-0.7542060769937, \
                 aliased_angles.cosine_true_longitude.round(13))
  end

  it 'expected   0.9174818088112336 from \
      aliased_angles.cosine_true_obliquity()? ' do
    assert_equal(0.9174818088112, \
                 aliased_angles.cosine_true_obliquity.round(13))
  end

  it 'expected   0.2642691272294404 from \
      aliased_angles.declination()? ' do
    assert_equal(0.2642691272294, \
                 aliased_angles.declination.round(13))
  end

  it 'expected   -0.04234904897476355 from \
      aliased_angles.delta_t_ecliptic()? ' do
    assert_equal(-0.0423490489748, \
                 aliased_angles.delta_t_ecliptic.round(13))
  end

  it 'expected    0.019768413456709915 from \
      aliased_angles.delta_t_elliptic()? ' do
    assert_equal(0.0197684134567, \
                 aliased_angles.delta_t_elliptic.round(13))
  end

  it 'expected   0.016704576164208475 from \
      aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal(0.0167045761642, \
                 aliased_angles.eccentricity_earth_orbit.round(13))
  end

  it 'expected   -0.019768413456709915 from \
      aliased_angles.equation_of_center()? ' do
    assert_equal(-0.0197684134567, \
                 aliased_angles.equation_of_center.round(13))
  end

  it 'expected   2.445008945789877 from \
      aliased_angles.geometric_mean_longitude()? ' do
    assert_equal(2.4450089457899, \
                 aliased_angles.geometric_mean_longitude.round(13))
  end

  it 'expected   1.585863261753274 from \
      aliased_angles.horizon_angle()? ' do
    assert_equal(1.5858632617533, \
                 aliased_angles.horizon_angle(1).round(13))
  end

  it 'expected   3.7871218188949207 from \
      aliased_angles.mean_anomaly()? ' do
    assert_equal(3.7871218188949, \
                 aliased_angles.mean_anomaly.round(13))
  end

  it 'expected   2.444907382260759 from \
      aliased_angles.mean_longitude_aries()? ' do
    assert_equal(2.4449073822608, \
                 aliased_angles.mean_longitude_aries.round(13))
  end

  it 'expected   0.4090707793981491 from \
      aliased_angles.mean_obliquity()? ' do
    assert_equal(0.4090707793981, \
                 aliased_angles.mean_obliquity.round(13))
  end

  it 'expected   0.4090934409048494 from \
      aliased_angles.obliquity_correction()? ' do
    assert_equal(0.4090934409048, \
                 aliased_angles.obliquity_correction.round(13))
  end

  it 'expected   2.467563113547267 from \
      aliased_angles.right_ascension()? ' do
    assert_equal(2.4675631135473, \
                 aliased_angles.right_ascension.round(13))
  end

  it 'expected   0.6566577566139093 from \
      aliased_angles.sine_apparent_longitude()? ' do
    assert_equal(0.6566577566139, \
                 aliased_angles.sine_apparent_longitude.round(13))
  end

  it 'expected   0.6566377946979757 from \
      aliased_angles.sine_true_longitude()? ' do
    assert_equal(0.656637794698, \
                 aliased_angles.sine_true_longitude.round(13))
  end

  it 'expected   3.767353405438211 from \
      aliased_angles.true_anomaly()? ' do
    assert_equal(3.7673534054382, \
                 aliased_angles.true_anomaly.round(13))
  end

  it 'expected   2.4252405323331674 from \
      aliased_angles.true_longitude()? ' do
    assert_equal(2.4252405323332, \
                 aliased_angles.true_longitude.round(13))
  end

  it 'expected   2.4449774607872907 from \
      aliased_angles.true_longitude_aries()? ' do
    assert_equal(2.4449774607873, \
                 aliased_angles.true_longitude_aries.round(13))
  end

  it 'expected   0.4090934409048494 from \
      aliased_angles.true_obliquity()? ' do
    assert_equal(0.4090934409048, \
                 aliased_angles.true_obliquity.round(13))
  end

end
