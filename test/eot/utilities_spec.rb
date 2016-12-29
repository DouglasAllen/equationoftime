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
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   2_456_885.0 for @main.jd' do
      assert_equal 2_456_885.0, @main.jd
    end

    it 'expected   2_456_885.0 for @main.ajd' do
      assert_equal 2_456_885.0, @main.ajd
    end

    it 'expected for @main.ma.round(12)
                   3.850800396604' do
      assert_equal 3.850800396604, @main.ma.round(12)
    end
  end
end

#
class TestUtilities < Minitest::Test
  describe 'tests ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   2_451_545.0 for @main.check_jd_nil(nil)' do
      assert_equal 2_451_545.0, @main.check_jd_nil(nil)
      assert_equal 2_451_545.0, @main.check_jd_nil
    end

    it 'expected   2_451_545.0 for @main.check_jd_zero(0)' do
      assert_equal 2_451_545.0, @main.check_jd_zero(0)
      assert_equal 2_451_545.0, @main.check_jd_zero
    end

    it 'expected   2_451_545.0 for @main.check_t_nil(nil)' do
      assert_equal 2_451_545.0, @main.check_t_nil(nil)
      assert_equal 2_451_545.0, @main.check_t_nil
    end

    it 'expected   2_451_545.0 for @main.check_t_zero(0)' do
      assert_equal 2_451_545.0, @main.check_t_zero(0)
      assert_equal 2_451_545.0, @main.check_t_zero
    end
  end
end

#
class TestUtilities < Minitest::Test
  describe 'tests ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   90.8333 for @main.choice()' do
      assert_equal 90.8333, @main.choice(1)
      assert_equal 96, @main.choice(2)
      assert_equal 102, @main.choice(3)
      assert_equal 108, @main.choice(4)
    end

    it 'expected   140.12 for @main.mod_360(5900.12).round(12)' do
      assert_equal 140.12, @main.mod_360(5900.12).round(12)
      assert_equal 0.0, @main.mod_360
      assert_equal 0.0, @main.mod_360(nil)
      assert_equal 0.0, @main.mod_360(0)
    end
  end
end
