
# aliased_time_displays_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

describe 'time_displays using jd of 2_456_885.0' do
  before(:all) do
    @time_displays = Eot.new
    @time_displays.jd = 2_456_885.0
    @time_displays.set_t
  end

  it 'expected from @time_displays.julian_period_day_fraction_to_time \
                  00:00:00 ' do
    assert_equal '00:00:00',
                 @time_displays.julian_period_day_fraction_to_time
    assert_equal '00:00:00',
                 @time_displays.julian_period_day_fraction_to_time(nil)
    assert_equal '00:00:00',
                 @time_displays.julian_period_day_fraction_to_time(0)
    assert_equal '00:00:00',
                 @time_displays.julian_period_day_fraction_to_time(0.5)
    assert_equal '06:00:00',
                 @time_displays.julian_period_day_fraction_to_time(0.25)
    assert_equal '11:59:59',
                 @time_displays.julian_period_day_fraction_to_time(0.999999)
    assert_equal '11:59:59',
                 @time_displays.julian_period_day_fraction_to_time(1.999999)
  end
end

describe 'time_displays using jd of 2_456_885.0' do
  before(:all) do
    @time_displays = Eot.new
    @time_displays.jd = 2_456_885.0
    @time_displays.set_t
  end

  it 'expected from @time_displays.display_equation_of_time \
                  -04m, 29.76s ' do
    assert_equal '-04m, 29.76s',
                 @time_displays.display_equation_of_time
  end
end

describe '@time_displays using jd of 2_456_885.0' do
  before(:each) do
    @time_displays = Eot.new
    @time_displays.jd = 2_456_885.0
    @time_displays.set_t
    @date = @time_displays.date
    @jd = @time_displays.jd
  end

  it 'expected from @time_displays.jd_to_date_string() \
                  2000-01-01 ' do
    assert_equal '2000-01-01', @time_displays.jd_to_date_string
    assert_equal '2000-01-01', @time_displays.jd_to_date_string(nil)
    assert_equal '-4712-01-01', @time_displays.jd_to_date_string(0)
  end

  it 'expected from @time_displays.jd_to_date_string(time_displays.jd) \
                  2014-08-15 ' do
    assert_equal '2014-08-15',
                 @time_displays.jd_to_date_string(@jd)
  end

  it 'expected from @time_displays.display_time_string(@date) \
                  12:00:00.000 ' do
    assert_equal '12:00:00.000',
                 @time_displays.display_time_string(@date)
  end
end

describe '@time_displays using jd of 2_455_055.5' do
  before(:all) do
    @time_displays = Eot.new
    @time_displays.jd = 2_455_055.5
    @time_displays.set_t
  end

  it 'expected  from @time_displays.julian_period_day_fraction_to_time \
                  00:00:00 ' do
    assert_equal '00:00:00',
                 @time_displays.julian_period_day_fraction_to_time
    assert_equal '00:00:00',
                 @time_displays.julian_period_day_fraction_to_time(nil)
    assert_equal '00:00:00',
                 @time_displays.julian_period_day_fraction_to_time(0)
    assert_equal '00:00:00',
                 @time_displays.julian_period_day_fraction_to_time(0.5)
    assert_equal '06:00:00',
                 @time_displays.julian_period_day_fraction_to_time(0.25)
    assert_equal '11:59:59',
                 @time_displays.julian_period_day_fraction_to_time(0.999999)
    assert_equal '11:59:59',
                 @time_displays.julian_period_day_fraction_to_time(1.999999)
  end
end

describe '@time_displays using jd of 2_455_055.5' do
  before(:all) do
    @time_displays = Eot.new
    @time_displays.jd = 2_455_055.5
    @time_displays.set_t
  end

  it 'expected  from time_displays.display_equation_of_time \
                  -05m, 05.53s ' do
    assert_equal '-05m, 05.53s',
                 @time_displays.display_equation_of_time
  end
end

describe '@time_displays using jd of 2_455_055.5' do
  before(:all) do
    @time_displays = Eot.new
    @time_displays.jd = 2_455_055.5
    @time_displays.set_t
    @date = @time_displays.date
    @jd = @time_displays.jd
  end

  it 'expected from @time_displays.jd_to_date_string() \
                  2000-01-01 ' do
    assert_equal '2000-01-01', @time_displays.jd_to_date_string
    assert_equal '2000-01-01', @time_displays.jd_to_date_string(nil)
    assert_equal '-4712-01-01', @time_displays.jd_to_date_string(0)
  end

  it 'expected from @time_displays.jd_to_date_string(@jd) \
                  2009-08-11 ' do
    assert_equal '2009-08-11',
                 @time_displays.jd_to_date_string(@jd)
  end

  it 'expected from @time_displays.display_time_string(@date) \
                  12:00:00.000' do
    assert_equal '12:00:00.000',
                 @time_displays.display_time_string(@date)
  end
end
