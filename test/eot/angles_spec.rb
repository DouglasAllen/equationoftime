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

  it 'expected from \ angles.ajd \
                 2456885.0' do
    assert_equal(2456885.0, 
    angles.ajd)
  end

  it 'expected from \ angles.date.to_s \
                 "2014-08-15T12:00:00+00:00"' do
    assert_equal('2014-08-15T12:00:00+00:00',
    angles.date.to_s)
  end

  it 'expected from \ angles.ma.round(10) \
                 3.8508003966' do
    assert_equal(3.8508003966, 
    angles.ma.round(10))
  end

  it 'expected from \ angles.al_sun().round(10) \
                 2.4887103398436143 ' do
    assert_equal(2.4887103398436143,
    angles.al_sun.round(10))
  end

  it 'expected from \   -0.021413249720702462 from angles.centre()? ' do
    assert_equal(-0.021413249720702462, angles.center.round(10))
  end

  it 'expected from \   -0.7943361570447028 from angles.cosine_al_sun()? ' do
    assert_equal(-0.7943361570447028, angles.cosine_al_sun.round(10))
  end

  it 'expected from \ angles.cosine_tl_sun.round(10) \
                 -0.794377276 ' do
    assert_equal(-0.794377276, 
    angles.cosine_tl_sun.round(10))
  end

  it 'expected from \   0.9175115346811911 from  angles.cosine_to_earth()? ' do
    assert_equal(0.9175115346811911, angles.cosine_to_earth.round(10))
  end

  it 'expected from \   0.24401410218543554 from  angles.dec_sun()? ' do
    assert_equal(0.24401410218543554, angles.dec_sun.round(10))
  end

  it 'expected from \   -4.069792718159396e-05 from  angles.delta_epsilon()? ' do
    assert_equal(-4.069792718159396e-05, angles.delta_epsilon.round(10))
  end

  it 'expected from \   -0.04103082558803539 from  angles.delta_oblique()? ' do
    assert_equal(-0.04103082558803539, angles.delta_oblique.round(10))
  end

  it 'expected from \   0.021413249720702462 from  angles.delta_orbit()? ' do
    assert_equal(0.021413249720702462, angles.delta_orbit.round(10))
  end

  it 'expected from \   3.75123821843003e-05 from  angles.delta_psi()? ' do
    assert_equal(3.75123821843003e-05, angles.delta_psi.round(10))
  end

  it 'expected from \   0.016702468499021204 from  \
      angles.eccentricity_earth()? ' do
    assert_equal(0.016702468499021204, angles.eccentricity_earth.round(10))
  end

  it 'expected from \   3.4412912434333975e-05 from  angles.eq_of_equinox()? ' do
    assert_equal(3.4412912434333975e-05, angles.eq_of_equinox.round(10))
  end

  it 'expected from \   -0.01961757586733293 from  angles.eot()? ' do
    assert_equal(-0.01961757586733293, angles.eot.round(10))
  end

  it 'expected from \   2.5101912804141424 from  angles.gml_sun()? ' do
    assert_equal(2.5101912804141424, angles.gml_sun.round(10))
  end

  it 'expected from \   1.5857841877939605 from  angles.ha_sun(1)? ' do
    assert_equal(1.5857841877939605, angles.ha_sun(1).round(10))
  end

  it 'expected from \ 
      angles.ma_sun.round(10) \
                 3.8508003966 ' do
    assert_equal(3.8508003966,
    angles.ma_sun.round(10))
  end

  it 'expected from \ angles.ml_aries.round(10) \
                 2.510089865 ' do
    assert_equal(2.510089865, 
    angles.ml_aries.round(10))
  end

  it 'expected from \   0.40905940254265843 from  angles.mo_earth()? ' do
    assert_equal(0.40905940254265843, angles.mo_earth.round(10))
  end

  it 'expected from \   -2.7528817371494685 from  angles.omega()? ' do
    assert_equal(-2.7528817371494685, angles.omega.round(10))
  end

  it 'expected from \   2.5297411654316497 from  angles.ra_sun()? ' do
    assert_equal(2.5297411654316497, angles.ra_sun.round(10))
  end

  it 'expected from \ \
      angles.sine_al_sun \
                  ' do
    assert_equal(0.6074784519729512, 
    angles.sine_al_sun.round(10))
  end

  it 'expected from \   0.6074246812917259 from  angles.sine_tl_sun()? ' do
    assert_equal(0.6074246812917259, angles.sine_tl_sun.round(10))
  end

  it 'expected from \   3.8293871468831893 from  angles.ta_sun()? ' do
    assert_equal(3.8293871468831893, angles.ta_sun.round(10))
  end

  it 'expected from \   2.5101242776531474 from  angles.tl_aries()? ' do
    assert_equal(2.5101242776531474, angles.tl_aries.round(10))
  end

  it 'expected from \   2.48877803069344 from  angles.tl_sun()? ' do
    assert_equal(2.48877803069344, angles.tl_sun.round(10))
  end

  it 'expected from \ angles.to_earth.round(10) \
                 0.4090187046 ' do
    assert_equal(0.4090187046, 
    angles.to_earth.round(10))
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

  it 'expected from \   
  2455055.0, from angles.' do
    assert_equal(2_455_055.0, angles.ajd)
  end

  it 'expected from \   
  "2009-08-11T12:00:00+00:00", from angles.date.to_s' do
    assert_equal('2009-08-11T12:00:00+00:00', angles.date.to_s)
  end

  it 'expected from \  
   3.7871218188949207, from angles.' do
    assert_equal(3.7871218188949207, angles.ma.round(10))
  end

  it 'expected from \ 
      angles.al_sun.round(10) \
   ' do
    assert_equal(2.4252140646,
    angles.al_sun.round(10))
  end

  it 'expected from \   
  -0.019768413456709915 from angles.center()? ' do
    assert_equal(-0.019768413456709915, angles.center.round(10))
  end

  it 'expected from \   
  -0.7541886969975007 from angles.cosine_al_sun()? ' do
    assert_equal(-0.7541886969975007, angles.cosine_al_sun.round(10))
  end

  it 'expected from \   
  -0.7542060769936684 from angles.cosine_tl_sun()? ' do
    assert_equal(-0.7542060769936684, angles.cosine_tl_sun.round(10))
  end

  it 'expected from \   
  0.9174818088112336 from angles.cosine_to_earth()? ' do
    assert_equal(0.9174818088112336, angles.cosine_to_earth.round(10))
  end

  it 'expected from \  
   0.2642691272294404 from angles.dec_sun()? ' do
    assert_equal(0.2642691272294404, angles.dec_sun.round(10))
  end

  it 'expected from \   
  2.2661506700250296e-05 from angles.delta_epsilon()? ' do
    assert_equal(2.2661506700250296e-05, angles.delta_epsilon.round(10))
  end

  it 'expected from \ 
  angles.delta_oblique() \
                 -0.042349049? ' do
    assert_equal(-0.042349049, 
    angles.delta_oblique.round(10))
  end

  it 'expected from \ 
  0.0197684135 from angles.delta_orbit()? ' do
    assert_equal(0.0197684135, angles.delta_orbit.round(10))
  end

  it 'expected from \   
  7.639341522992976e-05 from angles.delta_psi()? ' do
    assert_equal(7.639341522992976e-05, angles.delta_psi.round(10))
  end

  it 'expected from \ 
  angles.eccentricity_earth.round(10) \
                 0.0167045762 ' do
    assert_equal(0.0167045762, 
    angles.eccentricity_earth.round(10))
  end

  it 'expected from \   
  7.007879585074761e-05 from angles.eq_of_equinox()? ' do
    assert_equal(7.007879585074761e-05, angles.eq_of_equinox.round(10))
  end

  it 'expected from \   
  -0.0225806355 from angles.eot()? ' do
    assert_equal(-0.0225806355, angles.eot.round(10))
  end

  it 'expected from \   
  2.445008945789877 from  angles.gml_sun()? ' do
    assert_equal(2.445008945789877, angles.gml_sun.round(10))
  end

  it 'expected from \   
  1.585863261753274 from angles.ha_sun(1)? ' do
    assert_equal(1.585863261753274, angles.ha_sun(1).round(10))
  end

  it 'expected from \   
  3.7871218188949207 from angles.ma_sun()? ' do
    assert_equal(3.7871218188949207, angles.ma_sun.round(10))
  end

  it 'expected from \   
  2.444907382260759 from angles.ml_aries()? ' do
    assert_equal(2.444907382260759, angles.ml_aries.round(10))
  end

  it 'expected from \   
  0.4090707793981491 from angles.mo_earth()? ' do
    assert_equal(0.4090707793981491, angles.mo_earth.round(10))
  end

  it 'expected from \ 
  angles.omega.round(10) \
                 -1.0615640635 ' do
    assert_equal(-1.0615640635, 
    angles.omega.round(10))
  end

  it 'expected from \   
  2.467563113547267 from angles.ra_sun()? ' do
    assert_equal(2.467563113547267, angles.ra_sun.round(10))
  end

  it 'expected from \   
  0.6566577566139093 from angles.sine_al_sun()? ' do
    assert_equal(0.6566577566139093, angles.sine_al_sun.round(10))
  end

  it 'expected from \   
  0.6566377946979757 from angles.sine_tl_sun()? ' do
    assert_equal(0.6566377946979757, angles.sine_tl_sun.round(10))
  end

  it 'expected from \   
  3.7673534054 from angles.ta_sun()? ' do
    assert_equal(3.7673534054, angles.ta_sun.round(10))
  end

  it 'expected from \   
  2.4449774607872907 from angles.tl_aries()? ' do
    assert_equal(2.4449774607872907, angles.tl_aries.round(10))
  end

  it 'expected from \   
  2.4252405323331674 from angles.tl_sun()? ' do
    assert_equal(2.4252405323331674, angles.tl_sun.round(10))
  end

  it 'expected from \   
  0.4090934409 from angles.to_earth()? ' do
    assert_equal(0.4090934409, angles.to_earth.round(10))
  end
end
