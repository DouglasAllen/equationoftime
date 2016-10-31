
# aliased_time_displays_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

time_displays = Eot.new

describe 'Eot time_displays using ajd of 2456885.0' do
  before(:each) do
    time_displays.ajd = 2_456_885.0
    ajd = time_displays.ajd
    time_displays.ma_ta_set
    # check date for this ajd when needed.
    time_displays.date = time_displays.ajd_to_datetime(ajd)
  end

  it 'expected  from time_displays.julian_period_day_fraction_to_time \
                  12:00:00 ' do
    assert_equal '12:00:00',
                 time_displays.julian_period_day_fraction_to_time
    assert_equal '12:00:00',
                 time_displays.julian_period_day_fraction_to_time(nil)
    assert_equal '12:00:00',
                 time_displays.julian_period_day_fraction_to_time(0)
  end

  it 'expected  from time_displays.display_equation_of_time \
                  -04m, 29.2s ' do
    assert_equal '-04m, 29.2s',
                 time_displays.display_equation_of_time
  end

  it 'expected from time_displays.jd_to_date_string() \
                  2000-01-01 ' do
    assert_equal '2000-01-01',
                 time_displays.jd_to_date_string()
    assert_equal '2000-01-01',
                 time_displays.jd_to_date_string(nil)
    assert_equal '-4712-01-01',
                 time_displays.jd_to_date_string(0)
  end

  it 'expected from  time_displays.jd_to_date_string(time_displays.ajd) \
                  2014-08-15 ' do
    assert_equal '2014-08-15',
                 time_displays.jd_to_date_string(time_displays.ajd)
  end

  it 'expected from time_displays.display_time_string(time_displays.date) \
                  12:00:00.000 ' do
    assert_equal '12:00:00.000',
                 time_displays.display_time_string(time_displays.date)
  end
end

describe 'Eot time_displays using ajd of 2_455_055.5' do
  before(:each) do
    time_displays.ajd = 2_455_055.5
    ajd = time_displays.ajd
    time_displays.ma_ta_set
    # check date for this ajd when needed.
    time_displays.date = time_displays.ajd_to_datetime(ajd)
  end

  it 'expected  from time_displays.julian_period_day_fraction_to_time \
                  12:00:00 ' do
    assert_equal '12:00:00',
                 time_displays.julian_period_day_fraction_to_time
    assert_equal '12:00:00',
                 time_displays.julian_period_day_fraction_to_time(nil)
    assert_equal '12:00:00',
                 time_displays.julian_period_day_fraction_to_time(0)
  end

  it 'expected  from time_displays.display_equation_of_time \
                  -05m, 04.70s ' do
    assert_equal '-05m, 04.70s',
                 time_displays.display_equation_of_time
  end

  it 'expected from time_displays.jd_to_date_string() \
                  2000-01-01 ' do
    assert_equal '2000-01-01',
                 time_displays.jd_to_date_string()
    assert_equal '2000-01-01',
                 time_displays.jd_to_date_string(nil)
    assert_equal '-4712-01-01',
                 time_displays.jd_to_date_string(0)
  end

  it 'expected from  time_displays.jd_to_date_string(time_displays.ajd) \
                  2009-08-11 ' do
    assert_equal '2009-08-11',
                 time_displays.jd_to_date_string(time_displays.ajd)
  end

  it 'expected from time_displays.display_time_string(time_displays.date) \
                  00:00:00.000 ' do
    assert_equal '00:00:00.000',
                 time_displays.display_time_string(time_displays.date)
  end
end
