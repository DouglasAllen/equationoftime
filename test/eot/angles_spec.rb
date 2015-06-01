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

  it 'expected   2456885.0 for angles.ajd'do
    assert_equal(2_456_885.0, angles.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" for angles.date'.to_s do
    assert_equal('2014-08-15T12:00:00+00:00', angles.date.to_s)
  end

  it 'expected   3.8508003966 for angles.ma'do
    assert_equal(3.8508003966, \
                 angles.ma.round(10))
  end

  it 'expected   2.4887103398 from angles.al_sun()? ' do
    assert_equal(2.4887103398, \
                 angles.al_sun.round(10))
  end

  it 'expected   -0.0214132497 from angles.centre()? ' do
    assert_equal(-0.0214132497, \
                 angles.center.round(10))
  end

  it 'expected   -0.794336157 from angles.cosine_al_sun()? ' do
    assert_equal(-0.794336157, \
                 angles.cosine_al_sun.round(10))
  end

  it 'expected   -0.794377276 from  angles.cosine_tl_sun()? ' do
    assert_equal(-0.794377276, \
                 angles.cosine_tl_sun.round(10))
  end

  it 'expected   0.9175115347 from  angles.cosine_to_earth()? ' do
    assert_equal(0.9175115347, \
                 angles.cosine_to_earth.round(10))
  end

  it 'expected   0.2440141022 from  angles.dec_sun()? ' do
    assert_equal(0.2440141022, \
                 angles.dec_sun.round(10))
  end

  it 'expected   -4.06979e-05 from  angles.delta_epsilon()? ' do
    assert_equal(-4.06979e-05, \
                 angles.delta_epsilon.round(10))
  end

  it 'expected   -0.0410308256 from  angles.delta_oblique()? ' do
    assert_equal(-0.0410308256, \
                 angles.delta_oblique.round(10))
  end

  it 'expected   0.0214132497 from  angles.delta_orbit()? ' do
    assert_equal(0.0214132497, \
                 angles.delta_orbit.round(10))
  end

  it 'expected   3.75124e-05 from  angles.delta_psi()? ' do
    assert_equal(3.75124e-05, \
                 angles.delta_psi.round(10))
  end

  it 'expected   0.0167024685 from  \
      angles.eccentricity_earth()? ' do
    assert_equal(0.0167024685, \
                 angles.eccentricity_earth.round(10))
  end

  it 'expected   3.44129e-05 from  angles.eq_of_equinox()? ' do
    assert_equal(3.44129e-05, \
                 angles.eq_of_equinox.round(10))
  end

  it 'expected   -0.0196175759 from  angles.eot()? ' do
    assert_equal(-0.0196175759, \
                 angles.eot.round(10))
  end

  it 'expected   2.5101912804 from  angles.gml_sun()? ' do
    assert_equal(2.5101912804, \
                 angles.gml_sun.round(10))
  end

  it 'expected   1.5857841878 from  angles.ha_sun(1)? ' do
    assert_equal(1.5857841878, \
                 angles.ha_sun(1).round(10))
  end

  it 'expected   3.8508003966 from  angles.ma_sun()? ' do
    assert_equal(3.8508003966, \
                 angles.ma_sun.round(10))
  end

  it 'expected   2.510089865 from  angles.ml_aries()? ' do
    assert_equal(2.510089865, \
                 angles.ml_aries.round(10))
  end

  it 'expected   0.4090594025 from  angles.mo_earth()? ' do
    assert_equal(0.4090594025, \
                 angles.mo_earth.round(10))
  end

  it 'expected   -2.7528817371 from  angles.omega()? ' do
    assert_equal(-2.7528817371, \
                 angles.omega.round(10))
  end

  it 'expected   2.5297411654 from  angles.ra_sun()? ' do
    assert_equal(2.5297411654, \
                 angles.ra_sun.round(10))
  end

  it 'expected   0.607478452 from  angles.sine_al_sun()? ' do
    assert_equal(0.607478452, \
                 angles.sine_al_sun.round(10))
  end

  it 'expected   0.6074246813 from  angles.sine_tl_sun()? ' do
    assert_equal(0.6074246813, \
                 angles.sine_tl_sun.round(10))
  end

  it 'expected   3.8293871469 from  angles.ta_sun()? ' do
    assert_equal(3.8293871469, \
                 angles.ta_sun.round(10))
  end

  it 'expected   2.5101242777 from  angles.tl_aries()? ' do
    assert_equal(2.5101242777, \
                 angles.tl_aries.round(10))
  end

  it 'expected   2.4887780307 from  angles.tl_sun()? ' do
    assert_equal(2.4887780307, \
                 angles.tl_sun.round(10))
  end

  it 'expected   0.4090187046 from angles.to_earth()? ' do
    assert_equal(0.4090187046, \
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

  it 'expected   2455055.0, from angles.' do
    assert_equal(2_455_055.0, angles.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00", from angles.date.to_s' do
    assert_equal('2009-08-11T12:00:00+00:00', angles.date.to_s)
  end

  it 'expected   3.7871218189, from angles.' do
    assert_equal(3.7871218189, \
                 angles.ma.round(10))
  end

  it 'expected   2.4252140646 from angles.al_sun()? ' do
    assert_equal(2.4252140646, \
                 angles.al_sun.round(10))
  end

  it 'expected   -0.0197684135 from angles.center()? ' do
    assert_equal(-0.0197684135, \
                 angles.center.round(10))
  end

  it 'expected   -0.754188697 from angles.cosine_al_sun()? ' do
    assert_equal(-0.754188697, \
                 angles.cosine_al_sun.round(10))
  end

  it 'expected   -0.754206077 from angles.cosine_tl_sun()? ' do
    assert_equal(-0.754206077, \
                 angles.cosine_tl_sun.round(10))
  end

  it 'expected   0.9174818088 from angles.cosine_to_earth()? ' do
    assert_equal(0.9174818088, \
                 angles.cosine_to_earth.round(10))
  end

  it 'expected   0.2642691272 from angles.dec_sun()? ' do
    assert_equal(0.2642691272, \
                 angles.dec_sun.round(10))
  end

  it 'expected   2.26615e-05 from angles.delta_epsilon()? ' do
    assert_equal(2.26615e-05, \
                 angles.delta_epsilon.round(10))
  end

  it 'expected   -0.042349049 from angles.delta_oblique()? ' do
    assert_equal(-0.042349049, \
                 angles.delta_oblique.round(10))
  end

  it 'expected   0.0197684135 from angles.delta_orbit()? ' do
    assert_equal(0.0197684135, \
                 angles.delta_orbit.round(10))
  end

  it 'expected   7.63934e-05 from angles.delta_psi()? ' do
    assert_equal(7.63934e-05, \
                 angles.delta_psi.round(10))
  end

  it 'expected   0.0167045762 from \
      angles.eccentricity_earth()? ' do
    assert_equal(0.0167045762, \
                 angles.eccentricity_earth.round(10))
  end

  it 'expected   7.00788e-05 from angles.eq_of_equinox()? ' do
    assert_equal(7.00788e-05, \
                 angles.eq_of_equinox.round(10))
  end

  it 'expected   -0.0225806355 from angles.eot()? ' do
    assert_equal(-0.0225806355, \
                 angles.eot.round(10))
  end

  it 'expected   2.4450089458 from  angles.gml_sun()? ' do
    assert_equal(2.4450089458, \
                 angles.gml_sun.round(10))
  end

  it 'expected   1.5858632618 from angles.ha_sun(1)? ' do
    assert_equal(1.5858632618, \
                 angles.ha_sun(1).round(10))
  end

  it 'expected   3.7871218189 from angles.ma_sun()? ' do
    assert_equal(3.7871218189, \
                 angles.ma_sun.round(10))
  end

  it 'expected   2.4449073823 from angles.ml_aries()? ' do
    assert_equal(2.4449073823, \
                 angles.ml_aries.round(10))
  end

  it 'expected   0.4090707794 from angles.mo_earth()? ' do
    assert_equal(0.4090707794, \
                 angles.mo_earth.round(10))
  end

  it 'expected   -1.0615640635 from angles.omega()? ' do
    assert_equal(-1.0615640635, \
                 angles.omega.round(10))
  end

  it 'expected   2.4675631135 from angles.ra_sun()? ' do
    assert_equal(2.4675631135, \
                 angles.ra_sun.round(10))
  end

  it 'expected   0.6566577566 from angles.sine_al_sun()? ' do
    assert_equal(0.6566577566, \
                 angles.sine_al_sun.round(10))
  end

  it 'expected   0.6566377947 from angles.sine_tl_sun()? ' do
    assert_equal(0.6566377947, \
                 angles.sine_tl_sun.round(10))
  end

  it 'expected   3.7673534054 from angles.ta_sun()? ' do
    assert_equal(3.7673534054, \
                 angles.ta_sun.round(10))
  end

  it 'expected   2.4449774608 from angles.tl_aries()? ' do
    assert_equal(2.4449774608, \
                 angles.tl_aries.round(10))
  end

  it 'expected   2.4252405323 from angles.tl_sun()? ' do
    assert_equal(2.4252405323, \
                 angles.tl_sun.round(10))
  end

  it 'expected   0.4090934409 from angles.to_earth()? ' do
    assert_equal(0.4090934409, \
                 angles.to_earth.round(10))
  end
end
