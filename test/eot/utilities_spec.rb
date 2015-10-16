<<<<<<< HEAD
# utilities_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'tests ajd of 2456885.0' do

    before(:each) do
      @utilities = Eot.new
      @utilities.ajd  = 2_456_885.0
      ajd = @utilities.ajd
      @utilities.set_t_ma
      # check date for this ajd when needed.
      @utilities.date = @utilities.ajd_to_datetime(ajd)
    end

    it 'expected   2456885.0 for @utilities.ajd'do
      assert_equal 2_456_885.0, @utilities.ajd
    end

    it 'expected   3.8508003966038915 for @utilities.ma'do
      assert_equal 3.8508003966038915, @utilities.ma
    end

    it 'expected   2451545.0 for @utilities.check_jd_nil(nil)'do
      assert_equal 2451545.0, @utilities.check_jd_nil(nil)
      assert_equal 2451545.0, @utilities.check_jd_nil()
    end

    it 'expected   2451545.0 for @utilities.check_jd_zero(0)'do
      assert_equal 2451545.0, @utilities.check_jd_zero(0)
      assert_equal 2451545.0, @utilities.check_jd_zero()
    end

    it 'expected   2451545.0 for @utilities.check_t_nil(nil)'do
      assert_equal 2451545.0, @utilities.check_t_nil(nil)
      assert_equal 2451545.0, @utilities.check_t_nil()
    end

    it 'expected   2451545.0 for @utilities.check_t_zero(0)'do
      assert_equal 2451545.0, @utilities.check_t_zero(0)
      assert_equal 2451545.0, @utilities.check_t_zero()
    end

    it 'expected   90.8333 for @utilities.choice()'do
      assert_equal 90.8333, @utilities.choice(1)
      assert_equal 96, @utilities.choice(2)
      assert_equal 102, @utilities.choice(3)
      assert_equal 108, @utilities.choice(4)
    end

    it 'expected   140.1200000000003 for @utilities.mod_360(5900.12)'do
      assert_equal 140.1200000000003, @utilities.mod_360(5900.12)
      assert_equal 0.0, @utilities.mod_360
      assert_equal 0.0, @utilities.mod_360(nil)
      assert_equal 0.0, @utilities.mod_360(0)
    end

  end
end
=======
# ~ # utilities_spec.rb
# ~ #

# ~ require_relative 'spec_config'

# ~ lib = File.expand_path('../../../lib', __FILE__)
# ~ $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# ~ require 'eot'

# ~ Eot_utilities = Eot.new

# ~ describe 'tests ajd of 2456885.0' do

# ~ before(:each) do
# ~ Eot_utilities.ajd  =    2456885.0
# ~ ajd = Eot_utilities.ajd
# ~ # check date for this ajd when needed.
# ~ Eot_utilities.date = Eot_utilities.ajd_to_datetime(ajd)
# ~ end

# ~ it 'expected   2456885.0 for Eot_utilities.ajd'do
# ~ assert_equal 2456885.0, Eot_utilities.ajd
# ~ end

# ~ it 'expected   3.8508003966038915 for Eot_utilities.ma'do
# ~ assert_equal 3.8508003966038915, Eot_utilities.ma
# ~ end

# ~ it 'expected   0.0 returned by Eot_utilities.mod_360() ' do
# ~ assert_equal 0.0, Eot_utilities.mod_360()
# ~ assert_equal 0.0, Eot_utilities.mod_360(nil)
# ~ assert_equal 0.0, Eot_utilities.mod_360(0)
# ~ end

# ~ end
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
