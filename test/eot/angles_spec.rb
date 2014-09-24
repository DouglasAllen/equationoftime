# angles_spec.rb
#

require_relative 'spec_config'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_angles = Eot.new

describe 'Tests ajd of 2456885.0' do

  before(:each) do
    Eot_angles.ajd  =   2_456_885.0
    ajd = Eot_angles.ajd
    # check date for this ajd when needed.
    Eot_angles.date = Eot_angles.ajd_to_datetime(ajd)
  end

  it 'expected    2456885.0 for Eot_angles.ajd'do
    assert_equal(2_456_885.0, Eot_angles.ajd)
  end

  it 'expected     "2014-08-15T12:00:00+00:00" for Eot_angles.date'.to_s do
    assert_equal('2014-08-15T12:00:00+00:00', Eot_angles.date.to_s)
  end

  it 'expected    3.8508003966038915 for Eot_angles.ma'do
    assert_equal(3.8508003966038915, Eot_angles.ma)
  end

  it 'expected    2.4887103398436143 from Eot_angles.al_Sun()? ' do
    assert_equal(2.4887103398436143,  Eot_angles.al_Sun)
  end

  it 'expected    -0.021413249720702462 from Eot_angles.centre()? ' do
    assert_equal(-0.021413249720702462, Eot_angles.center)
  end

  it 'expected    -0.7943361570447028 from Eot_angles.cosine_al_Sun()? ' do
    assert_equal(-0.7943361570447028, Eot_angles.cosine_al_Sun)
  end

  it 'expected    -0.7943772759574919 from  Eot_angles.cosine_tl_Sun()? ' do
    assert_equal(-0.7943772759574919, Eot_angles.cosine_tl_Sun)
  end

  it 'expected    0.9175115346811911 from  Eot_angles.cosine_to_Earth()? ' do
    assert_equal(0.9175115346811911, Eot_angles.cosine_to_Earth)
  end

  it 'expected    0.24401410218543554 from  Eot_angles.dec_Sun()? ' do
    assert_equal(0.24401410218543554, Eot_angles.dec_Sun)
  end

  it 'expected    -4.069792718159396e-05 from  Eot_angles.delta_epsilon()? ' do
    assert_equal(-4.069792718159396e-05, Eot_angles.delta_epsilon)
  end

  it 'expected    -0.04103082558803539 from  Eot_angles.delta_oblique()? ' do
    assert_equal(-0.04103082558803539, Eot_angles.delta_oblique)
  end

  it 'expected    0.021413249720702462 from  Eot_angles.delta_orbit()? ' do
    assert_equal(0.021413249720702462, Eot_angles.delta_orbit)
  end

  it 'expected    3.75123821843003e-05 from  Eot_angles.delta_psi()? ' do
    assert_equal(3.75123821843003e-05, Eot_angles.delta_psi)
  end

  it 'expected    0.016702468499021204 from  Eot_angles.eccentricity_Earth()? ' do
    assert_equal(0.016702468499021204, Eot_angles.eccentricity_Earth)
  end

  it 'expected    3.441804334746474e-05 from  Eot_angles.eq_of_equinox()? ' do
    assert_equal(3.441804334746474e-05, Eot_angles.eq_of_equinox)
  end

  it 'expected    -0.01961757586733293 from  Eot_angles.eot()? ' do
    assert_equal(-0.01961757586733293, Eot_angles.eot)
  end

  it 'expected    2.5101912804141424 from  Eot_angles.gml_Sun()? ' do
    assert_equal(2.5101912804141424, Eot_angles.gml_Sun)
  end

  it 'expected    1.9143229567859146 from  Eot_angles.ha_Sun()? ' do
    assert_equal(1.9143229567859146, Eot_angles.ha_Sun)
  end

  it 'expected    3.8508003966038915 from  Eot_angles.ma_Sun()? ' do
    assert_equal(3.8508003966038915, Eot_angles.ma_Sun)
  end

  it 'expected    2.510089864980358 from  Eot_angles.ml_Aries()? ' do
    assert_equal(2.510089864980358, Eot_angles.ml_Aries)
  end

  it 'expected    0.40905940254265843 from  Eot_angles.mo_Earth()? ' do
    assert_equal(0.40905940254265843, Eot_angles.mo_Earth)
  end

  it 'expected    -2.7528817371494685 from  Eot_angles.omega()? ' do
    assert_equal(-2.7528817371494685, Eot_angles.omega)
  end

  it 'expected    2.5297411654316497 from  Eot_angles.ra_Sun()? ' do
    assert_equal(2.5297411654316497, Eot_angles.ra_Sun)
  end

  it 'expected    0.6074784519729512 from  Eot_angles.sine_al_Sun()? ' do
    assert_equal(0.6074784519729512, Eot_angles.sine_al_Sun)
  end

  it 'expected    0.6074246812917259 from  Eot_angles.sine_tl_Sun()? ' do
    assert_equal(0.6074246812917259, Eot_angles.sine_tl_Sun)
  end

  it 'expected    3.8293871468831893 from  Eot_angles.ta_Sun()? ' do
    assert_equal(3.8293871468831893, Eot_angles.ta_Sun)
  end

  it 'expected    2.5101242776531474 from  Eot_angles.tl_Aries()? ' do
    assert_equal(2.5101242776531474, Eot_angles.tl_Aries)
  end

  it 'expected    2.48877803069344 from  Eot_angles.tl_Sun()? ' do
    assert_equal(2.48877803069344, Eot_angles.tl_Sun)
  end

  it 'expected    0.40901870461547685 from Eot_angles.to_Earth()? ' do
    assert_equal(0.40901870461547685, Eot_angles.to_Earth)
  end
end

describe 'Tests ajd of 2455055.5 ' do

  before(:each) do
    Eot_angles.ajd             = 2_455_055.0
    ajd = Eot_angles.ajd
    # check date for this ajd when needed.
    Eot_angles.date = Eot_angles.ajd_to_datetime(ajd)
  end

  it 'expected    2455055.0, from Eot_angles.' do
    assert_equal(2_455_055.0, Eot_angles.ajd)
  end

  it 'expected    "2009-08-11T12:00:00+00:00", from Eot_angles.date.to_s' do
    assert_equal('2009-08-11T12:00:00+00:00', Eot_angles.date.to_s)
  end

  it 'expected    3.7871218188949207, from Eot_angles.' do
    assert_equal(3.7871218188949207, Eot_angles.ma)
  end

  it 'expected    2.4252140645725033 from Eot_angles.al_Sun()? ' do
    assert_equal(2.4252140645725033, Eot_angles.al_Sun)
  end

  it 'expected    -0.019768413456709915 from Eot_angles.center()? ' do
    assert_equal(-0.019768413456709915, Eot_angles.center)
  end

  it 'expected    -0.7541886969975007 from Eot_angles.cosine_al_Sun()? ' do
    assert_equal(-0.7541886969975007, Eot_angles.cosine_al_Sun)
  end

  it 'expected    -0.7542060769936684 from Eot_angles.cosine_tl_Sun()? ' do
    assert_equal(-0.7542060769936684, Eot_angles.cosine_tl_Sun)
  end

  it 'expected    0.9174818088112336 from Eot_angles.cosine_to_Earth()? ' do
    assert_equal(0.9174818088112336, Eot_angles.cosine_to_Earth)
  end

  it 'expected    0.26426912722944046 from Eot_angles.dec_Sun()? ' do
    assert_equal(0.26426912722944046, Eot_angles.dec_Sun)
  end

  it 'expected    2.2661506700250296e-05 from Eot_angles.delta_epsilon()? ' do
    assert_equal(2.2661506700250296e-05, Eot_angles.delta_epsilon)
  end

  it 'expected    -0.04234904897476355 from Eot_angles.delta_oblique()? ' do
    assert_equal(-0.04234904897476355, Eot_angles.delta_oblique)
  end

  it 'expected    0.019768413456709915 from Eot_angles.delta_orbit()? ' do
    assert_equal(0.019768413456709915, Eot_angles.delta_orbit)
  end

  it 'expected    7.639341522992976e-05 from Eot_angles.delta_psi()? ' do
    assert_equal(7.639341522992976e-05, Eot_angles.delta_psi)
  end

  it 'expected    0.016704576164208475 from Eot_angles.eccentricity_Earth()? ' do
    assert_equal(0.016704576164208475, Eot_angles.eccentricity_Earth)
  end

  it 'expected    7.00895687864236e-05 from Eot_angles.eq_of_equinox()? ' do
    assert_equal(7.00895687864236e-05, Eot_angles.eq_of_equinox)
  end

  it 'expected    -0.022580635518053633 from Eot_angles.eot()? ' do
    assert_equal(-0.022580635518053633, Eot_angles.eot)
  end

  it 'expected    2.445008945789877 from  Eot_angles.gml_Sun()? ' do
    assert_equal(2.445008945789877, Eot_angles.gml_Sun)
  end

  it 'expected    1.9434600427973594 from Eot_angles.ha_Sun()? ' do
    assert_equal(1.9434600427973594, Eot_angles.ha_Sun)
  end

  it 'expected    3.7871218188949207 from Eot_angles.ma_Sun()? ' do
    assert_equal(3.7871218188949207, Eot_angles.ma_Sun)
  end

  it 'expected    2.444907382260759 from Eot_angles.ml_Aries()? ' do
    assert_equal(2.444907382260759, Eot_angles.ml_Aries)
  end

  it 'expected    0.4090707793981491 from Eot_angles.mo_Earth()? ' do
    assert_equal(0.4090707793981491, Eot_angles.mo_Earth)
  end

  it 'expected    -1.0615640635268548 from Eot_angles.omega()? ' do
    assert_equal(-1.0615640635268548, Eot_angles.omega)
  end

  it 'expected    2.467563113547267 from Eot_angles.ra_Sun()? ' do
    assert_equal(2.467563113547267, Eot_angles.ra_Sun)
  end

  it 'expected    0.6566577566139093 from Eot_angles.sine_al_Sun()? ' do
    assert_equal(0.6566577566139093, Eot_angles.sine_al_Sun)
  end

  it 'expected    0.6566377946979757 from Eot_angles.sine_tl_Sun()? ' do
    assert_equal(0.6566377946979757, Eot_angles.sine_tl_Sun)
  end

  it 'expected    3.767353405438211 from Eot_angles.ta_Sun()? ' do
    assert_equal(3.767353405438211, Eot_angles.ta_Sun)
  end

  it 'expected    2.4449774607872907 from Eot_angles.tl_Aries()? ' do
    assert_equal(2.4449774607872907, Eot_angles.tl_Aries)
  end

  it 'expected    2.4252405323331674 from Eot_angles.tl_Sun()? ' do
    assert_equal(2.4252405323331674, Eot_angles.tl_Sun)
  end

  it 'expected    0.4090934409048494 from Eot_angles.to_Earth()? ' do
    assert_equal(0.4090934409048494, Eot_angles.to_Earth)
  end
end
