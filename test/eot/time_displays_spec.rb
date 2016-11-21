# time_displays_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

time_displays = Eot.new

describe 'time_displays of dates for ajd of 2_456_885.0' do
  before(:each) do
    time_displays.jd = 2_456_885.0
    time_displays.set_t
    time_displays.date =
      time_displays.ajd_to_datetime(time_displays.jd)
  end

  it 'expected from time_displays.string_jd_to_date() \
                  2000-01-01 ' do
    assert_equal '2000-01-01',
                 time_displays.string_jd_to_date
    assert_equal '2000-01-01',
                 time_displays.string_jd_to_date(nil)
    assert_equal '-4712-01-01',
                 time_displays.string_jd_to_date(0)
  end

  it 'expected from  time_displays.jd_to_date_string(time_displays.ajd) \
                  2014-08-15 ' do
    assert_equal '2014-08-15',
                 time_displays.jd_to_date_string(time_displays.ajd)
  end
end

describe 'time_displays of time for ajd of 2456885.0' do
  before(:each) do
    time_displays.jd = 2_456_885.0
    time_displays.set_t
    time_displays.date =
      time_displays.ajd_to_datetime(time_displays.jd)
  end

  it 'expected from time_displays.string_time() \
                  12:00:00.000 ' do
    assert_equal '12:00:00.000',
                 time_displays.string_time
    assert_equal '12:00:00.000',
                 time_displays.string_time(nil)
    assert_equal '00:00:00.000',
                 time_displays.string_time(0)
  end

  it 'expected from time_displays.display_time_string(time_displays.date) \
                  12:00:00.000 ' do
    assert_equal '12:00:00.000',
                 time_displays.display_time_string(time_displays.date)
  end
end

describe 'time_displays of other for ajd of 2456885.0' do
  before(:each) do
    time_displays.jd = 2_456_885.0
    time_displays.set_t
    time_displays.date =
      time_displays.ajd_to_datetime(time_displays.jd)
  end

  it 'expected  from time_displays.string_day_fraction_to_time() \
                  12:00:00 ' do
    assert_equal '12:00:00',
                 time_displays.string_day_fraction_to_time
    assert_equal '12:00:00',
                 time_displays.string_day_fraction_to_time(nil)
    assert_equal '12:00:00',
                 time_displays.string_day_fraction_to_time(0)
  end

  it 'expected  from time_displays.string_eot \
                  -04m, 29.2s ' do
    assert_equal '-04m, 29.2s',
                 time_displays.string_eot
  end
end

describe 'time_displays of other for ajd of 2456885.0' do
  before(:each) do
    time_displays.jd = 2_456_885.0
    time_displays.set_t
    time_displays.date =
      time_displays.ajd_to_datetime(time_displays.jd)
  end

  it 'expected  from time_displays.string_day_fraction_to_time() \
                  12:00:00 ' do
    assert_equal '12:00:00',
                 time_displays.string_day_fraction_to_time
    assert_equal '12:00:00',
                 time_displays.string_day_fraction_to_time(nil)
    assert_equal '12:00:00',
                 time_displays.string_day_fraction_to_time(0)
  end

  it 'expected  from time_displays.string_eot \
                  -04m, 29.2s ' do
    assert_equal '-04m, 29.2s',
                 time_displays.string_eot
  end
end

describe 'time_displays of other for ajd of 2_455_055.5' do
  before(:each) do
    time_displays.jd = 2_455_055.5
    time_displays.set_t
    time_displays.date =
      time_displays.ajd_to_datetime(time_displays.jd)
  end

  it 'expected  from time_displays.string_day_fraction_to_time() \
                  12:00:00 ' do
    assert_equal '12:00:00',
                 time_displays.string_day_fraction_to_time
    assert_equal '12:00:00',
                 time_displays.string_day_fraction_to_time(nil)
    assert_equal '12:00:00',
                 time_displays.string_day_fraction_to_time(0)
  end

  it 'expected  from time_displays.string_eot \
                  -05m, 04.70s ' do
    assert_equal '-05m, 04.70s',
                 time_displays.string_eot
  end
end

describe 'time_displays of minutes for ajd of 2_455_055.5' do
  before(:each) do
    time_displays.jd = 2_455_055.5
    time_displays.set_t
    time_displays.date =
      time_displays.ajd_to_datetime(time_displays.jd)
  end

  it 'expected  from time_displays.show_minutes(0.2259) \
                  +00:13.553 ' do
    assert_equal '+00:13.553',
                 time_displays.show_minutes(0.2259)
  end

  it 'expected  from time_displays.show_now(0.2259) \
                  +00:13.553 ' do
    assert_equal '+00:13.553',
                 time_displays.show_now(0.2259)
  end

  it 'expected  from time_displays.sign_min(time_displays.time_eot) \
                  - ' do
    assert_equal '-',
                 time_displays.sign_min(time_displays.time_eot)
  end
end

describe 'time_displays of parts for ajd of 2_455_055.5' do
  before(:each) do
    time_displays.jd = 2_455_055.5
    time_displays.set_t
    time_displays.date =
      time_displays.jd_to_datetime(time_displays.jd)
  end

  it 'expected from time_displays.format_time(14, 53, 51, 0) \
                  14:53:51.000 ' do
    assert_equal '14:53:51.000',
                 time_displays.format_time(14, 53, 51, 0)
  end

  it 'expected from time_displays.dt_parts(time_displays.date.to_datetime) \
                 [0, 0, 0, 0] ' do
    assert_equal [0, 0, 0, 0],
                 time_displays.dt_parts(time_displays.date.to_datetime)
  end

  it 'expected from time_displays.float_parts(14.8975) \
                 [14, 53, 51, 0] ' do
    assert_equal [14, 53, 51, 0],
                 time_displays.float_parts(14.8975)
  end
end

describe 'time_displays of time for ajd of 2_455_055.5' do
  before(:each) do
    time_displays.jd = 2_455_055.5
    time_displays.set_t
    time_displays.date =
      time_displays.ajd_to_datetime(time_displays.jd)
  end

  it 'expected  from time_displays.string_deg_to_time(1) \
                  +003:49:10.987 ' do
    assert_equal '+003:49:10.987',
                 time_displays.string_deg_to_time(1)
  end

  it 'expected from time_displays.display_time_string(time_displays.date) \
                  00:00:00.000 ' do
    assert_equal '00:00:00.000',
                 time_displays.display_time_string(time_displays.date)
  end

  it 'expected from time_displays.string_time() \
                  12:00:00.000 ' do
    assert_equal '12:00:00.000',
                 time_displays.string_time
    assert_equal '12:00:00.000',
                 time_displays.string_time(nil)
    assert_equal '00:00:00.000',
                 time_displays.string_time(0)
  end
end

describe 'time_displays of date for ajd of 2_455_055.5' do
  before(:each) do
    time_displays.jd = 2_455_055.5
    time_displays.set_t
    time_displays.date =
      time_displays.ajd_to_datetime(time_displays.jd)
  end

  it 'expected from time_displays.string_jd_to_date() \
                  2000-01-01 ' do
    assert_equal '2000-01-01',
                 time_displays.string_jd_to_date
    assert_equal '2000-01-01',
                 time_displays.string_jd_to_date(nil)
    assert_equal '-4712-01-01',
                 time_displays.string_jd_to_date(0)
  end

  it 'expected from  time_displays.jd_to_date_string(time_displays.ajd) \
                  2009-08-11 ' do
    assert_equal '2009-08-11',
                 time_displays.jd_to_date_string(time_displays.ajd)
  end
end
