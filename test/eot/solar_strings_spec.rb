# solar_strings_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestMain < Minitest::Test
  describe 'Eot @main using ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected 2_456_885.0 and 2_455_055.0 for @main.jd and @main.ajd' do
      assert_equal   2_456_885.0, @main.jd
      assert_equal   2_456_885.0, @main.ajd
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      assert_equal   2_455_055.0, @main.jd
      assert_equal   2_455_055.0, @main.ajd
    end

    it 'expected   "2014-08-15T12:00:00+00:00", for @main.date.to_s' do
      assert_equal '2014-08-15T12:00:00+00:00', @main.date.to_s
    end

    it 'expected   3.850800396604, from @main.ma.round(12)' do
      assert_equal 3.850800396604, @main.ma.round(12)
    end
  end
end

#
class TestSolarStrings < Minitest::Test
  describe 'Eot @main using ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.degrees_apparent_longitude
                    +142:35:33.356' do
      assert_equal '+142:35:33.356',
                   @main.degrees_apparent_longitude
    end

    it 'expected from @main.degrees_declination
                    +013:34:57.036' do
      assert_equal '+013:34:57.036',
                   @main.degrees_declination
    end

    it 'expected from @main.degrees_mean_anomaly
                    +220:38:04.598' do
      assert_equal '+220:38:04.598',
                   @main.degrees_mean_anomaly
    end
  end
end

#
class TestSolarStrings < Minitest::Test
  describe 'Eot @main using ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.degrees_right_ascension
                    +193:40:21.678' do
      assert_equal '+193:40:21.678',
                   @main.degrees_right_ascension
    end

    it 'expected from @main.degrees_true_anomaly
                    +219:24:27.798' do
      assert_equal '+219:24:27.798',
                   @main.degrees_true_anomaly
    end

    it 'expected from @main.degrees_true_longitude
                   "+142:35:47.318" ' do
      assert_equal '+142:35:47.318',
                   @main.degrees_true_longitude
    end
  end
end

#
class TestSolarStrings < Minitest::Test
  describe 'Eot @main using ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   "+000:00:00.000" from @main.degrees()' do
      assert_equal '+000:00:00.000', @main.degrees
      assert_equal '+000:00:00.000', @main.degrees(nil)
      assert_equal '+000:00:00.000', @main.degrees(0)
    end

    it 'expected from @main.degrees_true_obliquity
                   "not implemented yet" ' do
      assert_equal 'not implemented yet',
                   @main.degrees_true_obliquity
    end
  end
end
