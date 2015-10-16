# delta_times_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test
  describe 'tests jd of 2456885.0 ' do

    before(:each) do
      @delta_times = Eot.new
      # set our current object attributes
      @delta_times.jd                =   2_456_885.0
      @delta_times.ajd = @delta_times.jd
      @delta_times.set_t_ma

      ajd = @delta_times.jd
      # check date for this ajd when needed.
      @delta_times.date = @delta_times.ajd_to_datetime(ajd)
    end

    it 'expected   2456885.0 for @delta_times.ajd'do
      assert_equal(2_456_885.0, @delta_times.ajd)
    end

    it 'expected   "2014-08-15T12:00:00+00:00" for @delta_times.date'.to_s do
      assert_equal '2014-08-15T12:00:00+00:00', @delta_times.date.to_s
    end

    it 'expected   -9.403572545299232 from @delta_times.time_delta_oblique() ' do
      assert_equal(-9.403572545299232, @delta_times.time_delta_oblique)
    end

    it 'expected   4.90755533862376 from @delta_times.time_delta_orbit() ' do
      assert_equal(4.90755533862376, @delta_times.time_delta_orbit)
    end

    it 'expected   -4.496017206675473 from @delta_times.time_delta_total ' do
      assert_equal(-4.496017206675473, @delta_times.time_delta_total)
    end

  end

  describe 'tests ajd of 2455055.0 ' do

    before(:each) do
      @delta_times = Eot.new
      # set our current object attributes
      @delta_times.jd                     = 2_455_055.0
      @delta_times.ajd = @delta_times.jd    
      @delta_times.set_t_ma

      ajd = @delta_times.jd   # for use here
      # check date for this ajd when needed.
      @delta_times.date = @delta_times.ajd_to_datetime(ajd)
    end

    it 'expected   2_455_055.0, from @delta_times. ' do
      assert_equal(2_455_055.0, @delta_times.jd)
    end

    it 'expected   "2009-08-11T12:00:00+00:00" from @delta_times.date.to_s ' do
      assert_equal '2009-08-11T12:00:00+00:00', @delta_times.date.to_s
    end

    it 'expected   -9.705687090293988 from @delta_times.time_delta_oblique ' do
      assert_equal(-9.705687090293988, @delta_times.time_delta_oblique)
    end

    it 'expected   4.5305866349564035 from @delta_times.time_delta_orbit ' do
      assert_equal(4.5305866349564035, @delta_times.time_delta_orbit)
    end

    it 'expected   -5.175100455337586 is from @delta_times.time_delta_total ' do
      assert_equal(-5.175100455337586, @delta_times.time_delta_total)
    end

  end
end