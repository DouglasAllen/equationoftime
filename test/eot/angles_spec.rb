# angles_spec.rb

require File.expand_path('../../test_helper', __FILE__)

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

  it 'expected   3.8508003966038906 for angles.ma'do
    assert_equal(3.8508003966038906, angles.ma)
  end

  it 'expected   2.488710297253844 from angles.al_sun() ' do
    assert_equal(2.488710297253844, angles.al_sun)
  end

  it 'expected   -0.021413292823979115 from angles.centre() ' do
    assert_equal(-0.021413292823979115, angles.center)
  end

  it 'expected   -0.7943361311723343 from angles.cosine_al_sun() ' do
    assert_equal(-0.7943361311723343, angles.cosine_al_sun)
  end

  it 'expected   -0.7943772500874134 from  angles.cosine_tl_sun() ' do
    assert_equal(-0.7943772500874134, angles.cosine_tl_sun)
  end

  it 'expected   0.9175112790214804 from  angles.cosine_to_earth() ' do
    assert_equal(0.9175112790214804, angles.cosine_to_earth)
  end

  it 'expected   0.24401448528240358 from  angles.dec_sun() ' do
    assert_equal(0.24401448528240358, angles.dec_sun)
  end

  it 'expected   nil from  angles.delta_epsilon() ' do
    assert_equal(nil, angles.delta_epsilon)
  end

  it 'expected   -0.04103095769281939 from  angles.delta_oblique() ' do
    assert_equal(-0.04103095769281939, angles.delta_oblique)
  end

  it 'expected   0.021413292823979115 from  angles.delta_orbit() ' do
    assert_equal(0.021413292823979115, angles.delta_orbit)
  end

  it 'expected   nil from  angles.delta_psi() ' do
    assert_equal(nil, angles.delta_psi)
  end

  it 'expected   3.8508003966038906 from  \
      angles.eccentricity_earth() ' do
    assert_equal(3.8508003966038906, angles.eccentricity_earth)
  end

  it 'expected   nil from  angles.eq_of_equinox() ' do
    assert_equal(nil, angles.eq_of_equinox)
  end

  it 'expected   -0.019617664868840277 from  angles.eot() ' do
    assert_equal(-0.019617664868840277, angles.eot)
  end

  it 'expected   2.510191280927649 from  angles.gml_sun() ' do
    assert_equal(2.510191280927649, angles.gml_sun)
  end

  it 'expected   1.585784189223637 from  angles.ha_sun(1) ' do
    assert_equal(1.585784189223637, angles.ha_sun(1))
  end

  it 'expected   3.8508003966038906 from  angles.ma_sun() ' do
    assert_equal(3.8508003966038906, angles.ma_sun)
  end

  it 'expected   2456885.0007775924 from  angles.ml_aries() ' do
    assert_equal(2456885.0007775924, angles.ml_aries)
  end

  it 'expected   0.40905940254265843 from  angles.mo_earth() ' do
    assert_equal(0.40905940254265843, angles.mo_earth)
  end

  it 'expected   -2.7528817371489427 from  angles.omega() ' do
    assert_equal(-2.7528817371489427, angles.omega)
  end

  it 'expected   2.5297412549466634 from  angles.ra_sun() ' do
    assert_equal(2.5297412549466634, angles.ra_sun)
  end

  it 'expected   0.6074784858035452 from  angles.sine_al_sun() ' do
    assert_equal(0.6074784858035452, angles.sine_al_sun)
  end

  it 'expected   0.6074247151240711 from  angles.sine_tl_sun() ' do
    assert_equal(0.6074247151240711, angles.sine_tl_sun)
  end

  it 'expected   3.8293871037799114 from  angles.ta_sun() ' do
    assert_equal(3.8293871037799114, angles.ta_sun)
  end

  it 'expected   2456885.0007775924 from  angles.tl_aries() ' do
    assert_equal(2456885.0007775924, angles.tl_aries)
  end

  it 'expected   2.48877798810367 from  angles.tl_sun() ' do
    assert_equal(2.48877798810367, angles.tl_sun)
  end

  it 'expected   0.40901934744581736 from angles.to_earth() ' do
    assert_equal(0.40901934744581736, angles.to_earth)
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

  it 'expected   3.7871218188949243, from angles.' do
    assert_equal(3.7871218188949243, angles.ma)
  end

  it 'expected   2.425214006790941 from angles.al_sun() ' do
    assert_equal(2.425214006790941, angles.al_sun)
  end

  it 'expected   -0.019768471429841467 from angles.center() ' do
    assert_equal(-0.019768471429841467, angles.center)
  end

  it 'expected   -0.7541886590547884 from angles.cosine_al_sun() ' do
    assert_equal(-0.7541886590547884, angles.cosine_al_sun)
  end

  it 'expected   -0.7542060390521095 from angles.cosine_tl_sun() ' do
    assert_equal(-0.7542060390521095, angles.cosine_tl_sun)
  end

  it 'expected   0.9174824294111086 from angles.cosine_to_earth() ' do
    assert_equal(0.9174824294111086, angles.cosine_to_earth)
  end

  it 'expected   0.2642681714233576 from angles.dec_sun() ' do
    assert_equal(0.2642681714233576, angles.dec_sun)
  end

  it 'expected   nil from angles.delta_epsilon() ' do
    assert_equal(nil, angles.delta_epsilon)
  end

  it 'expected   -0.04234872000772105 from angles.delta_oblique() ' do
    assert_equal(-0.04234872000772105, angles.delta_oblique)
  end

  it 'expected   0.019768471429841467 from angles.delta_orbit() ' do
    assert_equal(0.019768471429841467, angles.delta_orbit)
  end

  it 'expected   nil from angles.delta_psi() ' do
    assert_equal(nil, angles.delta_psi)
  end

  it 'expected   3.7871218188949243 from \
      angles.eccentricity_earth() ' do
    assert_equal(3.7871218188949243, angles.eccentricity_earth)
  end

  it 'expected   nil from angles.eq_of_equinox() ' do
    assert_equal(nil, angles.eq_of_equinox)
  end

  it 'expected   -0.022580248577879585 from angles.eot() ' do
    assert_equal(-0.022580248577879585, angles.eot)
  end

  it 'expected   2.4450089459814466 from  angles.gml_sun() ' do
    assert_equal(2.4450089459814466, angles.gml_sun)
  end

  it 'expected   1.5858632578560867 from angles.ha_sun(1) ' do
    assert_equal(1.5858632578560867, angles.ha_sun(1))
  end

  it 'expected   3.7871218188949243 from angles.ma_sun() ' do
    assert_equal(3.7871218188949243, angles.ma_sun)
  end

  it 'expected   2455055.0007775924 from angles.ml_aries() ' do
    assert_equal(2455055.0007775924, angles.ml_aries)
  end

  it 'expected   0.4090707793981492 from angles.mo_earth() ' do
    assert_equal(0.4090707793981492, angles.mo_earth)
  end

  it 'expected   -1.0615640635264998 from angles.omega() ' do
    assert_equal(-1.0615640635264998, angles.omega)
  end

  it 'expected   2.467562726798662 from angles.ra_sun() ' do
    assert_equal(2.467562726798662, angles.ra_sun)
  end

  it 'expected   0.6566578001921093 from angles.sine_al_sun() ' do
    assert_equal(0.6566578001921093, angles.sine_al_sun)
  end

  it 'expected   0.6566378382771799 from angles.sine_tl_sun() ' do
    assert_equal(0.6566378382771799, angles.sine_tl_sun)
  end

  it 'expected   3.767353347465083 from angles.ta_sun() ' do
    assert_equal(3.767353347465083, angles.ta_sun)
  end

  it 'expected   2455055.0007775924 from angles.tl_aries() ' do
    assert_equal(2455055.0007775924, angles.tl_aries)
  end

  it 'expected   2.425240474551605 from angles.tl_sun() ' do
    assert_equal(2.425240474551605, angles.tl_sun)
  end

  it 'expected   0.4090918807346111 from angles.to_earth() ' do
    assert_equal(0.4090918807346111, angles.to_earth)
  end
end
