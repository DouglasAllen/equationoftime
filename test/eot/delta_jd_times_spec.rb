# delta_jd_times_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestEot < Minitest::Test
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
      assert_equal(2_456_885.0, @main.ajd)
    end

    it 'expected from @main.jd
                   2_456_885.0' do
      assert_equal(2_456_885.0, @main.ajd)
    end

    it 'expected from @main.date.to_s
                   "2014-08-15T12:00:00+00:00"' do
      assert_equal('2014-08-15T12:00:00+00:00',
                   @main.date.to_s)
    end
  end
end

#
class TestEot < Minitest::Test
  describe 'tests jd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.delta_oblique_jd.round(12)
                   -0.006551588739' do
      assert_equal(-0.006551588739,
                   @main.delta_oblique_jd.round(12))
    end

    it 'expected from @main.delta_orbit_jd.round(12)
                   0.003408024541' do
      assert_equal(0.003408024541,
                   @main.delta_orbit_jd.round(12))
    end

    it 'expected from @main.delta_total_jd.round(12)
                   -0.003143564199' do
      assert_equal(-0.003143564199,
                   @main.delta_total_jd.round(12))
    end
  end
end

#
class TestEot < Minitest::Test
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
      assert_equal(2_455_055.0, @main.jd)
    end

    it 'expected from @main.jd
                   2_455_055.0' do
      assert_equal(2_455_055.0, @main.jd)
    end

    it 'expected from @main.date.to_s
                   "2009-08-11T12:00:00+00:00"' do
      assert_equal('2009-08-11T12:00:00+00:00',
                   @main.date.to_s)
    end
  end
end

#
class TestDeltas < Minitest::Test
  describe 'tests ajd of 2_455_055.0 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.delta_oblique_jd.round(12)
                   -0.00675265058' do
      assert_equal(-0.00675265058,
                   @main.delta_oblique_jd.round(12))
    end

    it 'expected from @main.delta_orbit_jd.round(12)
                   0.003146240719' do
      assert_equal(0.003146240719,
                   @main.delta_orbit_jd.round(12))
    end

    it 'expected from @main.delta_total_jd.round(12)
                   -0.003606409861' do
      assert_equal(-0.003606409861,
                   @main.delta_total_jd.round(12))
    end
  end
end
