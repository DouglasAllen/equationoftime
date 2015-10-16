# solar_strings_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'Eot @solar_strings using ajd of 2456885.0' do

    before(:each) do
      @solar_strings = Eot.new
      @solar_strings.ajd               =   2_456_885.0
      ajd   = @solar_strings.ajd
      @solar_strings.set_t_ma
      # check date for this ajd when needed.
      @solar_strings.date = @solar_strings.ajd_to_datetime(ajd)
    end

    it 'expected     2456885.0 and 2455055.0 for @solar_strings.ajd'do
      assert_equal   2456885.0, @solar_strings.ajd
      assert_equal   2456885.0, @solar_strings.jd
      @solar_strings.ajd = 2455055.0; @solar_strings.set_t_ma
      assert_equal   2455055.0, @solar_strings.ajd
      assert_equal   2455055.0, @solar_strings.jd
    end

    it 'expected   "2014-08-15T12:00:00+00:00", for @solar_strings.date.to_s' do
      assert_equal '2014-08-15T12:00:00+00:00', @solar_strings.date.to_s
    end

    it 'expected   3.8508003966038915, from @solar_strings.' do
      assert_equal 3.8508003966038915, @solar_strings.ma
    end

    it 'expected   "+000:00:00.000" from @solar_strings.degrees() ' do
      assert_equal '+000:00:00.000', @solar_strings.degrees
      assert_equal '+000:00:00.000', @solar_strings.degrees(nil)
      assert_equal '+000:00:00.000', @solar_strings.degrees(0)
    end

    it 'expected   "+142:35:33.356" from \
      @solar_strings.degrees_apparent_longitude ' do
      assert_equal '+142:35:33.356', @solar_strings.degrees_apparent_longitude
    end

    it 'expected   "+013:58:51.522" from \
      @solar_strings.degrees_declination ' do
      assert_equal "+013:58:51.522", @solar_strings.degrees_declination
    end

    it 'expected   "+220:38:04.598" from \
      @solar_strings.degrees_mean_anomaly ' do
      assert_equal '+220:38:04.598', @solar_strings.degrees_mean_anomaly
    end

    it 'expected   "+144:56:36.571" from \ 
      @solar_strings.degrees_right_ascension ' do
      assert_equal "+144:56:36.571", @solar_strings.degrees_right_ascension
    end

    it 'expected   "+219:24:27.798" from \
      @solar_strings.degrees_true_anomaly ' do
      assert_equal '+219:24:27.798', @solar_strings.degrees_true_anomaly
    end

    it 'expected   "+142:35:47.318" from \
      @solar_strings.degrees_true_longitude ' do
      assert_equal '+142:35:47.318', @solar_strings.degrees_true_longitude
    end

    it 'expected   "+023:26:06.164" from \
      @solar_strings.degrees_true_obliquity() ' do
      assert_equal "+023:26:06.164", @solar_strings.degrees_true_obliquity
    end

  end
end