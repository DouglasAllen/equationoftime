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
    displays.ma_ta_set

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


  it 'expected   "12:00:00" from displays.string_day_fraction_to_time() ' do
    assert_equal '12:00:00', displays.string_day_fraction_to_time
    assert_equal '12:00:00', displays.string_day_fraction_to_time(nil)
    assert_equal '12:00:00', displays.string_day_fraction_to_time(0)
  end


  it 'expected   "-04m, 29.98s" from displays.string_eot() ' do
    assert_equal "-04m, 29.98s", displays.string_eot
  end

  it 'expected   "2000-01-01" from displays.string_jd_to_date() ' do
    assert_equal '2000-01-01', displays.string_jd_to_date
    assert_equal '2000-01-01', displays.string_jd_to_date(nil)
    assert_equal '2000-01-01', displays.string_jd_to_date(0)
  end

  it 'expected  "2014-08-15" from \
      displays.string_jd_to_date(displays.ajd)? ' do
    assert_equal '2014-08-15', displays.string_jd_to_date(displays.ajd)
  end

  it 'expected   "12:00:00.000" from displays.string_time() ' do
    assert_equal '12:00:00.000', displays.string_time
    assert_equal '12:00:00.000', displays.string_time(nil)
    assert_equal '12:00:00.000', displays.string_time(0)
  end

  it 'expected   "12:00:00.000" from \
      displays.string_time(.date)? ' do
    assert_equal '12:00:00.000', \
                 displays.string_time(displays.date)
  end

end

describe 'Eot displays explicit values' do

  it 'expected   "16:40:40.800" from displays.string_time(16.6780) ' do
    assert_equal '16:40:40.800', displays.string_time(16.6780)
  end

  it 'expected   "17:59:16.800" from displays.string_time(17988) ' do
    displays.date = Date.today.to_s
    assert_equal '17:59:16.800', displays.string_time(17.988)
  end

end
