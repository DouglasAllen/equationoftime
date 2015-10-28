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

  it 'expected   3.8508003966038906 from \
      aliased_angles.ta' do
    assert_equal(3.8508003966038906, \
                 aliased_angles.ta)
  end

  it 'expected   3.8508003966038906 from \
      aliased_angles.t' do
    assert_equal(3.8508003966038906, \
                 aliased_angles.t)
  end

  it 'expected   3.8508003966038906 from \
      aliased_angles.ma' do
    assert_equal(3.8508003966038906, \
                 aliased_angles.ma)
  end

  it 'expected   2.488710297253844 from \
      aliased_angles.apparent_longitude()' do
    assert_equal(2.488710297253844, \
                 aliased_angles.apparent_longitude)
  end

  it 'expected   -0.7943361311723343 from \
      aliased_angles.cosine_apparent_longitude()' do
    assert_equal(-0.7943361311723343, \
                 aliased_angles.cosine_apparent_longitude)
  end

  it 'expected   -0.7943772500874134 from \
      aliased_angles.cosine_true_longitude()' do
    assert_equal(-0.7943772500874134, \
                 aliased_angles.cosine_true_longitude)
  end

  it 'expected   0.9175112790214804 from \
      aliased_angles.cosine_true_obliquity()' do
    assert_equal(0.9175112790214804, \
                 aliased_angles.cosine_true_obliquity)
  end

  it 'expected   0.24401448528240358 from \
      aliased_angles.declination()' do
    assert_equal(0.24401448528240358, \
                 aliased_angles.declination)
  end

  it 'expected   -0.04103095769281939 from \
      aliased_angles.delta_t_ecliptic()' do
    assert_equal(-0.04103095769281939, \
                 aliased_angles.delta_t_ecliptic)
  end

  it 'expected   0.021413292823979115 from \
      aliased_angles.delta_t_elliptic()' do
    assert_equal(0.021413292823979115, \
                 aliased_angles.delta_t_elliptic)
  end

  it 'expected   3.8508003966038906 from \
      aliased_angles.eccentricity_earth_orbit()' do
    assert_equal(3.8508003966038906, \
                 aliased_angles.eccentricity_earth_orbit)
  end

  it 'expected   -0.021413292823979115 from \
      aliased_angles.equation_of_center()' do
    assert_equal(-0.021413292823979115, \
                 aliased_angles.equation_of_center)
  end

  it 'expected   2.510191280927649 from \
      aliased_angles.geometric_mean_longitude()' do
    assert_equal(2.510191280927649, \
                 aliased_angles.geometric_mean_longitude)
  end

  it 'expected   1.585784189223637 from \
      aliased_angles.horizon_angle(1)' do
    assert_equal(1.585784189223637, \
                 aliased_angles.horizon_angle(1))
  end

  it 'expected   3.8508003966038906 from \
      aliased_angles.mean_anomaly()' do
    assert_equal(3.8508003966038906, \
                 aliased_angles.mean_anomaly)
  end

  it 'expected   nil from \
      aliased_angles.mean_longitude_aries()' do
    assert_equal(nil, \
                 aliased_angles.mean_longitude_aries)
  end

  it 'expected   0.40905940254265843 from \
      aliased_angles.mean_obliquity()' do
    assert_equal(0.40905940254265843, \
                 aliased_angles.mean_obliquity)
  end

  it 'expected   0.40905940254265843 from \
      aliased_angles.mean_obliquity_of_ecliptic()' do
    assert_equal(0.40905940254265843, \
                 aliased_angles.mean_obliquity_of_ecliptic)
  end

  it 'expected   0.40901934744581736 from \
      aliased_angles.obliquity_correction()' do
    assert_equal(0.40901934744581736, \
                 aliased_angles.obliquity_correction)
  end

  it 'expected   2.5297412549466634 from \
      aliased_angles.right_ascension()' do
    assert_equal(2.5297412549466634, \
                 aliased_angles.right_ascension)
  end

  it 'expected   0.6074784858035452 from \
      aliased_angles.sine_apparent_longitude()' do
    assert_equal(0.6074784858035452, \
                 aliased_angles.sine_apparent_longitude)
  end

  it 'expected   0.6074247151240711 from \
      aliased_angles.sine_true_longitude()' do
    assert_equal(0.6074247151240711, \
                 aliased_angles.sine_true_longitude)
  end

  it 'expected   3.8293871037799114 from \
      aliased_angles.true_anomaly()' do
    assert_equal(3.8293871037799114, \
                 aliased_angles.true_anomaly)
  end

  it 'expected   2.48877798810367 from \
      aliased_angles.true_longitude()' do
    assert_equal(2.48877798810367, \
                 aliased_angles.true_longitude)
  end

  it 'expected   nil from \
      aliased_angles.true_longitude_aries()' do
    assert_equal(nil, \
                 aliased_angles.true_longitude_aries)
  end

  it 'expected   0.40901934744581736 from \
      aliased_angles.true_obliquity()' do
    assert_equal(0.40901934744581736, \
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

  it 'expected   3.7871218188949243, \
      from aliased_angles.ta' do
    assert_equal(3.7871218188949243, \
                 aliased_angles.ta)
  end

  it 'expected   3.7871218188949243, \
      from aliased_angles.t' do
    assert_equal(3.7871218188949243, \
                 aliased_angles.t)
  end

  it 'expected   3.7871218188949243, \
      from aliased_angles.ma' do
    assert_equal(3.7871218188949243, \
                 aliased_angles.ma)
  end

  it 'expected   3.7871218188949243 from \
      aliased_angles.ma' do
    assert_equal(3.7871218188949243, \
                 aliased_angles.mean_anomaly)
  end

  it 'expected   2.425214006790941 from \
      aliased_angles.apparent_longitude()' do
    assert_equal(2.425214006790941, \
                 aliased_angles.apparent_longitude)
  end

  it 'expected   -0.7541886590547884 from \
      aliased_angles.cosine_apparent_longitude()' do
    assert_equal(-0.7541886590547884, \
                 aliased_angles.cosine_apparent_longitude)
  end

  it 'expected   -0.7542060390521095 from \
      aliased_angles.cosine_true_longitude()' do
    assert_equal(-0.7542060390521095, \
                 aliased_angles.cosine_true_longitude)
  end

  it 'expected   0.9174824294111086 from \
      aliased_angles.cosine_true_obliquity()' do
    assert_equal(0.9174824294111086, \
                 aliased_angles.cosine_true_obliquity)
  end

  it 'expected   0.2642681714233576 from \
      aliased_angles.declination()' do
    assert_equal(0.2642681714233576, \
                 aliased_angles.declination)
  end

  it 'expected   -0.04234872000772105 from \
      aliased_angles.delta_t_ecliptic()' do
    assert_equal(-0.04234872000772105, \
                 aliased_angles.delta_t_ecliptic)
  end

  it 'expected   0.019768471429841467  from \
      aliased_angles.delta_t_elliptic()' do
    assert_equal(0.019768471429841467, \
                 aliased_angles.delta_t_elliptic)
  end

  it 'expected   3.7871218188949243 from \
      aliased_angles.eccentricity_earth_orbit()' do
    assert_equal(3.7871218188949243, \
                 aliased_angles.eccentricity_earth_orbit)
  end

  it 'expected   -0.019768471429841467 from \
      aliased_angles.equation_of_center()' do
    assert_equal(-0.019768471429841467, \
                 aliased_angles.equation_of_center)
  end

  it 'expected   2.4450089459814466 from \
      aliased_angles.geometric_mean_longitude()' do
    assert_equal(2.4450089459814466, \
                 aliased_angles.geometric_mean_longitude)
  end

  it 'expected   1.5858632578560867 from \
      aliased_angles.horizon_angle()' do
    assert_equal(1.5858632578560867, \
                 aliased_angles.horizon_angle(1))
  end

  it 'expected   3.7871218188949243 from \
      aliased_angles.mean_anomaly()' do
    assert_equal(3.7871218188949243, \
                 aliased_angles.mean_anomaly)
  end

  it 'expected   nil from \
      aliased_angles.mean_longitude_aries()' do
    assert_equal(nil, \
                 aliased_angles.mean_longitude_aries)
  end

  it 'expected   0.4090707793981492 from \
      aliased_angles.mean_obliquity()' do
    assert_equal(0.4090707793981492, \
                 aliased_angles.mean_obliquity)
  end

  it 'expected   0.4090918807346111 from \
      aliased_angles.obliquity_correction()' do
    assert_equal(0.4090918807346111, \
                 aliased_angles.obliquity_correction)
  end

  it 'expected   2.467562726798662 from \
      aliased_angles.right_ascension()' do
    assert_equal(2.467562726798662, \
                 aliased_angles.right_ascension)
  end

  it 'expected   0.6566578001921093 from \
      aliased_angles.sine_apparent_longitude()' do
    assert_equal(0.6566578001921093, \
                 aliased_angles.sine_apparent_longitude)
  end

  it 'expected   0.6566378382771799 from \
      aliased_angles.sine_true_longitude()' do
    assert_equal(0.6566378382771799, \
                 aliased_angles.sine_true_longitude)
  end

  it 'expected   3.767353347465083 from \
      aliased_angles.true_anomaly()' do
    assert_equal(3.767353347465083, \
                 aliased_angles.true_anomaly)
  end

  it 'expected   2.425240474551605 from \
      aliased_angles.true_longitude()' do
    assert_equal(2.425240474551605, \
                 aliased_angles.true_longitude)
  end

  it 'expected   nil from \
      aliased_angles.true_longitude_aries()' do
    assert_equal(nil, \
                 aliased_angles.true_longitude_aries)
  end

  it 'expected   0.4090918807346111 from \
      aliased_angles.true_obliquity()' do
    assert_equal(0.4090918807346111, \
                 aliased_angles.true_obliquity)
  end

end
