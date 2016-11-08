# aliased_trig_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_trig = Eot.new

describe 'Tests ajd of 2456885.0 ' do
  before(:each) do
    aliased_trig.jd = 2_456_885.0
    ajd = aliased_trig.ajd
    aliased_trig.ma_ta_set
    # check date for this ajd when needed.
    aliased_trig.date = aliased_trig.ajd_to_datetime(ajd)
  end

  it 'expected from aliased_trig.cosine_apparent_longitude.round(10) \
                 -0.794336157 ' do
    assert_equal(-0.794336157,
                 aliased_trig.cosine_apparent_longitude.round(10))
  end

  it 'expected from aliased_trig.cosalsun.round(10) \
                 -0.794336157 ' do
    assert_equal(-0.794336157,
                 aliased_trig.cosalsun.round(10))
  end

  it 'expected from \ aliased_trig.cosine_true_longitude.round(10) \
                 -0.794336157 ' do
    assert_equal(-0.794336157,
                 aliased_trig.cosine_true_longitude.round(10))
  end

  it 'expected from aliased_trig.cosine_true_obliquity.round(10) \
                 0.9175115347 ' do
    assert_equal(0.9175115347,
                 aliased_trig.cosine_true_obliquity.round(10))
  end

  it 'expected from aliased_trig.sine_apparent_longitude.round(10) \
                 0.607478452 ' do
    assert_equal(0.607478452,
                 aliased_trig.sine_apparent_longitude.round(10))
  end

  it 'expected from aliased_trig.sine_true_longitude.round(10) \
                 -0.8381127163 ' do
    assert_equal(-0.8381127163,
                 aliased_trig.sine_true_longitude.round(10))
  end

  it 'expected from aliased_trig.sine_true_obliquity.round(10) \
                 0.3977091698 ' do
    assert_equal(0.3977091698,
                 aliased_trig.sine_true_obliquity.round(10))
  end
end

describe 'Tests ajd of 2455055.5 ' do
  before(:each) do
    aliased_trig.jd = 2_455_055.0
    ajd = aliased_trig.ajd
    aliased_trig.ma_ta_set
    # check date for this ajd when needed.
    aliased_trig.date = aliased_trig.ajd_to_datetime(ajd)
  end

  it 'expected from aliased_trig.cosine_apparent_longitude.round(10) \
                 -0.754188697 ' do
    assert_equal(-0.754188697,
                 aliased_trig.cosine_apparent_longitude.round(10))
  end

  it 'expected from aliased_trig.cosalsun.round(10) \
                 -0.754188697 ' do
    assert_equal(-0.754188697,
                 aliased_trig.cosalsun.round(10))
  end

  it 'expected from \ aliased_trig.cosine_true_longitude.round(10) \
                 -0.754188697 ' do
    assert_equal(-0.754188697,
                 aliased_trig.cosine_true_longitude.round(10))
  end

  it 'expected from aliased_trig.cosine_true_obliquity.round(10) \
                 0.9174818088 ' do
    assert_equal(0.9174818088,
                 aliased_trig.cosine_true_obliquity.round(10))
  end

  it 'expected from aliased_trig.sine_apparent_longitude.round(10) \
                 0.6566577566 ' do
    assert_equal(0.6566577566,
                 aliased_trig.sine_apparent_longitude.round(10))
  end

  it 'expected from aliased_trig.sine_true_longitude.round(10) \
                 0.9344039546 ' do
    assert_equal(0.9344039546,
                 aliased_trig.sine_true_longitude.round(10))
  end

  it 'expected from aliased_trig.sine_true_obliquity.round(10) \
                 0.3977777401 ' do
    assert_equal(0.3977777401,
                 aliased_trig.sine_true_obliquity.round(10))
  end
end
