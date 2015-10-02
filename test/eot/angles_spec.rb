# angles_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

angles = Eot.new

describe 'Tests ajd of 2456885.0 then 2455055.0 ' do

  before(:each) do
    angles.ajd  =   2_456_885.0
    angles.set_t_ma

    # ajd = angles.ajd    
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(angles.ajd)
  end

  it 'expected   2456885.0 for angles.ajd'do
    assert_equal(2_456_885.0, angles.ajd)
    angles.ajd = 2_455_055.0
    assert_equal(2_455_055.0, angles.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" for angles.date'.to_s do
    assert_equal('2014-08-15T12:00:00+00:00', angles.date.to_s)
    angles.ajd = 2_455_055.0;angles.date = angles.ajd_to_datetime(angles.ajd)
    assert_equal("2009-08-11T12:00:00+00:00", angles.date.to_s)
  end

  it 'expected   3.8508003966038915 for angles.ma'do
    assert_equal(3.8508003966038915, angles.ma)
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(3.7871218188949207, angles.ma)
  end

  it 'expected   2.4887103398436143 from angles.apparent_longitude ' do
    assert_equal(2.4887103398436143, angles.apparent_longitude)
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(2.4252140645725033, angles.apparent_longitude)
  end

  it 'expected   -0.021413249720702462 from angles.equation_of_center ' do
    assert_equal(-0.021413249720702462, angles.equation_of_center)
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(-0.019768413456709915, angles.equation_of_center)
  end

  it 'expected   0.24401410219492767 from  angles.declination ' do
    assert_equal(0.24401410219492767, angles.declination)
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(0.2642691272256653, angles.declination)
  end

  it 'expected   2.506820536931464  from angle.earth_rotation_angle' do
    assert_equal(2.506820536931464, angles.earth_rotation_angle)
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(2.4427584501333826, angles.earth_rotation_angle)
  end
  
  it 'expected   0.016702468499021204 from  \
      angles.eccentricity ' do
    assert_equal(0.016702468499021204, angles.eccentricity)
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(0.016704576164208475, angles.eccentricity)
  end

  it 'expected   1.585784187793996 from  angles.ha_sun(1)? ' do
    assert_equal(1.585784187793996, angles.ha_sun(1))
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(1.5858632617532584, angles.ha_sun(1))
    angles.ajd = 2_456_885.0;angles.set_t_ma
    assert_equal(1.6787252911101866, angles.ha_sun(2))
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(1.6792969058858402, angles.ha_sun(2))
    angles.ajd = 2_456_885.0;angles.set_t_ma
    assert_equal(1.7867293723146582, angles.ha_sun(3))
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(1.7878867091100799, angles.ha_sun(3))
    angles.ajd = 2_456_885.0;angles.set_t_ma
    assert_equal(1.894891065733284, angles.ha_sun(4))
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(1.8966638356206444, angles.ha_sun(4))
  end

  it 'expected   -2.7528817371494685 from  angles.omega ' do
    assert_equal(-2.7528817371494685, angles.omega)
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(-1.0615640635268548, angles.omega)
  end

  it 'expected   2.529741165435018 from  angles.right_ascension ' do
    assert_equal(2.529741165435018, angles.right_ascension)
    angles.ajd = 2_455_055.0;angles.set_t_ma
    assert_equal(2.467563113545988, angles.right_ascension)
  end
end
