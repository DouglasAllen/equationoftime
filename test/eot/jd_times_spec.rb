# jd_times_spec.rb

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
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.jd
                   2_456_885.0' do
      assert_equal(2_456_885.0,
                   @main.jd)
    end

    it 'expected from @main.ajd
                   2_456_885.0' do
      assert_equal(2_456_885.0,
                   @main.ajd)
    end
  end
end

#
class TestJDTimesAstronomical < Minitest::Test
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
       @main.astronomical_twilight_end_jd
                   2_456_885.3014901592' do
      assert_equal(2_456_885.3014901592,
                   @main.astronomical_twilight_end_jd)
    end

    it 'expected from
       @main.astronomical_twilight_start_jd
                   2_456_884.6985098408' do
      assert_equal(2_456_884.6985098408,
                   @main.astronomical_twilight_start_jd)
    end
  end
end

#
class TestJDTimesCivil < Minitest::Test
  describe 'tests jd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.longitude = 0
      @main.latitude = 0
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from
       @main.civil_twilight_end_jd
                   2_456_885.267148037' do
      assert_equal(2_456_885.267148037,
                   @main.civil_twilight_end_jd)
    end

    it 'expected from
       @main.civil_twilight_start_jd
                   2_456_884.732851963' do
      assert_equal(2_456_884.732851963,
                   @main.civil_twilight_start_jd)
    end
  end
end

#
class TestJDTimesNautical < Minitest::Test
  describe 'tests jd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.longitude = 0
      @main.latitude = 0
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from
       @main.nautical_twilight_end_jd
                   2_456_885.2843073113' do
      assert_equal(2_456_885.2843073113,
                   @main.nautical_twilight_end_jd)
    end

    it 'expected from
       @main.nautical_twilight_start_jd
                   2_456_884.7156926887' do
      assert_equal(2_456_884.7156926887,
                   @main.nautical_twilight_start_jd)
    end
  end
end

#
class TestJDTimesRiseSet < Minitest::Test
  describe 'tests jd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.longitude = 0
      @main.latitude = 0
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.sunrise_jd
                   2_456_884.747618674' do
      assert_equal(2_456_884.747618674,
                   @main.sunrise_jd)
    end

    it 'expected from @main.sunset_jd
                   2_456_885.252381326' do
      assert_equal(2_456_885.252381326,
                   @main.sunset_jd)
    end
  end
end

#
class TestMain < Minitest::Test
  describe 'tests ajd of 2_455_055.0 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.jd
                   2_455_055.0' do
      assert_equal(2_455_055.0,
                   @main.jd)
    end

    it 'expected from @main.ajd
                   2_455_055.0' do
      assert_equal(2_455_055.0,
                   @main.ajd)
    end
  end
end

#
class TestJDTimesRiseSet < Minitest::Test
  describe 'tests ajd of 2_455_055.0 ' do
    before(:each) do
      @main = Main.new
      @main.longitude = 0
      @main.latitude = 0
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.sunrise_jd
                   2_455_054.7476076256' do
      assert_equal(2_455_054.7476076256,
                   @main.sunrise_jd)
    end

    it 'expected from @main.sunset_jd
                   2_455_055.2523923744' do
      assert_equal(2_455_055.2523923744,
                   @main.sunset_jd)
    end
  end
end
