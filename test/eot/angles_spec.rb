# angles_spec.rb

require File.expand_path('../../test_helper', __FILE__)

angles = Eot.new

describe 'Tests date of "2014-08-15" ' do

  before(:each) do
    angles.new_date("2014-08-15")
  end

  it 'expected   "2014-08-15" for \
      angles.date' do
    assert_equal('2014-08-15', \
                  angles.date)
  end

  it 'expected   2_456_885.0 for \
      angles.jd'do
    assert_equal(2_456_885.0, \
                 angles.jd)
  end

  it 'expected   2_456_884.5 for \
      angles.ajd'do
    assert_equal(2_456_884.5, \
                 angles.ajd)
  end

  it 'expected   0.1462012320328542 for \
      angles.ta'do
    assert_equal(0.1462012320328542, \
                 angles.ta)
  end

  it 'expected   0.1462012320328542 for \
      angles.t'do
    assert_equal(0.1462012320328542, \
                 angles.t)
  end

  it 'expected   3.8508003966038915 for \
      angles.ma'do
    assert_equal(3.8508003966038915, \
                 angles.ma)
  end

  it 'expected   2.4887103398436143 from \
      angles.al_sun()' do
    assert_equal(2.4887103398436143, \
                 angles.al_sun)
  end

  it 'expected   -0.021413249720702462 from \
      angles.centre()' do
    assert_equal(-0.021413249720702462, \
                 angles.center)
  end

  it 'expected   -0.7943361570447028 from \
      angles.cosine_al_sun()' do
    assert_equal(-0.7943361570447028, \
                 angles.cosine_al_sun)
  end

  it 'expected   -0.7943772759574919 from \
      angles.cosine_tl_sun()' do
    assert_equal(-0.7943772759574919, \
                 angles.cosine_tl_sun)
  end

  it 'expected   0.9175115179545029 from \
      angles.cosine_to_earth()' do
    assert_equal(0.9175115179545029, \
                 angles.cosine_to_earth)
  end

  it 'expected   0.2440141263426414 from \
      angles.dec_sun()' do
    assert_equal(0.2440141263426414, \
                 angles.dec_sun)
  end

  it 'expected   -4.065586959623836e-05 from \
      angles.delta_epsilon()' do
    assert_equal(-4.065586959623836e-05, \
                 angles.delta_epsilon)
  end

  it 'expected   -0.041030834159698326 from \
      angles.delta_oblique()' do
    assert_equal(-0.041030834159698326, \
                 angles.delta_oblique)
  end

  it 'expected   0.021413249720702462 from \
      angles.delta_orbit()' do
    assert_equal(0.021413249720702462, \
                 angles.delta_orbit)
  end

  it 'expected   3.770181792687613e-05 from \
      angles.delta_psi()' do
    assert_equal(3.770181792687613e-05, \
                 angles.delta_psi)
  end

  it 'expected   0.016702468499021204 from  \
      angles.eccentricity_earth()' do
    assert_equal(0.016702468499021204, \
                 angles.eccentricity_earth)
  end

  it 'expected   3.4412912434333975e-05 from \
      angles.eq_of_equinox()' do
    assert_equal(3.4412912434333975e-05, \
                 angles.eq_of_equinox)
  end

  it 'expected   -0.019617584438995864 from \
      angles.eot()' do
    assert_equal(-0.019617584438995864, \
                 angles.eot)
  end

  it 'expected   2.5101912804141424 from \
      angles.gml_sun()' do
    assert_equal(2.5101912804141424, \
                 angles.gml_sun)
  end

  it 'expected   1.5857841878841126 from \
      angles.ha_sun(1)' do
    assert_equal(1.5857841878841126, \
                 angles.ha_sun(1))
  end

  it 'expected   3.8508003966038915 from \
      angles.ma_sun()' do
    assert_equal(3.8508003966038915, \
                 angles.ma_sun)
  end

  it 'expected   2.510089864980358 from \
      angles.ml_aries()' do
    assert_equal(2.510089864980358, \
                 angles.ml_aries)
  end

  it 'expected   0.40905940254265843 from \
      angles.mo_earth()' do
    assert_equal(0.40905940254265843, \
                 angles.mo_earth)
  end

  it 'expected   -2.7528817371494685 from \
      angles.omega()' do
    assert_equal(-2.7528817371494685, \
                 angles.omega)
  end

  it 'expected   2.5297411740033127 from \
      angles.ra_sun()' do
    assert_equal(2.5297411740033127, \
                 angles.ra_sun)
  end

  it 'expected   0.6074784519729512 from \
      angles.sine_al_sun()' do
    assert_equal(0.6074784519729512, \
                 angles.sine_al_sun)
  end

  it 'expected   0.6074246812917259 from \
      angles.sine_tl_sun()' do
    assert_equal(0.6074246812917259, \
                 angles.sine_tl_sun)
  end

  it 'expected   3.8293871468831893 from \
      angles.ta_sun()' do
    assert_equal(3.8293871468831893, \
                 angles.ta_sun)
  end

  it 'expected   2.5101242776531474 from \
      angles.tl_aries()' do
    assert_equal(2.5101242776531474, \
                 angles.tl_aries)
  end

  it 'expected   2.48877803069344 from \
      angles.tl_sun()' do
    assert_equal(2.48877803069344, \
                 angles.tl_sun)
  end

  it 'expected   0.4090187466730622 from \
      angles.to_earth()' do
    assert_equal(0.4090187466730622, \
                 angles.to_earth)
  end
end

describe 'Tests date of "2009-08-11" ' do

  before(:each) do
    angles.new_date("2009-08-11")
  end

  it 'expected   "2009-08-11", from \
      angles.date' do
    assert_equal('2009-08-11', \
                  angles.date)
  end

  it 'expected   2455055.0, from \
      angles.jd' do
    assert_equal(2455055.0, \
                 angles.jd)
  end

  it 'expected   2455054.5, from \
      angles.ajd' do
    assert_equal(2455054.5, \
                 angles.ajd)
  end

  it 'expected   0.09609856262833676, from \
      angles.ta' do
    assert_equal(0.09609856262833676, \
                 angles.ta)
  end

  it 'expected   3.7871218188949207, from \
      angles.ma' do
    assert_equal(3.7871218188949207, \
                 angles.ma)
  end

  it 'expected   2.4252140645725033 from \
      angles.al_sun()' do
    assert_equal(2.4252140645725033, \
                 angles.al_sun)
  end

  it 'expected   -0.019768413456709915 from \
      angles.center()' do
    assert_equal(-0.019768413456709915, \
                 angles.center)
  end

  it 'expected   -0.7541886969975007 from \
      angles.cosine_al_sun()' do
    assert_equal(-0.7541886969975007, \
                 angles.cosine_al_sun)
  end

  it 'expected   -0.7542060769936684 from \
      angles.cosine_tl_sun()' do
    assert_equal(-0.7542060769936684, \
                 angles.cosine_tl_sun)
  end

  it 'expected   0.9174817873469184 from \
      angles.cosine_to_earth()' do
    assert_equal(0.9174817873469184, \
                 angles.cosine_to_earth)
  end

  it 'expected   0.2642691609083573 from \
      angles.dec_sun()' do
    assert_equal(0.2642691609083573, \
                 angles.dec_sun)
  end

  it 'expected   2.2715467271059928e-05 from \
      angles.delta_epsilon()' do
    assert_equal(2.2715467271059928e-05, \
                 angles.delta_epsilon)
  end

  it 'expected   -0.04234906038320263 from \
      angles.delta_oblique()' do
    assert_equal(-0.04234906038320263, \
                 angles.delta_oblique)
  end

  it 'expected   0.019768413456709915 from \
      angles.delta_orbit()' do
    assert_equal(0.019768413456709915, \
                 angles.delta_orbit)
  end

  it 'expected   7.660283065462116e-05 from \
      angles.delta_psi()' do
    assert_equal(7.660283065462116e-05, \
                 angles.delta_psi)
  end

  it 'expected   0.016704576164208475 from \
      angles.eccentricity_earth()' do
    assert_equal(0.016704576164208475, \
                 angles.eccentricity_earth)
  end

  it 'expected   7.007879585074761e-05 from \
      angles.eq_of_equinox()' do
    assert_equal(7.007879585074761e-05, \
                 angles.eq_of_equinox)
  end

  it 'expected   -0.022580646926492715 from \
      angles.eot()' do
    assert_equal(-0.022580646926492715, \
                 angles.eot)
  end

  it 'expected   2.445008945789877 from \
      angles.gml_sun()' do
    assert_equal(2.445008945789877, \
                 angles.gml_sun)
  end

  it 'expected   1.585863261890596 from \
      angles.ha_sun(1)' do
    assert_equal(1.585863261890596, \
                 angles.ha_sun(1))
  end

  it 'expected   3.7871218188949207 from \
      angles.ma_sun()' do
    assert_equal(3.7871218188949207, \
                 angles.ma_sun)
  end

  it 'expected   2.444907382260759 from \
      angles.ml_aries()' do
    assert_equal(2.444907382260759, \
                 angles.ml_aries)
  end

  it 'expected   0.4090707793981491 from \
      angles.mo_earth()' do
    assert_equal(0.4090707793981491, \
                 angles.mo_earth)
  end

  it 'expected   -1.0615640635268548 from \
      angles.omega()' do
    assert_equal(-1.0615640635268548, \
                 angles.omega)
  end

  it 'expected   2.467563124955706 from \
      angles.ra_sun()' do
    assert_equal(2.467563124955706, \
                 angles.ra_sun)
  end

  it 'expected   0.6566577566139093 from \
      angles.sine_al_sun()' do
    assert_equal(0.6566577566139093, \
                 angles.sine_al_sun)
  end

  it 'expected   0.6566377946979757 from \
      angles.sine_tl_sun()' do
    assert_equal(0.6566377946979757, \
                 angles.sine_tl_sun)
  end

  it 'expected   3.767353405438211 from \
      angles.ta_sun()' do
    assert_equal(3.767353405438211, \
                 angles.ta_sun)
  end

  it 'expected   2.4449774607872907 from \
      angles.tl_aries()' do
    assert_equal(2.4449774607872907, \
                 angles.tl_aries)
  end

  it 'expected   2.4252405323331674 from \
      angles.tl_sun()' do
    assert_equal(2.4252405323331674, \
                 angles.tl_sun)
  end

  it 'expected   0.4090934948654202 from \
      angles.to_earth()' do
    assert_equal(0.4090934948654202, \
                 angles.to_earth)
  end
end
