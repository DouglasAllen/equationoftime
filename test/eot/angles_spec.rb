
# angles_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

angles = Eot.new

describe 'Tests jd of 2_456_885.0 ' do
  before(:all) do
    angles.jd = 2_456_885.0
    angles.set_t
  end

  it 'expected from angles.jd \
                 2_456_885.0' do
    assert_equal(2_456_885.0,
                 angles.jd)
  end

  it 'expected from angles.date.to_s \
                 "2014-08-15T12:00:00+00:00"' do
    assert_equal('2014-08-15T12:00:00+00:00',
                 angles.date_dt.to_s)
  end

  it 'expected from angles.al_sun \
                 2.488710339844 ' do
    assert_equal(2.488710339844,
                 angles.al_sun)
  end
end

describe 'Tests jd of 2_456_885.0 ' do
  before(:all) do
    angles.jd = 2_456_885.0
    angles.set_t
  end

  it 'expected from angles.centre \
                 -0.021413249721 ' do
    assert_equal(-0.021413249721,
                 angles.center)
  end

  it 'expected from angles.dec_sun \
                 0.244014102186 ' do
    assert_equal(0.244014102186,
                 angles.dec_sun)
  end

  it 'expected from angles.eccentricity_earth \
                 0.016702468499 ' do
    assert_equal(0.016702468499,
                 angles.eccentricity_earth)
  end
end

describe 'Tests jd of 2_456_885.0 ' do
  before(:all) do
    angles.jd = 2_456_885.0
    angles.set_t
  end

  it 'expected from angles.eq_of_equinox \
                 3.4412912e-05 ' do
    assert_equal(3.4412912e-05,
                 angles.eq_of_equinox)
  end

  it 'expected from angles.eot \
                 -0.019617575867 ' do
    assert_equal(-0.019617575867,
                 angles.eot)
  end

  it 'expected from angles.gha_sun \
                 6.263568419405 ' do
    assert_equal(6.263568419405,
                 angles.gha_sun)
  end
end

describe 'Tests jd of 2_456_885.0 ' do
  before(:all) do
    angles.jd = 2_456_885.0
    angles.set_t
  end

  it 'expected from angles.gml_sun \
                 2.510191280414 ' do
    assert_equal(2.510191280414,
                 angles.gml_sun)
  end

  it 'expected from angles.ha_sun(1) \
                 1.585784187794 ' do
    assert_equal(1.585784187794,
                 angles.ha_sun(1))
  end

  it 'expected from angles.ma_sun \
                 3.850800396604 ' do
    assert_equal(3.850800396604,
                 angles.ma_sun)
  end
end

describe 'Tests jd of 2_456_885.0 ' do
  before(:all) do
    angles.jd = 2_456_885.0
    angles.set_t
  end

  it 'expected from angles.ml_aries \
                 2.510089864987 ' do
    assert_equal(2.510089864987,
                 angles.ml_aries)
  end

  it 'expected from angles.mo_earth \
                 0.409059402543 ' do
    assert_equal(0.409059402543,
                 angles.mo_earth)
  end
end

describe 'Tests jd of 2_456_885.0 ' do
  before(:all) do
    angles.jd = 2_456_885.0
    angles.set_t
  end

  #   it 'expected from angles.omega \
  #                  -2.7528817371 ' do
  #     assert_equal(-2.7528817371,
  #                  angles.omega)
  #   end

  it 'expected from angles.right_ascension_sun \
                 2.529741165432 ' do
    assert_equal(2.529741165432,
                 angles.right_ascension_sun)
  end

  it 'expected from angles.ta_sun \
                 3.829387146883 ' do
    assert_equal(3.829387146883,
                 angles.ta_sun)
  end
end

describe 'Tests jd of 2_456_885.0 ' do
  before(:all) do
    angles.jd = 2_456_885.0
    angles.set_t
  end

  it 'expected from angles.tl_aries \
                 2.510124277657 ' do
    assert_equal(2.510124277657,
                 angles.tl_aries)
  end

  it 'expected from angles.tl_sun \
                 2.488778030693' do
    assert_equal(2.488778030693,
                 angles.tl_sun)
  end

  it 'expected from angles.to_earth \
                 0.409018704616 ' do
    assert_equal(0.409018704616,
                 angles.to_earth)
  end
end

describe 'Tests jd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.5
    angles.set_t
  end

  it 'expected from angles.jd \
                 2_455_055.5 ' do
    assert_equal(2_455_055.5,
                 angles.jd)
  end

  it 'expected from angles.date.to_s \
                  2009-08-12T00:00:00+00:00 ' do
    assert_equal('2009-08-12T00:00:00+00:00',
                 angles.date_dt.to_s)
  end

  it 'expected from angles.al_sun \
                 2.433588355569 ' do
    assert_equal(2.433588355569,
                 angles.al_sun)
  end
end

describe 'Tests jd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.5
    angles.set_t
  end

  it 'expected from angles.center \
                 -0.01999553711 ' do
    assert_equal(-0.01999553711,
                 angles.center)
  end

  it 'expected from angles.dec_sun \
                 0.261657905194 ' do
    assert_equal(0.261657905194,
                 angles.dec_sun)
  end

  it 'expected from angles.eccentricity_earth \
                 0.016704575588 ' do
    assert_equal(0.016704575588,
                 angles.eccentricity_earth)
  end
end

describe 'Tests jd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.5
    angles.set_t
  end

  it 'expected from angles.eq_of_equinox \
                 6.99279e-05 ' do
    assert_equal(6.99279e-05,
                 angles.eq_of_equinox)
  end

  it 'expected from angles.eot \
                 -0.022219260849' do
    assert_equal(-0.022219260849,
                 angles.eot)
  end

  it 'expected from angles.gha_sun \
                 3.119368205931 ' do
    assert_equal(3.119368205931,
                 angles.gha_sun)
  end
end

describe 'Tests jd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.5
    angles.set_t
  end

  it 'expected from angles.gml_sun \
                 2.453610341653 ' do
    assert_equal(2.453610341653,
                 angles.gml_sun)
  end

  it 'expected from angles.ha_sun(nil) \
                 1.585852673609 ' do
    assert_equal(1.585852673609,
                 angles.ha_sun(nil))
  end

  it 'expected from angles.ha_sun(1) \
                 1.585852673609 ' do
    assert_equal(1.585852673609,
                 angles.ha_sun(1))
  end
end

describe 'Tests jd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.5
    angles.set_t
  end

  it 'expected from angles.ha_sun(2) \
                 1.679220363624 ' do
    assert_equal(1.679220363624,
                 angles.ha_sun(2))
  end

  it 'expected from angles.ha_sun(3) \
                 1.787731722626 ' do
    assert_equal(1.787731722626,
                 angles.ha_sun(3))
  end

  it 'expected from angles.ha_sun(4) \
                 1.896426397231 ' do
    assert_equal(1.896426397231,
                 angles.ha_sun(4))
  end
end

describe 'Tests jd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.5
    angles.set_t
  end

  it 'expected from angles.ma_sun \
                 3.7957228039 ' do
    assert_equal(3.7957228039,
                 angles.ma_sun)
  end

  it 'expected from angles.ml_aries \
                 5.59510143176 ' do
    assert_equal(5.59510143176,
                 angles.ml_aries)
  end

  it 'expected from angles.mo_earth \
                 0.40907077629 ' do
    assert_equal(0.40907077629,
                 angles.mo_earth)
  end
end

describe 'Tests jd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.5
    angles.set_t
  end

  #   it 'expected from angles.omega \
  #                  -1.0615640635 ' do
  #     assert_equal(-1.0615640635,
  #                  angles.omega)
  #   end

  it 'expected from angles.right_ascension_sun \
                 2.475803153528 ' do
    assert_equal(2.475803153528,
                 angles.right_ascension_sun)
  end

  it 'expected from angles.ta_sun \
                 3.775727266791' do
    assert_equal(3.775727266791,
                 angles.ta_sun)
  end
end

describe 'Tests jd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.5
    angles.set_t
  end

  it 'expected from angles.tl_aries \
                 5.595171359459 ' do
    assert_equal(5.595171359459,
                 angles.tl_aries)
  end

  it 'expected from angles.tl_sun \
                 2.433614804543 ' do
    assert_equal(2.433614804543,
                 angles.tl_sun)
  end

  it 'expected from angles.to_earth \
                 0.409093365181' do
    assert_equal(0.409093365181,
                 angles.to_earth)
  end
end
