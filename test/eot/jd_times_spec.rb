# jd_times_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

times = Eot.new

describe 'tests jd of 2456885.0 ' do

  before(:each) do
    # set our current object attributes
    times.jd                =   2_456_885.0
    times.ajd = times.jd
    times.ma_ta_set

    ajd = times.jd
    # check date for this ajd when needed.
    times.date = times.ajd_to_datetime(ajd)
  end

  it 'expected   2456885.0 for times.ajd'do
    assert_equal(2_456_885.0, times.ajd)
  end
 
  it 'expected   2456885.301581902 from \
      times.astronomical_twilight_end_jd ' do
    assert_equal(2456885.301581902, \
                 times.astronomical_twilight_end_jd)
  end

  it 'expected   2456884.698418098 from \
      times.astronomical_twilight_start_jd ' do
    assert_equal(2456884.698418098, \
                 times.astronomical_twilight_start_jd)
  end

  it 'expected   2456885.267177629 from times.civil_twilight_end_jd() ' do
    assert_equal(2456885.267177629, times.civil_twilight_end_jd)
  end

  it 'expected   2456884.732822371 from \
      times.civil_twilight_start_jd() ' do
    assert_equal(2456884.732822371, times.civil_twilight_start_jd)
  end

  it 'expected   2456885.284367218 from \
      times.nautical_twilight_end_jd ' do
    assert_equal(2456885.284367218, \
                 times.nautical_twilight_end_jd)
  end

  it 'expected   2456884.715632782 from \
      times.nautical_twilight_start_jd ' do
    assert_equal(2456884.715632782, \
                 times.nautical_twilight_start_jd)
  end 

  it 'expected   2456884.74761458 from times.sunrise_jd() ' do
    assert_equal(2456884.74761458, times.sunrise_jd)
  end

  it 'expected   2456885.25238542 from times.sunset_jd() ' do
    assert_equal(2456885.25238542, times.sunset_jd)
  end

end

describe 'tests ajd of 2455055.0 ' do

  before(:each) do
    # set our current object attributes
    times.jd                     = 2_455_055.0
    times.ajd = times.jd    
    times.ma_ta_set

    ajd = times.jd   # for use here
    # check date for this ajd when needed.
    times.date = times.ajd_to_datetime(ajd)
  end

  it 'expected   2_455_055.0, from times. ' do
    assert_equal(2_455_055.0, times.jd)
  end

  it 'expected   2455054.7476020413 from times.sunrise_jd()' do
    assert_equal(2455054.7476020413, times.sunrise_jd)
  end

  it 'expected   2455055.2523979587 from times.sunset_jd() ' do
    assert_equal(2455055.2523979587, times.sunset_jd)
  end

end
