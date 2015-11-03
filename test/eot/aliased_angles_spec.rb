# aliased_angles_spec.rb

require File.expand_path('../../test_helper', __FILE__)

aliased_angles = Eot.new

describe 'tests date of "2014-08-15" ' do

  before(:each) do
    aliased_angles.new_date("2014-08-15")
  end

  it 'expected   "2014-08-15" from \
      aliased_angles.date' do
    assert_equal('2014-08-15', \
                 aliased_angles.date)
  end

  it 'expected   2_456_884.5 for \
      aliased_angles.ajd 'do
    assert_equal(2_456_884.5, \
                 aliased_angles.ajd)
  end

  it 'expected   2_456_885.0 for \
      aliased_angles.jd 'do
    assert_equal(2_456_885.0, \
                 aliased_angles.jd)
  end

  it 'expected   0.1462012320328542 from \
      aliased_angles.ta' do
    assert_equal(0.1462012320328542, \
                 aliased_angles.ta)
  end

  it 'expected   0.1462012320328542 from \
      aliased_angles.t' do
    assert_equal(0.1462012320328542, \
                 aliased_angles.t)
  end

  it 'expected   3.8508003966038915 from \
      aliased_angles.ma' do
    assert_equal(3.8508003966038915, \
                 aliased_angles.ma)
  end

  it 'expected   2.4887103398436143 from \
      aliased_angles.apparent_longitude()' do
    assert_equal(2.4887103398436143, \
                 aliased_angles.apparent_longitude)
  end

  it 'expected   -0.7943361570447028 from \
      aliased_angles.cosine_apparent_longitude()' do
    assert_equal(-0.7943361570447028, \
                 aliased_angles.cosine_apparent_longitude)
  end

  it 'expected   -0.7943772759574919 from \
      aliased_angles.cosine_true_longitude()' do
    assert_equal(-0.7943772759574919, \
                 aliased_angles.cosine_true_longitude)
  end

  it 'expected   0.9175115167182523 from \
      aliased_angles.cosine_true_obliquity()' do
    assert_equal(0.9175115167182523, \
                 aliased_angles.cosine_true_obliquity)
  end

  it 'expected   0.24401412812807313 from \
      aliased_angles.declination()' do
    assert_equal(0.24401412812807313, \
                 aliased_angles.declination)
  end

  it 'expected   -0.04103083479322045 from \
      aliased_angles.delta_t_ecliptic()' do
    assert_equal(-0.04103083479322045, \
                 aliased_angles.delta_t_ecliptic)
  end

  it 'expected   0.021413249720702462 from \
      aliased_angles.delta_t_elliptic()' do
    assert_equal(0.021413249720702462, \
                 aliased_angles.delta_t_elliptic)
  end

  it 'expected   0.016702468499021204 from \
      aliased_angles.eccentricity_earth_orbit()' do
    assert_equal(0.016702468499021204, \
                 aliased_angles.eccentricity_earth_orbit)
  end

  it 'expected   -0.021413249720702462 from \
      aliased_angles.equation_of_center()' do
    assert_equal(-0.021413249720702462, \
                 aliased_angles.equation_of_center)
  end

  it 'expected   2.5101912804141424 from \
      aliased_angles.geometric_mean_longitude()' do
    assert_equal(2.5101912804141424, \
                 aliased_angles.geometric_mean_longitude)
  end

  it 'expected   1.5857841878907755 from \
      aliased_angles.horizon_angle(1)' do
    assert_equal(1.5857841878907755, \
                 aliased_angles.horizon_angle(1))
  end

  it 'expected   3.842199411602012 from \
      aliased_angles.mean_anomaly()' do
    assert_equal(3.842199411602012, \
                 aliased_angles.mean_anomaly)
  end

  it 'expected   5.643081122658806 from \
      aliased_angles.mean_longitude_aries()' do
    assert_equal(5.643081122658806, \
                 aliased_angles.mean_longitude_aries)
  end

  it 'expected   0.40905940565108695 from \
      aliased_angles.mean_obliquity()' do
    assert_equal(0.40905940565108695, \
                 aliased_angles.mean_obliquity)
  end

  it 'expected   0.40905940565108695 from \
      aliased_angles.mean_obliquity_of_ecliptic()' do
    assert_equal(0.40905940565108695, \
                 aliased_angles.mean_obliquity_of_ecliptic)
  end

  it 'expected   0.4090187497814907 from \
      aliased_angles.obliquity_correction()' do
    assert_equal(0.4090187497814907, \
                 aliased_angles.obliquity_correction)
  end

  it 'expected   2.529741174636835 from \
      aliased_angles.right_ascension()' do
    assert_equal(2.529741174636835, \
                 aliased_angles.right_ascension)
  end

  it 'expected   0.6074784519729512 from \
      aliased_angles.sine_apparent_longitude()' do
    assert_equal(0.6074784519729512, \
                 aliased_angles.sine_apparent_longitude)
  end

  it 'expected   0.6074246812917259 from \
      aliased_angles.sine_true_longitude()' do
    assert_equal(0.6074246812917259, \
                 aliased_angles.sine_true_longitude)
  end

  it 'expected   3.8293871468831893 from \
      aliased_angles.true_anomaly()' do
    assert_equal(3.8293871468831893, \
                 aliased_angles.true_anomaly)
  end

  it 'expected   2.48877803069344 from \
      aliased_angles.true_longitude()' do
    assert_equal(2.48877803069344, \
                 aliased_angles.true_longitude)
  end

  it 'expected   5.64311570907547 from \
      aliased_angles.true_longitude_aries()' do
    assert_equal(5.64311570907547, \
                 aliased_angles.true_longitude_aries)
  end

  it 'expected   0.4090187497814907 from \
      aliased_angles.true_obliquity()' do
    assert_equal(0.4090187497814907, \
                 aliased_angles.true_obliquity)
  end
end

describe 'tests date of "2009-08-11" ' do

  before(:each) do
    aliased_angles.new_date("2009-08-11")  
  end

  it 'expected   "2009-08-11" from \
      aliased_angles.date.to_s' do
    assert_equal('2009-08-11', \
                 aliased_angles.date.to_s)
  end

  it 'expected   2_455_054.5, from \
      aliased_angles.a' do
    assert_equal(2_455_054.5, \
                 aliased_angles.ajd)
  end

  it 'expected   2_455_055.0, from \
      aliased_angles.jd' do
    assert_equal(2_455_055.0, \
                 aliased_angles.jd)
  end

  it 'expected   0.09609856262833676, \
      from aliased_angles.ta' do
    assert_equal(0.09609856262833676, \
                 aliased_angles.ta)
  end

  it 'expected   0.09609856262833676, \
      from aliased_angles.t' do
    assert_equal(0.09609856262833676, \
                 aliased_angles.t)
  end

  it 'expected   3.7871218188949207, \
      from aliased_angles.ma' do
    assert_equal(3.7871218188949207, \
                 aliased_angles.ma)
  end

  it 'expected   3.7785208338893628 from \
      aliased_angles.ma' do
    assert_equal(3.7785208338893628, \
                 aliased_angles.mean_anomaly)
  end

  it 'expected   2.4252140645725033 from \
      aliased_angles.apparent_longitude()' do
    assert_equal(2.4252140645725033, \
                 aliased_angles.apparent_longitude)
  end

  it 'expected   -0.7541886969975007 from \
      aliased_angles.cosine_apparent_longitude()' do
    assert_equal(-0.7541886969975007, \
                 aliased_angles.cosine_apparent_longitude)
  end

  it 'expected   -0.7542060769936684 from \
      aliased_angles.cosine_true_longitude()' do
    assert_equal(-0.7542060769936684, \
                 aliased_angles.cosine_true_longitude)
  end

  it 'expected   0.9174817861104532 from \
      aliased_angles.cosine_true_obliquity()' do
    assert_equal(0.9174817861104532, \
                 aliased_angles.cosine_true_obliquity)
  end

  it 'expected   0.26426916284845214 from \
      aliased_angles.declination()' do
    assert_equal(0.26426916284845214, \
                 aliased_angles.declination)
  end

  it 'expected   -0.04234906104039293 from \
      aliased_angles.delta_t_ecliptic()' do
    assert_equal(-0.04234906104039293, \
                 aliased_angles.delta_t_ecliptic)
  end

  it 'expected   0.019768413456709915  from \
      aliased_angles.delta_t_elliptic()' do
    assert_equal(0.019768413456709915, \
                 aliased_angles.delta_t_elliptic)
  end

  it 'expected   0.016704576164208475 from \
      aliased_angles.eccentricity_earth_orbit()' do
    assert_equal(0.016704576164208475, \
                 aliased_angles.eccentricity_earth_orbit)
  end

  it 'expected   -0.019768413456709915 from \
      aliased_angles.equation_of_center()' do
    assert_equal(-0.019768413456709915, \
                 aliased_angles.equation_of_center)
  end

  it 'expected   2.445008945789877 from \
      aliased_angles.geometric_mean_longitude()' do
    assert_equal(2.445008945789877, \
                 aliased_angles.geometric_mean_longitude)
  end

  it 'expected   1.5858632618985065 from \
      aliased_angles.horizon_angle()' do
    assert_equal(1.5858632618985065, \
                 aliased_angles.horizon_angle(1))
  end

  it 'expected   3.7785208338893628 from \
      aliased_angles.mean_anomaly()' do
    assert_equal(3.7785208338893628, \
                 aliased_angles.mean_anomaly)
  end

  it 'expected   5.577898639948448 from \
      aliased_angles.mean_longitude_aries()' do
    assert_equal(5.577898639948448, \
                 aliased_angles.mean_longitude_aries)
  end

  it 'expected   0.40907078250658124 from \
      aliased_angles.mean_obliquity()' do
    assert_equal(0.40907078250658124, \
                 aliased_angles.mean_obliquity)
  end

  it 'expected   0.4090934979738523 from \
      aliased_angles.obliquity_correction()' do
    assert_equal(0.4090934979738523, \
                 aliased_angles.obliquity_correction)
  end

  it 'expected   2.4675631256128963 from \
      aliased_angles.right_ascension()' do
    assert_equal(2.4675631256128963, \
                 aliased_angles.right_ascension)
  end

  it 'expected   0.6566577566139093 from \
      aliased_angles.sine_apparent_longitude()' do
    assert_equal(0.6566577566139093, \
                 aliased_angles.sine_apparent_longitude)
  end

  it 'expected   0.6566377946979757 from \
      aliased_angles.sine_true_longitude()' do
    assert_equal(0.6566377946979757, \
                 aliased_angles.sine_true_longitude)
  end

  it 'expected   3.767353405438211 from \
      aliased_angles.true_anomaly()' do
    assert_equal(3.767353405438211, \
                 aliased_angles.true_anomaly)
  end

  it 'expected   2.4252405323331674 from \
      aliased_angles.true_longitude()' do
    assert_equal(2.4252405323331674, \
                 aliased_angles.true_longitude)
  end

  it 'expected   5.577968910556418 from \
      aliased_angles.true_longitude_aries()' do
    assert_equal(5.577968910556418, \
                 aliased_angles.true_longitude_aries)
  end

  it 'expected   0.4090934979738523 from \
      aliased_angles.true_obliquity()' do
    assert_equal(0.4090934979738523, \
                 aliased_angles.true_obliquity)
  end

end
