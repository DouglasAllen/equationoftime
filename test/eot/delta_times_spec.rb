# delta_times_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestMain < Minitest::Test
  describe 'Tests ajd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected for @main.jd
                   2_456_885.0' do
      assert_equal(2_456_885.0,
                   @main.jd)
    end

    it 'expected for @main.ajd
                   2_456_885.0' do
      assert_equal(2_456_885.0,
                   @main.ajd)
    end

    it 'expected for @main.date.to_s
                   "2014-08-15T12:00:00+00:00"' do
      assert_equal '2014-08-15T12:00:00+00:00',
                   @main.date.to_s
    end
  end
end

#
class TestDeltaTimes < Minitest::Test
  describe 'Tests ajd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.time_delta_oblique.round(12)
                   -9.434287784713' do
      assert_equal(-9.434287784713,
                   @main.time_delta_oblique.round(12))
    end

    it 'expected from @main.time_delta_orbit.round(12)
                   4.907555338624' do
      assert_equal(4.907555338624,
                   @main.time_delta_orbit.round(12))
    end

    it 'expected from @main.time_delta_total.round(12)
                   -4.526732446089' do
      assert_equal(-4.526732446089,
                   @main.time_delta_total.round(12))
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

    it 'expected from @main.date.to_s
                   "2009-08-11T12:00:00+00:00"' do
      assert_equal '2009-08-11T12:00:00+00:00',
                   @main.date.to_s
    end
  end
end

#
class TestDeltaTimes < Minitest::Test
  describe 'tests ajd of 2_455_055.0 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.time_delta_oblique.round(12)
                   -9.723816835183' do
      assert_equal(-9.723816835183,
                   @main.time_delta_oblique.round(12))
    end

    it 'expected from @main.time_delta_orbit.round(12)
                   4.530586634956' do
      assert_equal(4.530586634956,
                   @main.time_delta_orbit.round(12))
    end

    it 'expected is from @main.time_delta_total.round(12)
                   -5.193230200226' do
      assert_equal(-5.193230200226,
                   @main.time_delta_total.round(12))
    end
  end
end
