# delta_angles_spec.rb

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

    it 'expected   2_456_885.0 for angles.jd' do
      assert_equal(2_456_885.0, @main.jd)
    end

    it 'expected   2_456_885.0 for angles.ajd' do
      assert_equal(2_456_885.0, @main.ajd)
    end

    it 'expected   "2014-08-15T12:00:00+00:00" for @main.date.to_s' do
      assert_equal('2014-08-15T12:00:00+00:00', @main.date.to_s)
    end
  end
end

#
class TestDeltaAngles < Minitest::Test
  describe 'Tests ajd of 2_456_885.0 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   "not implemented yet" from @main.delta_epsilon' do
      assert_equal('not implemented yet', @main.delta_epsilon)
    end

    it 'expected   -0.041164846106 from @main.delta_oblique.round(12)' do
      assert_equal(-0.041164846106, @main.delta_oblique.round(12))
    end

    it 'expected   0.021413249721 from @main.delta_orbit.round(12)' do
      assert_equal(0.021413249721, @main.delta_orbit.round(12))
    end

    it 'expected   "not implemented yet" from @main.delta_psi' do
      assert_equal('not implemented yet', @main.delta_psi)
    end

    it 'expected   "not implemented yet" from @main.equation_of_equinox' do
      assert_equal('not implemented yet', @main.equation_of_equinox)
    end

    it 'expected   -0.019751596385 from @main.delta_total.round(12)' do
      assert_equal(-0.019751596385, @main.delta_total.round(12))
    end
  end
end

#
class TestMain < Minitest::Test
  describe 'Tests ajd of 2_455_055.5 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   2_455_055.0, from @main.jd' do
      assert_equal(2_455_055.0, @main.jd)
    end

    it 'expected   2_455_055.0, from @main.ajd' do
      assert_equal(2_455_055.0, @main.ajd)
    end

    it 'expected   "2009-08-11T12:00:00+00:00" from @main.date.to_s' do
      assert_equal('2009-08-11T12:00:00+00:00', @main.date.to_s)
    end
  end
end

#
class TestDeltaAngles < Minitest::Test
  describe 'Tests ajd of 2_455_055.5 ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   "not implemented yet" from @main.delta_epsilon' do
      assert_equal('not implemented yet', @main.delta_epsilon)
    end

    it 'expected   -0.042428154909 from @main.delta_oblique.round(12)' do
      assert_equal(-0.042428154909, @main.delta_oblique.round(12))
    end

    it 'expected   0.019768413457 from @main.delta_orbit.round(12)' do
      assert_equal(0.019768413457, @main.delta_orbit.round(12))
    end

    it 'expected   "not implemented yet" from @main.delta_psi' do
      assert_equal('not implemented yet', @main.delta_psi)
    end

    it 'expected   "not implemented yet" from @main.equation_of_equinox' do
      assert_equal('not implemented yet', @main.equation_of_equinox)
    end

    it 'expected   -0.022659741452 from @main.delta_total.round(12)' do
      assert_equal(-0.022659741452, @main.delta_total.round(12))
    end
  end
end
