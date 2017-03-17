
# aliased_trig_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_trig = Eot.new

describe 'Tests jd of 2_456_885.0 ' do
  before(:each) do
    aliased_trig.jd = 2_456_885.0
    aliased_trig.ma_ta_set
  end

  it 'expected from aliased_trig.cosine_apparent_longitude \
                 -0.79433615704' do
    assert_equal(-0.79433615704,
                 aliased_trig.cosine_apparent_longitude)
  end

  it 'expected from aliased_trig.cosalsun \
                 -0.79433615704' do
    assert_equal(-0.79433615704,
                 aliased_trig.cosalsun)
  end

  it 'expected from aliased_trig.cosine_true_longitude \
                 -0.79433615704' do
    assert_equal(-0.79433615704,
                 aliased_trig.cosine_true_longitude)
  end
end

describe 'Tests jd of 2_456_885.0 ' do
  before(:each) do
    aliased_trig.jd = 2_456_885.0
    aliased_trig.ma_ta_set
  end

  it 'expected from aliased_trig.cosine_true_obliquity \
                 0.917511534681 ' do
    assert_equal(0.917511534681,
                 aliased_trig.cosine_true_obliquity)
  end

  it 'expected from aliased_trig.sine_apparent_longitude \
                 0.607478451973 ' do
    assert_equal(0.607478451973,
                 aliased_trig.sine_apparent_longitude)
  end

  it 'expected from aliased_trig.sine_true_longitude \
                 -0.83811271616' do
    assert_equal(-0.83811271616,
                 aliased_trig.sine_true_longitude)
  end

  it 'expected from aliased_trig.sine_true_obliquity \
                 0.39770916978 ' do
    assert_equal(0.39770916978,
                 aliased_trig.sine_true_obliquity)
  end
end

describe 'Tests jd of 2455055.5 ' do
  before(:each) do
    aliased_trig.jd = 2_455_055.5
    aliased_trig.ma_ta_set
  end

  it 'expected from aliased_trig.cosine_apparent_longitude \
                 -0.75966123086' do
    assert_equal(-0.75966123086,
                 aliased_trig.cosine_apparent_longitude)
  end

  it 'expected from aliased_trig.cosalsun \
                 -0.75966123086' do
    assert_equal(-0.75966123086,
                 aliased_trig.cosalsun)
  end

  it 'expected from aliased_trig.cosine_true_longitude \
                 -0.75966123086' do
    assert_equal(-0.75966123086,
                 aliased_trig.cosine_true_longitude)
  end

  it 'expected from aliased_trig.cosine_true_obliquity \
                 0.917481838932 ' do
    assert_equal(0.917481838932,
                 aliased_trig.cosine_true_obliquity)
  end
end

describe 'Tests jd of 2455055.5 ' do
  before(:each) do
    aliased_trig.jd = 2_455_055.5
    aliased_trig.ma_ta_set
  end

  it 'expected from aliased_trig.sine_apparent_longitude \
                 0.650319009659' do
    assert_equal(0.650319009659,
                 aliased_trig.sine_apparent_longitude)
  end

  it 'expected from aliased_trig.sine_true_longitude \
                 0.80909806006' do
    assert_equal(0.80909806006,
                 aliased_trig.sine_true_longitude)
  end

  it 'expected from aliased_trig.sine_true_obliquity \
                 0.397777670601 ' do
    assert_equal(0.397777670601,
                 aliased_trig.sine_true_obliquity)
  end
end
