# c_ext_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

c_ext = Eot.new

describe 'Tests ajd of 2456885.0 ' do
  before(:each) do
    c_ext.ajd = 2_456_885.0
    ajd = c_ext.ajd
    c_ext.ma_ta_set
    # check date for this ajd when needed.
    c_ext.date = c_ext.ajd_to_datetime(ajd)
    @ma = c_ext.ma
    @eqc = c_ext.center
    @ma + @eqc
    @ta = c_ext.ta_sun # @ta * 180 / Math::PI
    @al = c_ext.al_sun
    @ca = c_ext.cosine_al_sun
    @o = c_ext.omega
    @ra = c_ext.right_ascension
    @t = c_ext.t
    c_ext.mu(@t)
    c_ext.eqc(@t)
    c_ext.eqc(@t) + c_ext.mu(@t)
    @et = c_ext.eot
    @y0 = c_ext.sine_al_sun * c_ext.cosine_to_earth
  end

  it 'expected from c_ext.mu(@t) \
                 3.8508003966039035' do
    assert_equal(@ma,
                 c_ext.mu(@t))
  end

  it 'expected from c_ext.eqc(@t) \
                 -0.021413249720702764 ' do
    assert_equal(@eqc,
                 c_ext.eqc(@t))
  end

  it 'expected from c_ext.ta(@t) \
                3.829387146883201 ' do
    assert_equal(@ta,
                 c_ext.ta(@t))
  end

  it 'expected from c_ext.al(@ma, @t, @o) \
                 2.488710339843623 ' do
    assert_equal(@al,
                 c_ext.al(@t))
  end

  it 'expected from  \
                  ' do
    assert_equal(@ra,
                 c_ext.sun_ra(@y0, @ca))
  end
end
