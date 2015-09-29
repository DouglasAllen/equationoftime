# delta_times_jd_spec.rb

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

  it 'expected   -0.006532899229065973 from times.delta_oblique_jd() ' do
    assert_equal(-0.006532899229065973, times.delta_oblique_jd)
  end

  it 'expected   0.0034080245407109443 from times.delta_orbit_jd() ' do
    assert_equal(0.0034080245407109443, times.delta_orbit_jd)
  end

  it 'expected   -0.0031248746883550294 from times.eot_jd() ' do
    assert_equal(-0.0031248746883550294, times.eot_jd)
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

    it 'expected -0.006738535505004944 from times.delta_oblique_jd() ' do
    assert_equal(-0.006738535505004944, times.delta_oblique_jd)
  end

  it 'expected   0.0031462407187197246 from times.delta_orbit_jd() ' do
    assert_equal(0.0031462407187197246, times.delta_orbit_jd)
  end
  
  it 'expected   -0.0035922947862852186 from times.eot_jd() ' do
    assert_equal(-0.0035922947862852186, times.eot_jd)
  end


end
