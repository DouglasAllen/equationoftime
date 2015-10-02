# angles_spec.rb

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
    angles.set_t_ma
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected   2456885.0 for angles.ajd'do
    assert_equal(2_456_885.0, angles.ajd)
    angles.ajd = 2_455_055.0
    assert_equal(2_455_055.0, angles.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" for angles.date'.to_s do
    assert_equal('2014-08-15T12:00:00+00:00', angles.date.to_s)
    angles.ajd = 2_455_055.0
    assert_equal('2014-08-15T12:00:00+00:00', angles.date.to_s)
  end

  it 'expected   3.8508003966038915 for angles.ma'do
    assert_equal(3.8508003966038915, angles.ma)
  end

  it 'expected   2.4887103398436143 from angles.apparent_longitude()? ' do
    assert_equal(2.4887103398436143, angles.apparent_longitude)
  end

  it 'expected   -0.021413249720702462 from angles.equation_of_center()? ' do
    assert_equal(-0.021413249720702462, angles.equation_of_center)
  end

  it 'expected   0.24401410219492767 from  angles.dec_sun()? ' do
    assert_equal(0.24401410219492767, angles.dec_sun)
  end

  it 'expected   2.506820536931464  from angle.earth_rotation_angle()' do
    assert_equal(2.506820536931464, angles.earth_rotation_angle)
  end
  
  it 'expected   0.016702468499021204 from  \
      angles.eccentricity_earth()? ' do
    assert_equal(0.016702468499021204, angles.eccentricity_earth)
  end

  it 'expected   1.585784187793996 from  angles.ha_sun(1)? ' do
    assert_equal(1.585784187793996, angles.ha_sun(1))
  end

  it 'expected   -2.7528817371494685 from  angles.omega()? ' do
    assert_equal(-2.7528817371494685, angles.omega)
  end

  it 'expected   2.529741165435018 from  angles.right_ascension()? ' do
    assert_equal(2.529741165435018, angles.right_ascension)
  end
end

describe 'Tests ajd of 2455055.5 ' do

  before(:each) do
    angles.ajd             = 2_455_055.0
    ajd = angles.ajd
    angles.set_t_ma
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected   2455055.0, from angles.' do
    assert_equal(2_455_055.0, angles.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00", from angles.date.to_s' do
    assert_equal('2009-08-11T12:00:00+00:00', angles.date.to_s)
  end

  it 'expected   3.7871218188949207, from angles.' do
    assert_equal(3.7871218188949207, angles.ma)
  end

  it 'expected   2.4252140645725033 from angles.apparent_longitude()? ' do
    assert_equal(2.4252140645725033, angles.apparent_longitude)
  end

  it 'expected   -0.019768413456709915 from angles.equation_of_center()? ' do
    assert_equal(-0.019768413456709915, angles.equation_of_center)
  end

  it 'expected   0.2642691272256653 from angles.dec_sun()? ' do
    assert_equal(0.2642691272256653, angles.dec_sun)
  end

  it 'expected   0.016704576164208475 from \
      angles.eccentricity_earth()? ' do
    assert_equal(0.016704576164208475, angles.eccentricity_earth)
  end

  it 'expected   1.5858632617532584 from angles.ha_sun(1)? ' do
    assert_equal(1.5858632617532584, angles.ha_sun(1))
  end

  it 'expected   -1.0615640635268548 from angles.omega()? ' do
    assert_equal(-1.0615640635268548, angles.omega)
  end

  it 'expected   2.467563113545988 from angles.right_ascension()? ' do
    assert_equal(2.467563113545988, angles.right_ascension)
  end

end
