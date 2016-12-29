# utilities_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestEot < Minitest::Test
  describe 'tests ajd of 2_456_885.0' do
    before(:each) do
      @utilities = Main.new
      @utilities.jd = 2_456_885.0
      @utilities.ajd = 2_456_885.0
      @utilities.date = DateTime.jd(2_456_885.0 + 0.5)
      @utilities.set_t_ma
    end

    it 'expected   2_456_885.0 for @utilities.jd' do
      assert_equal 2_456_885.0, @utilities.jd
    end

    it 'expected   2_456_885.0 for @utilities.ajd' do
      assert_equal 2_456_885.0, @utilities.ajd
    end

    it 'expected   3.850800396604 for @utilities.ma.round(12)' do
      assert_equal 3.850800396604, @utilities.ma.round(12)
    end
  end
end

#
class TestEot < Minitest::Test
  describe 'tests ajd of 2_456_885.0' do
    before(:each) do
      @utilities = Main.new
      @utilities.jd = 2_456_885.0
      @utilities.ajd = 2_456_885.0
      @utilities.date = DateTime.jd(2_456_885.0 + 0.5)
      @utilities.set_t_ma
    end

    it 'expected   2_451_545.0 for @utilities.check_jd_nil(nil)' do
      assert_equal 2_451_545.0, @utilities.check_jd_nil(nil)
      assert_equal 2_451_545.0, @utilities.check_jd_nil
    end

    it 'expected   2_451_545.0 for @utilities.check_jd_zero(0)' do
      assert_equal 2_451_545.0, @utilities.check_jd_zero(0)
      assert_equal 2_451_545.0, @utilities.check_jd_zero
    end

    it 'expected   2_451_545.0 for @utilities.check_t_nil(nil)' do
      assert_equal 2_451_545.0, @utilities.check_t_nil(nil)
      assert_equal 2_451_545.0, @utilities.check_t_nil
    end

    it 'expected   2_451_545.0 for @utilities.check_t_zero(0)' do
      assert_equal 2_451_545.0, @utilities.check_t_zero(0)
      assert_equal 2_451_545.0, @utilities.check_t_zero
    end
  end
end

#
class TestEot < Minitest::Test
  describe 'tests ajd of 2_456_885.0' do
    before(:each) do
      @utilities = Main.new
      @utilities.jd = 2_456_885.0
      @utilities.ajd = 2_456_885.0
      @utilities.date = DateTime.jd(2_456_885.0 + 0.5)
      @utilities.set_t_ma
    end

    it 'expected   90.8333 for @utilities.choice()' do
      assert_equal 90.8333, @utilities.choice(1)
      assert_equal 96, @utilities.choice(2)
      assert_equal 102, @utilities.choice(3)
      assert_equal 108, @utilities.choice(4)
    end

    it 'expected   140.12 for @utilities.mod_360(5900.12).round(12)' do
      assert_equal 140.12, @utilities.mod_360(5900.12).round(12)
      assert_equal 0.0, @utilities.mod_360
      assert_equal 0.0, @utilities.mod_360(nil)
      assert_equal 0.0, @utilities.mod_360(0)
    end
  end
end
