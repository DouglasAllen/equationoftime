# angle_displays_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

displays = Eot.new

describe 'Eot displays using ajd of 2456885.0' do

  before(:each) do
    displays.ajd               =   2_456_885.0
    ajd   = displays.ajd
    displays.set_t_ma
    # check date for this ajd when needed.
    displays.date = displays.ajd_to_datetime(ajd)
  end

  it 'expected     2456885.0 and 2455055.0 for displays.ajd'do
    assert_equal   2456885.0, displays.ajd
    assert_equal   2456885.0, displays.jd
    displays.ajd = 2455055.0; displays.set_t_ma
    assert_equal   2455055.0, displays.ajd
    assert_equal   2455055.0, displays.jd
  end

  it 'expected   "2014-08-15T12:00:00+00:00", for displays.date.to_s' do
    assert_equal '2014-08-15T12:00:00+00:00', displays.date.to_s
  end

  it 'expected   3.8508003966038915, from displays.' do
    assert_equal 3.8508003966038915, displays.ma
  end

  it 'expected   "+000:00:00.000" from displays.degrees() ' do
    assert_equal '+000:00:00.000', displays.degrees
    assert_equal '+000:00:00.000', displays.degrees(nil)
    assert_equal '+000:00:00.000', displays.degrees(0)
  end

  it 'expected   "+142:35:33.356" from \
      displays.degrees_apparent_longitude ' do
    assert_equal '+142:35:33.356', displays.degrees_apparent_longitude
  end

  it 'expected   "+013:58:51.522" from \
      displays.degrees_declination ' do
    assert_equal "+013:58:51.522", displays.degrees_declination
  end

  it 'expected   "+220:38:04.598" from \
      displays.degrees_mean_anomaly ' do
    assert_equal '+220:38:04.598', displays.degrees_mean_anomaly
  end

  it 'expected   "+144:56:36.571" from \ 
      displays.degrees_right_ascension ' do
    assert_equal "+144:56:36.571", displays.degrees_right_ascension
  end

  it 'expected   "+219:24:27.798" from \
      displays.degrees_true_anomaly ' do
    assert_equal '+219:24:27.798', displays.degrees_true_anomaly
  end

  it 'expected   "+142:35:47.318" from \
      displays.degrees_true_longitude ' do
    assert_equal '+142:35:47.318', displays.degrees_true_longitude
  end

  it 'expected   "+023:26:06.164" from \
      displays.degrees_true_obliquity() ' do
    assert_equal "+023:26:06.164", displays.degrees_true_obliquity
  end

end
