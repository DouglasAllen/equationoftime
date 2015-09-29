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


  it 'expected   -0.7943361570447028 from angles.cosine_apparent_longitude()? ' do
    assert_equal(-0.7943361570447028, angles.cosine_apparent_longitude)
  end

  it 'expected   -0.7943772759574919 from  angles.cosine_true_longitude()? ' do
    assert_equal(-0.7943772759574919, angles.cosine_true_longitude)
  end

  it 'expected   0.9175115346746185 from  angles.cosine_true_obliquity()? ' do
    assert_equal(0.9175115346746185, angles.cosine_true_obliquity)
  end

  it 'expected   0.6074784519729512 from  angles.sine_apparent_longitude()? ' do
    assert_equal(0.6074784519729512, angles.sine_apparent_longitude)
  end

  it 'expected   0.6074246812917259 from  angles.sine_true_longitude()? ' do
    assert_equal(0.6074246812917259, angles.sine_true_longitude)
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

  it 'expected   -0.7541886969975007 from angles.cosine_apparent_longitude()? ' do
    assert_equal(-0.7541886969975007, angles.cosine_apparent_longitude)
  end

  it 'expected   -0.7542060769936684 from angles.cosine_true_longitude()? ' do
    assert_equal(-0.7542060769936684, angles.cosine_true_longitude)
  end

  it 'expected   0.9174818088136396 from angles.cosine_true_obliquity()? ' do
    assert_equal(0.9174818088136396, angles.cosine_true_obliquity)
  end

  it 'expected   0.6566577566139093 from angles.sine_apparent_longitude()? ' do
    assert_equal(0.6566577566139093, angles.sine_apparent_longitude)
  end

  it 'expected   0.6566377946979757 from angles.sine_true_longitude()? ' do
    assert_equal(0.6566377946979757, angles.sine_true_longitude)
  end

end
