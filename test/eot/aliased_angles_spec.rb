
# aliased_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_angles = Eot.new

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    aliased_angles.jd = 2_456_885.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.jd \
                 2_456_885.0 ' do
    assert_equal(2_456_885.0,
                 aliased_angles.jd)
  end

  it 'expected from aliased_angles.date.to_s \
                 "2014-08-15T12:00:00+00:00" ' do
    assert_equal('2014-08-15T12:00:00+00:00',
                 aliased_angles.date_dt.to_s)
  end

  it 'expected from aliased_angles.ma \
                 3.850800396604 ' do
    assert_equal(3.850800396604,
                 aliased_angles.ma)
  end

  it 'expected from aliased_angles.apparent_longitude \
                 2.488710339844 ' do
    assert_equal(2.488710339844,
                 aliased_angles.apparent_longitude)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    aliased_angles.jd = 2_456_885.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.declination \
                 0.244014102186 ' do
    assert_equal(0.244014102186,
                 aliased_angles.declination)
  end

  it 'expected from aliased_angles.eccentricity_earth_orbit \
                 0.016702468499 ' do
    assert_equal(0.016702468499,
                 aliased_angles.eccentricity_earth_orbit)
  end

  it 'expected from aliased_angles.equation_of_center \
                 -0.021413249721 ' do
    assert_equal(-0.021413249721,
                 aliased_angles.equation_of_center)
  end

  it 'expected from aliased_angles.geometric_mean_longitude \
                 2.510191280414 ' do
    assert_equal(2.510191280414,
                 aliased_angles.geometric_mean_longitude)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    aliased_angles.jd = 2_456_885.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.horizon_angle(1) \
                 1.585784187794 ' do
    assert_equal(1.585784187794,
                 aliased_angles.horizon_angle(1))
  end

  it 'expected from aliased_angles.mean_anomaly \
                 3.850800396604 ' do
    assert_equal(3.850800396604,
                 aliased_angles.mean_anomaly)
  end

  it 'expected from aliased_angles.mean_longitude_aries \
                 2.510089864987 ' do
    assert_equal(2.510089864987,
                 aliased_angles.mean_longitude_aries)
  end

  it 'expected from aliased_angles.mean_obliquity \
                 0.409059402543 ' do
    assert_equal(0.409059402543,
                 aliased_angles.mean_obliquity)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    aliased_angles.jd = 2_456_885.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.mean_obliquity_of_ecliptic \
                 0.409059402543 ' do
    assert_equal(0.409059402543,
                 aliased_angles.mean_obliquity_of_ecliptic)
  end

  it 'expected from aliased_angles.obliquity_correction \
                 0.409018704616 ' do
    assert_equal(0.409018704616,
                 aliased_angles.obliquity_correction)
  end

  it 'expected from aliased_angles.right_ascension \
                 2.529741165432 ' do
    assert_equal(2.529741165432,
                 aliased_angles.right_ascension)
  end

  it 'expected from aliased_angles.sine_apparent_longitude \
                 0.607478451973 ' do
    assert_equal(0.607478451973,
                 aliased_angles.sine_apparent_longitude)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    aliased_angles.jd = 2_456_885.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.true_anomaly \
                 3.829387146883 ' do
    assert_equal(3.829387146883,
                 aliased_angles.true_anomaly)
  end

  it 'expected from aliased_angles.true_longitude \
                 2.488778030693 ' do
    assert_equal(2.488778030693,
                 aliased_angles.true_longitude)
  end

  it 'expected from aliased_angles.true_longitude_aries \
                 2.510124277657 ' do
    assert_equal(2.510124277657,
                 aliased_angles.true_longitude_aries)
  end

  it 'expected from aliased_angles.true_obliquity \
                 0.409018704616 ' do
    assert_equal(0.409018704616,
                 aliased_angles.true_obliquity)
  end
end

describe 'tests jd of 2_455_055.5 ' do
  before(:each) do
    aliased_angles.jd = 2_455_055.0
    aliased_angles.set_t
  end

  it 'expected from from aliased_angles.jd \
                 2_455_055.0 ' do
    assert_equal(2_455_055.0,
                 aliased_angles.jd)
  end

  it 'expected from from aliased_angles.date.to_s \
                 "2009-08-11T12:00:00+00:00"' do
    assert_equal('2009-08-11T12:00:00+00:00',
                 aliased_angles.date_dt.to_s)
  end

  it 'expected from from aliased_angles.ma
                 3.787121818895 ' do
    assert_equal(3.787121818895,
                 aliased_angles.ma)
  end

  it 'expected from from aliased_angles.ma \
                 3.787121818895 ' do
    assert_equal(3.787121818895,
                 aliased_angles.mean_anomaly)
  end
end

describe 'tests jd of 2_455_055.5 ' do
  before(:each) do
    aliased_angles.jd = 2_455_055.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.apparent_longitude \
                 2.425214064573' do
    assert_equal(2.425214064573,
                 aliased_angles.apparent_longitude)
  end

  it 'expected from aliased_angles.cosine_apparent_longitude \
                 -0.754188696998 ' do
    assert_equal(-0.754188696998,
                 aliased_angles.cosine_apparent_longitude)
  end

  it 'expected from aliased_angles.cosine_true_obliquity \
                 0.917481808811 ' do
    assert_equal(0.917481808811,
                 aliased_angles.cosine_true_obliquity)
  end

  it 'expected from aliased_angles.declination \
                 0.26426912723 ' do
    assert_equal(0.26426912723,
                 aliased_angles.declination)
  end
end

describe 'tests jd of 2_455_055.5 ' do
  before(:each) do
    aliased_angles.jd = 2_455_055.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.eccentricity_earth_orbit \
                 0.016704576164 ' do
    assert_equal(0.016704576164,
                 aliased_angles.eccentricity_earth_orbit)
  end

  it 'expected from aliased_angles.equation_of_center \
                 -0.019768413457 ' do
    assert_equal(-0.019768413457,
                 aliased_angles.equation_of_center)
  end

  it 'expected from aliased_angles.geometric_mean_longitude \
                 2.44500894579 ' do
    assert_equal(2.44500894579,
                 aliased_angles.geometric_mean_longitude)
  end

  it 'expected from aliased_angles.horizon_angle(1) \
                 1.585863261753 ' do
    assert_equal(1.585863261753,
                 aliased_angles.horizon_angle(1))
  end
end

describe 'tests jd of 2_455_055.5 ' do
  before(:each) do
    aliased_angles.jd = 2_455_055.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.mean_anomaly \
                 3.787121818895 ' do
    assert_equal(3.787121818895,
                 aliased_angles.mean_anomaly)
  end

  it 'expected from aliased_angles.mean_longitude_aries \
                 2.444907382268 ' do
    assert_equal(2.444907382268,
                 aliased_angles.mean_longitude_aries)
  end

  it 'expected from aliased_angles.mean_obliquity \
                 0.409070779398 ' do
    assert_equal(0.409070779398,
                 aliased_angles.mean_obliquity)
  end

  it 'expected from aliased_angles.obliquity_correction \
                 0.409093440905 ' do
    assert_equal(0.409093440905,
                 aliased_angles.obliquity_correction)
  end
end

describe 'tests jd of 2_455_055.5 ' do
  before(:each) do
    aliased_angles.jd = 2_455_055.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.right_ascension \
                 2.467563113547 ' do
    assert_equal(2.467563113547,
                 aliased_angles.right_ascension)
  end

  it 'expected from aliased_angles.sine_apparent_longitude \
                 0.656657756614 ' do
    assert_equal(0.656657756614,
                 aliased_angles.sine_apparent_longitude)
  end

  it 'expected from aliased_angles.true_anomaly \
                 3.767353405438 ' do
    assert_equal(3.767353405438,
                 aliased_angles.true_anomaly)
  end

  it 'expected from aliased_angles.true_longitude \
                 2.425240532333 ' do
    assert_equal(2.425240532333,
                 aliased_angles.true_longitude)
  end
end

describe 'tests jd of 2_455_055.5 ' do
  before(:each) do
    aliased_angles.jd = 2_455_055.0
    aliased_angles.set_t
  end

  it 'expected from aliased_angles.true_longitude_aries \
                 2.44497746079 ' do
    assert_equal(2.44497746079,
                 aliased_angles.true_longitude_aries)
  end

  it 'expected from aliased_angles.true_obliquity \
                 0.409093440905 ' do
    assert_equal(0.409093440905,
                 aliased_angles.true_obliquity)
  end
end
