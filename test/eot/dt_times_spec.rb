# dt_times_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestMain < Minitest::Test
  describe 'tests jd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.longitude = 0
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   2_456_885.0 for @main.jd' do
      assert_equal(2_456_885.0, @main.jd)
    end

    it 'expected   2_456_885.0 for @main.ajd' do
      assert_equal(2_456_885.0, @main.ajd)
    end

    it 'expected from @main.date.to_s
                   "2014-08-15T12:00:00+00:00"' do
      assert_equal '2014-08-15T12:00:00+00:00',
                   @main.date.to_s
    end
  end
end

#
class TestDtTimes < Minitest::Test
  describe 'tests jd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.latitude = 0
      @main.longitude = 0
      @main.jd = 2_456_885.0
      @main.set_t_ma
    end

    it 'expected from
      @main.ajd_to_datetime(@main.ajd).to_s
                   "2014-08-15T12:00:00+00:00"' do
      assert_equal '2014-08-15T12:00:00+00:00',
                   @main.ajd_to_datetime(@main.jd).to_s
    end

    it 'expected from
       @main.astronomical_twilight_end_dt.to_s
                   "2014-08-15T19:14:08+00:00"' do
      assert_equal('2014-08-15T19:14:08+00:00',
                   @main.astronomical_twilight_end_dt.to_s)
    end

    it 'expected from
       @main.astronomical_twilight_start_dt.to_s
                   "2014-08-15T04:45:51+00:00"' do
      assert_equal('2014-08-15T04:45:51+00:00',
                   @main.astronomical_twilight_start_dt.to_s)
    end
  end
end

#
class TestDtTimes < Minitest::Test
  describe 'tests jd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.latitude = 0
      @main.longitude = 0
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.set_t_ma
    end

    it 'expected from
       @main.civil_twilight_end_dt.to_s
                   "2014-08-15T18:24:41+00:00"' do
      assert_equal('2014-08-15T18:24:41+00:00',
                   @main.civil_twilight_end_dt.to_s)
    end

    it 'expected from
       @main.civil_twilight_start_dt.to_s
                   "2014-08-15T05:35:18+00:00"' do
      assert_equal('2014-08-15T05:35:18+00:00',
                   @main.civil_twilight_start_dt.to_s)
    end

    it 'expected from
       @main.local_noon_dt().to_s
                   "2014-08-15T12:04:31+00:00"' do
      assert_equal '2014-08-15T12:04:31+00:00', @main.local_noon_dt.to_s
    end
  end
end

#
class TestDtTimes < Minitest::Test
  describe 'tests jd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.latitude = 0
      @main.longitude = 0
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from
       @main.nautical_twilight_end_dt.to_s
                   "2014-08-15T18:49:24+00:00"' do
      assert_equal('2014-08-15T18:49:24+00:00',
                   @main.nautical_twilight_end_dt.to_s)
    end

    it 'expected from
       @main.nautical_twilight_start_dt.to_s
                   "2014-08-15T05:10:35+00:00"' do
      assert_equal('2014-08-15T05:10:35+00:00',
                   @main.nautical_twilight_start_dt.to_s)
    end
  end
end

#
class TestDtTimes < Minitest::Test
  describe 'tests jd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.latitude = 0
      @main.longitude = 0
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.sunrise_dt.to_s
                   "2014-08-15T05:56:34+00:00"' do
      assert_equal '2014-08-15T05:56:34+00:00',
                   @main.sunrise_dt.to_s
    end

    it 'expected from @main.sunset_dt.to_s
                   "2014-08-15T18:03:25+00:00"' do
      assert_equal '2014-08-15T18:03:25+00:00',
                   @main.sunset_dt.to_s
    end
  end
end

#
class TestDtTimes < Minitest::Test
  describe 'tests ajd of 2_455_055.0 ' do
    before(:each) do
      @main = Main.new
      @main.longitude = 0
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.date.to_s
                   "2009-08-11T12:00:00+00:00"' do
      assert_equal '2009-08-11T12:00:00+00:00',
                   @main.date.to_s
    end

    it 'expected from
       @main.ajd_to_datetime(@main.ajd).to_s
                   "2009-08-11T12:00:00+00:00"' do
      assert_equal '2009-08-11T12:00:00+00:00',
                   @main.ajd_to_datetime(@main.ajd).to_s
    end
  end
end

#
class TestDtTimes < Minitest::Test
  describe 'tests ajd of 2_455_055.0 ' do
    before(:each) do
      @main = Main.new
      @main.latitude = 0
      @main.longitude = 0
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.sunrise_dt.to_s
                   "2009-08-11T05:56:33+00:00"' do
      assert_equal '2009-08-11T05:56:33+00:00',
                   @main.sunrise_dt.to_s
    end

    it 'expected from @main.sunset_dt.to_s
                   "2009-08-11T18:03:26+00:00"' do
      assert_equal '2009-08-11T18:03:26+00:00',
                   @main.sunset_dt.to_s
    end
  end
end
