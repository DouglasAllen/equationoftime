# trigonometric__spec.rb

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


  it 'expected   -0.7943361570447028 from angles.cosine_al_sun()? ' do
    assert_equal(-0.7943361570447028, angles.cosine_al_sun)
  end

  it 'expected   -0.7943361570447028 from  angles.cosine_tl_sun()? ' do
    assert_equal(-0.7943361570447028, angles.cosine_tl_sun)
  end

  it 'expected   0.9174791597576031 from  angles.cosine_to_earth()? ' do
    assert_equal(0.9174791597576031, angles.cosine_to_earth)
  end

  it 'expected   0.6074784519729512 from  angles.sine_al_sun()? ' do
    assert_equal(0.6074784519729512, angles.sine_al_sun)
  end

  it 'expected   0.6074784519729512 from  angles.sine_tl_sun()? ' do
    assert_equal(0.6074784519729512, angles.sine_tl_sun)
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

  it 'expected   -0.7541886969975007 from angles.cosine_al_sun()? ' do
    assert_equal(-0.7541886969975007, angles.cosine_al_sun)
  end

  it 'expected   -0.7541886969975007 from angles.cosine_tl_sun()? ' do
    assert_equal(-0.7541886969975007, angles.cosine_tl_sun)
  end

  it 'expected   0.9174998363571427 from angles.cosine_to_earth()? ' do
    assert_equal(0.9174998363571427, angles.cosine_to_earth)
  end

  it 'expected   0.6566577566139093 from angles.sine_al_sun()? ' do
    assert_equal(0.6566577566139093, angles.sine_al_sun)
  end

  it 'expected   0.6566577566139093 from angles.sine_tl_sun()? ' do
    assert_equal(0.6566577566139093, angles.sine_tl_sun)
  end

end
