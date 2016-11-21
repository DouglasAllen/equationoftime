
# trig_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

angles = Eot.new

describe 'Tests cosines for ajd of 2_456_885.0 ' do
  before(:each) do
    angles.jd = 2_456_885.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected from angles.cosine_al_sun.round(10) \
                 -0.794336157 ' do
    assert_equal(-0.794336157,
                 angles.cosine_al_sun.round(10))
  end

  it 'expected from angles.cosine_tl_sun.round(10) \
                 -0.794336157 ' do
    assert_equal(-0.794336157,
                 angles.cosine_tl_sun.round(10))
  end

  it 'expected from angles.cosine_to_earth.round(10) \
                 0.9175115347 ' do
    assert_equal(0.9175115347,
                 angles.cosine_to_earth.round(10))
  end
end

describe 'Tests sines for ajd of 2_456_885.0 ' do
  before(:each) do
    angles.jd = 2_456_885.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected from angles.sine_al_sun.round(10) \
                 0.607478452 ' do
    assert_equal(0.607478452,
                 angles.sine_al_sun.round(10))
  end

  it 'expected from angles.sine_tl_sun.round(10) \
                 -0.8381127163 ' do
    assert_equal(-0.8381127163,
                 angles.sine_tl_sun.round(10))
  end

  it 'expected from angles.sine_to_earth.round(10) \
                 0.3977091698 ' do
    assert_equal(0.3977091698,
                 angles.sine_to_earth.round(10))
  end
end

describe 'Tests cosines for ajd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected from angles.cosine_al_sun.round(10) \
                 -0.754188697 ' do
    assert_equal(-0.754188697,
                 angles.cosine_al_sun.round(10))
  end

  it 'expected from angles.cosine_tl_sun.round(10) \
                 -0.754188697 ' do
    assert_equal(-0.754188697,
                 angles.cosine_tl_sun.round(10))
  end

  it 'expected from angles.cosine_to_earth.round(10) \
                 0.9174818088 ' do
    assert_equal(0.9174818088,
                 angles.cosine_to_earth.round(10))
  end
end

describe 'Tests sines for ajd of 2_455_055.5 ' do
  before(:each) do
    angles.jd = 2_455_055.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected from angles.sine_al_sun.round(10) \
                 0.6566577566 ' do
    assert_equal(0.6566577566,
                 angles.sine_al_sun.round(10))
  end

  it 'expected from angles.sine_tl_sun.round(10) \
                 0.9344039546 ' do
    assert_equal(0.9344039546,
                 angles.sine_tl_sun.round(10))
  end

  it 'expected from angles.sine_to_earth.round(10) \
                 0.3977777401 ' do
    assert_equal(0.3977777401,
                 angles.sine_to_earth.round(10))
  end
end
