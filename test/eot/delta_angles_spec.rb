# delta_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

angles = Eot.new

describe 'Tests ajd of 2456885.0 ' do

  before(:each) do
    angles.ajd  =   2_456_885.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected   2456885.0 for angles.ajd'do
    assert_equal(2_456_885.0, angles.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" for angles.date'.to_s do
    assert_equal('2014-08-15T12:00:00+00:00', angles.date.to_s)
  end

  it 'expected   -4.069792718159396e-05 from  angles.delta_epsilon()? ' do
    assert_equal(-4.069792718159396e-05, angles.delta_epsilon)
  end

  it 'expected   -0.04104741644935217 from  angles.delta_oblique()? ' do
    assert_equal(-0.04104741644935217, angles.delta_oblique)
  end

  it 'expected   0.021413249720702462 from  angles.delta_orbit()? ' do
    assert_equal(0.021413249720702462, angles.delta_orbit)
  end

  it 'expected   3.75123821843003e-05 from  angles.delta_psi()? ' do
    assert_equal(3.75123821843003e-05, angles.delta_psi)
  end

  it 'expected   3.4412912434333975e-05 from  angles.equation_of_equinox()? ' do
    assert_equal(3.4412912434333975e-05, angles.equation_of_equinox)
  end

  it 'expected   -0.019634166728649708 from  angles.equation_of_time()? ' do
    assert_equal(-0.019634166728649708, angles.equation_of_time)
  end


end

describe 'Tests ajd of 2455055.5 ' do

  before(:each) do
    angles.ajd             = 2_455_055.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected   2455055.0, from angles.' do
    assert_equal(2_455_055.0, angles.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00", from angles.date.to_s' do
    assert_equal('2009-08-11T12:00:00+00:00', angles.date.to_s)
  end

  it 'expected   2.2661506700250296e-05 from angles.delta_epsilon()? ' do
    assert_equal(2.2661506700250296e-05, angles.delta_epsilon)
  end

  it 'expected   -0.042339467276955034 from angles.delta_oblique()? ' do
    assert_equal(-0.042339467276955034, angles.delta_oblique)
  end

  it 'expected   0.019768413456709915 from angles.delta_orbit()? ' do
    assert_equal(0.019768413456709915, angles.delta_orbit)
  end

  it 'expected   7.639341522992976e-05 from angles.delta_psi()? ' do
    assert_equal(7.639341522992976e-05, angles.delta_psi)
  end

  it 'expected   7.007879585074761e-05 from angles.equation_of_equinox()? ' do
    assert_equal(7.007879585074761e-05, angles.equation_of_equinox)
  end

  it 'expected   -0.02257105382024512 from angles.equation_of_time()? ' do
    assert_equal(-0.02257105382024512, angles.equation_of_time)
  end

end
