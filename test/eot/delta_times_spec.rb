# delta_times_spec.rb

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

  it 'expected   "2014-08-15T12:00:00+00:00" for times.date'.to_s do
    assert_equal '2014-08-15T12:00:00+00:00', times.date.to_s
  end

  it 'expected   -9.407374889855001 from times.time_delta_oblique() ' do
    assert_equal(-9.407374889855001, times.time_delta_oblique)
  end

  it 'expected   4.90755533862376 from times.time_delta_orbit() ' do
    assert_equal(4.90755533862376, times.time_delta_orbit)
  end

  it 'expected   -4.499819551231242 from times.time_eot() ' do
    assert_equal(-4.499819551231242, times.time_eot)
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

  it 'expected   "2009-08-11T12:00:00+00:00" from times.date.to_s ' do
    assert_equal '2009-08-11T12:00:00+00:00', times.date.to_s
  end

  it 'expected   -9.70349112720712 from times.time_delta_oblique() ' do
    assert_equal(-9.70349112720712, times.time_delta_oblique)
  end

  it 'expected   4.5305866349564035 from times.time_delta_orbit() ' do
    assert_equal(4.5305866349564035, times.time_delta_orbit)
  end

  it 'expected   -5.172904492250715 is from times.time_eot() ' do
    assert_equal(-5.172904492250715, times.time_eot)
  end

end
