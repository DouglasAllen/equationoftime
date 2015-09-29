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
 
  it 'expected   2456885.30158128 from \
      times.astronomical_twilight_end_jd ' do
    assert_equal(2456885.30158128, \
                 times.astronomical_twilight_end_jd)
  end

  it 'expected   2456884.69841872 from \
      times.astronomical_twilight_start_jd ' do
    assert_equal(2456884.69841872, \
                 times.astronomical_twilight_start_jd)
  end

  it 'expected   2456885.267177428 from times.civil_twilight_end_jd() ' do
    assert_equal(2456885.267177428, times.civil_twilight_end_jd)
  end

  it 'expected   2456884.732822572 from \
      times.civil_twilight_start_jd() ' do
    assert_equal(2456884.732822572, times.civil_twilight_start_jd)
  end

  it 'expected   2456885.2843668116 from \
      times.nautical_twilight_end_jd ' do
    assert_equal(2456885.2843668116, \
                 times.nautical_twilight_end_jd)
  end

  it 'expected   2456884.7156331884 from \
      times.nautical_twilight_start_jd ' do
    assert_equal(2456884.7156331884, \
                 times.nautical_twilight_start_jd)
  end 

  it 'expected   2456884.7476146077 from times.sunrise_jd() ' do
    assert_equal(2456884.7476146077, times.sunrise_jd)
  end

  it 'expected   2456885.2523853923 from times.sunset_jd() ' do
    assert_equal(2456885.2523853923, times.sunset_jd)
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

  it 'expected   2455054.7476020227 from times.sunrise_jd()' do
    assert_equal(2455054.7476020227, times.sunrise_jd)
  end

  it 'expected   2455055.2523979773 from times.sunset_jd() ' do
    assert_equal(2455055.2523979773, times.sunset_jd)
  end

end
