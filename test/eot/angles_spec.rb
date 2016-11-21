
# angles_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

angles = Eot.new

describe 'Tests ajd of 2_456_885.0 ' do
  before(:each) do
    angles.jd = 2_456_885.0
    angles.set_t
  end

  it 'expected from angles.ajd \
                 2_456_885.0' do
    assert_equal(2_456_885.0,
                 angles.jd)
  end

  it 'expected from angles.date.to_s \
                 "2014-08-15T12:00:00+00:00"' do
    assert_equal('2014-08-15T12:00:00+00:00',
                 angles.date.to_s)
  end

  it 'expected from angles.al_sun().round(10) \
                 2.4887103398 ' do
    assert_equal(2.4887103398,
                 angles.al_sun.round(10))
  end

  it 'expected from angles.centre.round(10) \
                 -0.0214132497 ' do
    assert_equal(-0.0214132497,
                 angles.center.round(10))
  end

  it 'expected from angles.dec_sun.round(10) \
                 0.2440141022 ' do
    assert_equal(0.2440141022,
                 angles.dec_sun.round(10))
  end

  it 'expected from angles.eccentricity_earth.round(10) \
                 0.0167024685 ' do
    assert_equal(0.0167024685,
                 angles.eccentricity_earth.round(10))
  end

  it 'expected from angles.eq_of_equinox.round(10) \
                 3.44129e-05 ' do
    assert_equal(3.44129e-05,
                 angles.eq_of_equinox.round(10))
  end

  it 'expected from angles.eot.round(10) \
                 -0.0196175759 ' do
    assert_equal(-0.0196175759,
                 angles.eot.round(10))
  end

  it 'expected from angles.gha_sun.round(10) \
                 6.2215570367 ' do
    assert_equal(6.2215570367,
                 angles.gha_sun.round(10))
  end

  it 'expected from angles.gml_sun.round(10) \
                 2.5101912804 ' do
    assert_equal(2.5101912804,
                 angles.gml_sun.round(10))
  end

  it 'expected from angles.ha_sun(1).round(10) \
                 1.5857841878 ' do
    assert_equal(1.5857841878,
                 angles.ha_sun(1).round(10))
  end

  it 'expected from angles.ma_sun.round(10) \
                 3.8508003966 ' do
    assert_equal(3.8508003966,
                 angles.ma_sun.round(10))
  end

  it 'expected from angles.ml_aries.round(10) \
                 2.510089865 ' do
    assert_equal(2.510089865,
                 angles.ml_aries.round(10))
  end

  it 'expected from angles.mo_earth.round(10) \
                 0.4090594025 ' do
    assert_equal(0.4090594025,
                 angles.mo_earth.round(10))
  end

  #   it 'expected from angles.omega.round(10) \
  #                  -2.7528817371 ' do
  #     assert_equal(-2.7528817371,
  #                  angles.omega.round(10))
  #   end

  it 'expected from angles.right_ascension_sun.round(10) \
                 2.5297411654 ' do
    assert_equal(2.5297411654,
                 angles.right_ascension_sun.round(10))
  end

  it 'expected from angles.ta_sun.round(10) \
                 3.8293871469 ' do
    assert_equal(3.8293871469,
                 angles.ta_sun.round(10))
  end

  it 'expected from angles.tl_aries.round(10) \
                 2.5101242777 ' do
    assert_equal(2.5101242777,
                 angles.tl_aries.round(10))
  end

  it 'expected from angles.tl_sun.round(10) \
                 2.4887780307' do
    assert_equal(2.4887780307,
                 angles.tl_sun.round(10))
  end

  it 'expected from angles.to_earth.round(10) \
                 0.4090187046 ' do
    assert_equal(0.4090187046,
                 angles.to_earth.round(10))
  end
end

describe 'Tests ajd of 2455055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.0
    angles.set_t
  end

  it 'expected from angles.ajd \
                 2_455_055.0 ' do
    assert_equal(2_455_055.0,
                 angles.jd)
  end

  it 'expected from angles.date.to_s \
                  2009-08-11T12:00:00+00:00 ' do
    assert_equal('2009-08-11T12:00:00+00:00',
                 angles.date.to_s)
  end

  it 'expected from \
      angles.al_sun.round(10) \
                 2.4252140646 ' do
    assert_equal(2.4252140646,
                 angles.al_sun.round(10))
  end

  it 'expected from angles.center.round(10) \
                 -0.0197684135 ' do
    assert_equal(-0.0197684135,
                 angles.center.round(10))
  end

  it 'expected from angles.dec_sun.round(10) \
                 0.2642691272 ' do
    assert_equal(0.2642691272,
                 angles.dec_sun.round(10))
  end

  it 'expected from angles.eccentricity_earth.round(10) \
                 0.0167045762 ' do
    assert_equal(0.0167045762,
                 angles.eccentricity_earth.round(10))
  end

  it 'expected from angles.eq_of_equinox.round(10) \
                 7.00788e-05 ' do
    assert_equal(7.00788e-05,
                 angles.eq_of_equinox.round(10))
  end

  it 'expected from angles.eot.round(10) \
                 -0.0225806355' do
    assert_equal(-0.0225806355,
                 angles.eot.round(10))
  end

  it 'expected from angles.gha_sun.round(10) \
                 6.2122303864 ' do
    assert_equal(6.2122303864,
                 angles.gha_sun.round(10))
  end

  it 'expected from angles.gml_sun.round(10) \
                 2.4450089458 ' do
    assert_equal(2.4450089458,
                 angles.gml_sun.round(10))
  end

  it 'expected from angles.ha_sun(nil).round(10) \
               1.5858632618 ' do
    assert_equal(1.5858632618,
                 angles.ha_sun(nil).round(10))
  end

  it 'expected from angles.ha_sun(1).round(10) \
                 1.5858632618 ' do
    assert_equal(1.5858632618,
                 angles.ha_sun(1).round(10))
  end

  it 'expected from angles.ha_sun(2).round(10) \
                 1.6792969059 ' do
    assert_equal(1.6792969059,
                 angles.ha_sun(2).round(10))
  end

  it 'expected from angles.ha_sun(3).round(10) \
                 1.7878867091 ' do
    assert_equal(1.7878867091,
                 angles.ha_sun(3).round(10))
  end

  it 'expected from angles.ha_sun(4).round(10) \
                 1.8966638356 ' do
    assert_equal(1.8966638356,
                 angles.ha_sun(4).round(10))
  end

  it 'expected from angles.ma_sun.round(10) \
                 3.7871218189 ' do
    assert_equal(3.7871218189,
                 angles.ma_sun.round(10))
  end

  it 'expected from angles.ml_aries.round(10) \
                 2.4449073823 ' do
    assert_equal(2.4449073823,
                 angles.ml_aries.round(10))
  end

  it 'expected from angles.mo_earth.round(10) \
                 0.4090707794 ' do
    assert_equal(0.4090707794,
                 angles.mo_earth.round(10))
  end

  #   it 'expected from angles.omega.round(10) \
  #                  -1.0615640635 ' do
  #     assert_equal(-1.0615640635,
  #                  angles.omega.round(10))
  #   end

  it 'expected from angles.right_ascension_sun.round(10) \
                 2.4675631135 ' do
    assert_equal(2.4675631135,
                 angles.right_ascension_sun.round(10))
  end

  it 'expected from angles.ta_sun.round(10) \
                 3.7673534054' do
    assert_equal(3.7673534054,
                 angles.ta_sun.round(10))
  end

  it 'expected from angles.tl_aries.round(10) \
                 2.4449774608 ' do
    assert_equal(2.4449774608,
                 angles.tl_aries.round(10))
  end

  it 'expected from angles.tl_sun.round(10) \
                 2.4252405323 ' do
    assert_equal(2.4252405323,
                 angles.tl_sun.round(10))
  end

  it 'expected from angles.to_earth.round(10) \
                 0.4090934409' do
    assert_equal(0.4090934409,
                 angles.to_earth.round(10))
  end
end
