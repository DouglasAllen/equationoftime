# displays_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

displays = Eot.new

describe 'Eot displays using ajd of 2456885.0' do

  before(:each) do
    displays.jd               =   2_456_885.0
    displays.ajd = displays.jd
    displays.set_t_ma

    ajd   = displays.jd
    # check date for this ajd when needed.
    displays.date = displays.ajd_to_datetime(ajd)
  end

  it 'expected   2456885.0 for displays.ajd'do
    assert_equal 2_456_885.0, displays.ajd
  end

  it 'expected   "2014-08-15T12:00:00+00:00", from displays.date.to_s' do
    assert_equal '2014-08-15T12:00:00+00:00', displays.date.to_s
  end


  it 'expected   "12:00:00" from displays.day_fraction() ' do
    assert_equal '12:00:00', displays.day_fraction
    assert_equal '12:00:00', displays.day_fraction(nil)
    assert_equal '12:00:00', displays.day_fraction(0)
  end


  it 'expected   "-04m, 29.76s" from displays.string_eot() ' do
    assert_equal "-04m, 29.76s", displays.string_eot
  end

  it 'expected   "2014-08-15" from displays.jd_to_date() ' do
    # Note: set a new @jd if you want a new conversion.
    assert_equal "2014-08-15", displays.jd_to_date
  end

  it 'expected   "12:00:00.000" from displays.time() ' do
    assert_equal '12:00:00.000', displays.time
    assert_equal '12:00:00.000', displays.time(nil)
    assert_equal '12:00:00.000', displays.time(0)
  end

  it 'expected   "12:00:00.000" from \
      displays.time(.date)? ' do
    assert_equal '12:00:00.000', \
                 displays.time(displays.date)
  end

end

describe 'Eot displays explicit values' do

  it 'expected   "16:40:40.800" from displays.time(16.6780) ' do
    assert_equal '16:40:40.800', displays.time(16.6780)
  end

  it 'expected   "17:59:16.800" from displays.time(17988) ' do
    displays.date = Date.today.to_s
    assert_equal '17:59:16.800', displays.time(17.988)
  end

end
