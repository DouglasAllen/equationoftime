
# c_ext_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

c_ext = Eot.new

describe 'Tests ajd of 2_456_885.0 ' do
  before(:each) do
    c_ext.jd = 2_456_885.0
    ajd = c_ext.ajd
    c_ext.ma_ta_set
    # check date for this ajd when needed.
    c_ext.date = c_ext.ajd_to_datetime(ajd)
    @t = c_ext.t
    @ctoe = c_ext.to_earth
  end

  it 'expected from c_ext.mu(@t).round(10) \
                 3.8508003966' do
    assert_equal(3.8508003966,
                 c_ext.mu(@t).round(10))
  end

  it 'expected from c_ext.ml(@t).round(10) \
                 2.5101912804' do
    assert_equal(2.5101912804,
                 c_ext.ml(@t).round(10))
  end
end

describe 'Tests ajd of 2_456_885.0 ' do
  before(:each) do
    c_ext.jd = 2_456_885.0
    ajd = c_ext.ajd
    c_ext.ma_ta_set
    # check date for this ajd when needed.
    c_ext.date = c_ext.ajd_to_datetime(ajd)
    @t = c_ext.t
    @ctoe = c_ext.to_earth
  end

  it 'expected from c_ext.eqc(@t).round(10) \
                 -0.0214132497' do
    assert_equal(-0.0214132497,
                 c_ext.eqc(@t).round(10))
  end

  it 'expected from c_ext.ta(@t).round(10) \
                 3.8293871469 ' do
    assert_equal(3.8293871469,
                 c_ext.ta(@t).round(10))
  end
end

describe 'Tests ajd of 2_456_885.0 ' do
  before(:each) do
    c_ext.jd = 2_456_885.0
    ajd = c_ext.ajd
    c_ext.ma_ta_set
    # check date for this ajd when needed.
    c_ext.date = c_ext.ajd_to_datetime(ajd)
    @t = c_ext.t
    @ctoe = c_ext.to_earth
  end

  it 'expected from c_ext.tl(@t).round(10) \
                 2.4887780307 ' do
    assert_equal(2.4887780307,
                 c_ext.tl(@t).round(10))
  end

  it 'expected from c_ext.al(@ma, @t, @o).round(10) \
                 2.4887103398 ' do
    assert_equal(2.4887103398,
                 c_ext.al(@t).round(10))
  end

  it 'expected from c_ext.sun_ra(@t, @ctoe).round(10) \
                 2.5297411654 ' do
    assert_equal(2.5297411654,
                 c_ext.sun_ra(@t, @ctoe).round(10))
  end
end
