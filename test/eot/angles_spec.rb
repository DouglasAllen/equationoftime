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

  it 'expected   3.850800396603892 for angles.ma'do
    assert_equal(3.850800396603892, angles.ma.round(15))
  end

  it 'expected   2.488710339843615 from angles.al_sun()? ' do
    assert_equal(2.488710339843615, angles.al_sun.round(15))
  end

  it 'expected   -0.021413249720702 from angles.centre()? ' do
    assert_equal(-0.021413249720702, angles.center.round(15))
  end

  it 'expected   -0.794336157044703 from angles.cosine_al_sun()? ' do
    assert_equal(-0.794336157044703, angles.cosine_al_sun.round(15))
  end

  it 'expected   -0.794377275957492 from  angles.cosine_tl_sun()? ' do
    assert_equal(-0.794377275957492, angles.cosine_tl_sun.round(15))
  end

  it 'expected   0.917511534681191 from  angles.cosine_to_earth()? ' do
    assert_equal(0.917511534681191, angles.cosine_to_earth.round(15))
  end

  it 'expected   0.244014102185436 from  angles.dec_sun()? ' do
    assert_equal(0.244014102185436, angles.dec_sun.round(15))
  end

  it 'expected   -4.0697927182e-05 from  angles.delta_epsilon()? ' do
    assert_equal(-4.0697927182e-05, angles.delta_epsilon.round(15))
  end

  it 'expected   -0.041030825588035 from  angles.delta_oblique()? ' do
    assert_equal(-0.041030825588035, angles.delta_oblique.round(15))
  end

  it 'expected   0.021413249720702 from  angles.delta_orbit()? ' do
    assert_equal(0.021413249720702, angles.delta_orbit.round(15))
  end

  it 'expected   3.7512382184e-05 from  angles.delta_psi()? ' do
    assert_equal(3.7512382184e-05, angles.delta_psi.round(15))
  end

  it 'expected   0.016702468499021 from  \
      angles.eccentricity_earth()? ' do
    assert_equal(0.016702468499021, angles.eccentricity_earth.round(15))
  end

  it 'expected   3.4412912434e-05 from  angles.eq_of_equinox()? ' do
    assert_equal(3.4412912434e-05, angles.eq_of_equinox.round(15))
  end

  it 'expected   -0.019617575867333 from  angles.eot()? ' do
    assert_equal(-0.019617575867333, angles.eot.round(15))
  end

  it 'expected   2.510191280414143 from  angles.gml_sun()? ' do
    assert_equal(2.510191280414143, angles.gml_sun.round(15))
  end

  it 'expected   1.585784187793961 from  angles.ha_sun(1)? ' do
    assert_equal(1.585784187793961, angles.ha_sun(1).round(15))
  end

  it 'expected   3.850800396603892 from  angles.ma_sun()? ' do
    assert_equal(3.850800396603892, angles.ma_sun.round(15))
  end

  it 'expected   2.510089864980358 from  angles.ml_aries()? ' do
    assert_equal(2.510089864980358, angles.ml_aries.round(15))
  end

  it 'expected   0.409059402542658 from  angles.mo_earth()? ' do
    assert_equal(0.409059402542658, angles.mo_earth.round(15))
  end

  it 'expected   -2.752881737149469 from  angles.omega()? ' do
    assert_equal(-2.752881737149469, angles.omega.round(15))
  end

  it 'expected   2.52974116543165 from  angles.ra_sun()? ' do
    assert_equal(2.52974116543165, angles.ra_sun.round(15))
  end

  it 'expected   0.607478451972951 from  angles.sine_al_sun()? ' do
    assert_equal(0.607478451972951, angles.sine_al_sun.round(15))
  end

  it 'expected   0.607424681291726 from  angles.sine_tl_sun()? ' do
    assert_equal(0.607424681291726, angles.sine_tl_sun.round(15))
  end

  it 'expected   3.82938714688319 from  angles.ta_sun()? ' do
    assert_equal(3.82938714688319, angles.ta_sun.round(15))
  end

  it 'expected   2.510124277653148 from  angles.tl_aries()? ' do
    assert_equal(2.510124277653148, angles.tl_aries.round(15))
  end

  it 'expected   2.48877803069344 from  angles.tl_sun()? ' do
    assert_equal(2.48877803069344, angles.tl_sun.round(15))
  end

  it 'expected   0.409018704615477 from angles.to_earth()? ' do
    assert_equal(0.409018704615477, angles.to_earth.round(15))
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

  it 'expected   3.787121818894921, from angles.' do
    assert_equal(3.787121818894921, angles.ma.round(15))
  end

  it 'expected   2.425214064572504 from angles.al_sun()? ' do
    assert_equal(2.425214064572504, angles.al_sun.round(15))
  end

  it 'expected   -0.01976841345671 from angles.center()? ' do
    assert_equal(-0.01976841345671, angles.center.round(15))
  end

  it 'expected   -0.754188696997501 from angles.cosine_al_sun()? ' do
    assert_equal(-0.754188696997501, angles.cosine_al_sun.round(15))
  end

  it 'expected   -0.754206076993668 from angles.cosine_tl_sun()? ' do
    assert_equal(-0.754206076993668, angles.cosine_tl_sun.round(15))
  end

  it 'expected   0.917481808811234 from angles.cosine_to_earth()? ' do
    assert_equal(0.917481808811234, angles.cosine_to_earth.round(15))
  end

  it 'expected   0.26426912722944 from angles.dec_sun()? ' do
    assert_equal(0.26426912722944, angles.dec_sun.round(15))
  end

  it 'expected   2.26615067e-05 from angles.delta_epsilon()? ' do
    assert_equal(2.26615067e-05, angles.delta_epsilon.round(15))
  end

  it 'expected   -0.042349048974764 from angles.delta_oblique()? ' do
    assert_equal(-0.042349048974764, angles.delta_oblique.round(15))
  end

  it 'expected   0.01976841345671 from angles.delta_orbit()? ' do
    assert_equal(0.01976841345671, angles.delta_orbit.round(15))
  end

  it 'expected   7.639341523e-05 from angles.delta_psi()? ' do
    assert_equal(7.639341523e-05, angles.delta_psi.round(15))
  end

  it 'expected   0.016704576164208 from \
      angles.eccentricity_earth()? ' do
    assert_equal(0.016704576164208, \
                 angles.eccentricity_earth.round(15))
  end

  it 'expected   7.0078795851e-05 from angles.eq_of_equinox()? ' do
    assert_equal(7.0078795851e-05, angles.eq_of_equinox.round(15))
  end

  it 'expected   -0.022580635518054 from angles.eot()? ' do
    assert_equal(-0.022580635518054, angles.eot.round(15))
  end

  it 'expected   2.445008945789877 from  angles.gml_sun()? ' do
    assert_equal(2.445008945789877, angles.gml_sun.round(15))
  end

  it 'expected   1.585863261753274 from angles.ha_sun(1)? ' do
    assert_equal(1.585863261753274, angles.ha_sun(1).round(15))
  end

  it 'expected   3.787121818894921 from angles.ma_sun()? ' do
    assert_equal(3.787121818894921, angles.ma_sun.round(15))
  end

  it 'expected   2.444907382260759 from angles.ml_aries()? ' do
    assert_equal(2.444907382260759, angles.ml_aries.round(15))
  end

  it 'expected   0.409070779398149 from angles.mo_earth()? ' do
    assert_equal(0.409070779398149, angles.mo_earth.round(15))
  end

  it 'expected   -1.061564063526855 from angles.omega()? ' do
    assert_equal(-1.061564063526855, angles.omega.round(15))
  end

  it 'expected   2.467563113547267 from angles.ra_sun()? ' do
    assert_equal(2.467563113547267, angles.ra_sun.round(15))
  end

  it 'expected   0.656657756613909 from angles.sine_al_sun()? ' do
    assert_equal(0.656657756613909, angles.sine_al_sun.round(15))
  end

  it 'expected   0.656637794697976 from angles.sine_tl_sun()? ' do
    assert_equal(0.656637794697976, angles.sine_tl_sun.round(15))
  end

  it 'expected   3.767353405438211 from angles.ta_sun()? ' do
    assert_equal(3.767353405438211, angles.ta_sun.round(15))
  end

  it 'expected   2.444977460787291 from angles.tl_aries()? ' do
    assert_equal(2.444977460787291, angles.tl_aries.round(15))
  end

  it 'expected   2.425240532333168 from angles.tl_sun()? ' do
    assert_equal(2.425240532333168, angles.tl_sun.round(15))
  end

  it 'expected   0.409093440904849 from angles.to_earth()? ' do
    assert_equal(0.409093440904849, angles.to_earth.round(15))
  end
end
