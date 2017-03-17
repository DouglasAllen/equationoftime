
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

  it 'expected from angles.cosine_al_sun \
                 -0.794336157045 ' do
    assert_equal(-0.794336157045,
                 angles.cosine_al_sun)
  end

  it 'expected from angles.cosine_tl_sun \
                 -0.794336157045 ' do
    assert_equal(-0.794336157045,
                 angles.cosine_tl_sun)
  end

  it 'expected from angles.cosine_to_earth \
                 0.917511534681 ' do
    assert_equal(0.917511534681,
                 angles.cosine_to_earth)
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

  it 'expected from angles.sine_al_sun \
                 0.607478451973 ' do
    assert_equal(0.607478451973,
                 angles.sine_al_sun)
  end

  it 'expected from angles.sine_tl_sun \
                 -0.838112716165 ' do
    assert_equal(-0.838112716165,
                 angles.sine_tl_sun)
  end

  it 'expected from angles.sine_to_earth \
                 0.39770916978 ' do
    assert_equal(0.39770916978,
                 angles.sine_to_earth)
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

  it 'expected from angles.cosine_al_sun \
                 -0.754188696998 ' do
    assert_equal(-0.754188696998,
                 angles.cosine_al_sun)
  end

  it 'expected from angles.cosine_tl_sun \
                 -0.754188696998 ' do
    assert_equal(-0.754188696998,
                 angles.cosine_tl_sun)
  end

  it 'expected from angles.cosine_to_earth \
                 0.917481808811 ' do
    assert_equal(0.917481808811,
                 angles.cosine_to_earth)
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

  it 'expected from angles.sine_al_sun \
                 0.656657756614 ' do
    assert_equal(0.656657756614,
                 angles.sine_al_sun)
  end

  it 'expected from angles.sine_tl_sun \
                 0.934403954679 ' do
    assert_equal(0.934403954679,
                 angles.sine_tl_sun)
  end

  it 'expected from angles.sine_to_earth \
                 0.397777740077 ' do
    assert_equal(0.397777740077,
                 angles.sine_to_earth)
  end
end
