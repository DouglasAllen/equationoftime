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
    displays.ma_ta_set
    # check date for this ajd when needed.
    displays.date = displays.ajd_to_datetime(ajd)
  end

  it 'expected   2456885.0 for displays.ajd'do
    assert_equal 2_456_885.0, displays.ajd
  end

  it 'expected   "2014-08-15T12:00:00+00:00", from displays.date.to_s' do
    assert_equal '2014-08-15T12:00:00+00:00', displays.date.to_s
  end

  it 'expected   3.8508003966038915, from displays.' do
    assert_equal 3.8508003966038915, displays.ma
  end

  it 'expected   "+000:00:00.000" from displays.degrees_to_s() ' do
    assert_equal '+000:00:00.000', displays.degrees_to_s
    assert_equal '+000:00:00.000', displays.degrees_to_s(nil)
    assert_equal '+000:00:00.000', displays.degrees_to_s(0)
  end

  it 'expected   "+142:35:33.356" from displays.string_al_sun() ' do
    assert_equal '+142:35:33.356', displays.string_al_sun
  end

  it 'expected   "+013:59:01.165" from displays.string_dec_sun() ' do
    assert_equal "+013:59:01.165", displays.string_dec_sun
  end

  it 'expected   "+220:38:04.598" from displays.string_ma_sun() ' do
    assert_equal '+220:38:04.598', displays.string_ma_sun
  end

  it 'expected   "+144:56:39.993" from displays.string_ra_sun() ' do
    assert_equal "+144:56:39.993", displays.string_ra_sun
  end

  it 'expected   "+219:24:27.798" from displays.string_ta_sun() ' do
    assert_equal '+219:24:27.798', displays.string_ta_sun
  end

  it 'expected   "+142:35:47.318" from \
      displays.string_tl_sun() ' do
    assert_equal '+142:35:47.318', displays.string_tl_sun
  end

  it 'expected   "+023:26:22.953" from displays.string_to_earth() ' do
    assert_equal "+023:26:22.953", displays.string_to_earth
  end

end
