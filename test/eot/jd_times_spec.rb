# jd_times_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'tests jd of 2456885.0 ' do

    before(:each) do
      @jd_times = Eot.new
      # set our current object attributes
      @jd_times.jd                =   2_456_885.0
      @jd_times.ajd = @jd_times.jd
      @jd_times.set_t_ma

      ajd = @jd_times.jd
      # check date for this ajd when needed.
      @jd_times.date = @jd_times.ajd_to_datetime(ajd)
    end

    it 'expected   2456885.0 for @jd_times.ajd'do
      assert_equal(2_456_885.0, @jd_times.ajd)
    end
 
    it 'expected   2456885.30158128 from \
      @jd_times.astronomical_twilight_end_jd ' do
      assert_equal(2456885.30158128, \
          @jd_times.astronomical_twilight_end_jd)
    end

    it 'expected   2456884.69841872 from \
      @jd_times.astronomical_twilight_start_jd ' do
      assert_equal(2456884.69841872, \
          @jd_times.astronomical_twilight_start_jd)
    end

    it 'expected   2456885.267177428 from @jd_times.civil_twilight_end_jd() ' do
      assert_equal(2456885.267177428, @jd_times.civil_twilight_end_jd)
    end

    it 'expected   2456884.732822572 from \
      @jd_times.civil_twilight_start_jd() ' do
      assert_equal(2456884.732822572, @jd_times.civil_twilight_start_jd)
    end

    it 'expected   2456885.2843668116 from \
      @jd_times.nautical_twilight_end_jd ' do
      assert_equal(2456885.2843668116, \
          @jd_times.nautical_twilight_end_jd)
    end

    it 'expected   2456884.7156331884 from \
      @jd_times.nautical_twilight_start_jd ' do
      assert_equal(2456884.7156331884, \
          @jd_times.nautical_twilight_start_jd)
    end 

    it 'expected   2456884.7476146077 from @jd_times.sunrise_jd() ' do
      assert_equal(2456884.7476146077, @jd_times.sunrise_jd)
    end

    it 'expected   2456885.2523853923 from @jd_times.sunset_jd() ' do
      assert_equal(2456885.2523853923, @jd_times.sunset_jd)
    end

  end

  describe 'tests ajd of 2455055.0 ' do

    before(:each) do
      @jd_times = Eot.new
      # set our current object attributes
      @jd_times.jd                     = 2_455_055.0
      @jd_times.ajd = @jd_times.jd    
      @jd_times.set_t_ma

      ajd = @jd_times.jd   # for use here
      # check date for this ajd when needed.
      @jd_times.date = @jd_times.ajd_to_datetime(ajd)
    end

    it 'expected   2_455_055.0, from @jd_times. ' do
      assert_equal(2_455_055.0, @jd_times.jd)
    end

    it 'expected   2455054.7476020227 from @jd_times.sunrise_jd()' do
      assert_equal(2455054.7476020227, @jd_times.sunrise_jd)
    end

    it 'expected   2455055.2523979773 from @jd_times.sunset_jd() ' do
      assert_equal(2455055.2523979773, @jd_times.sunset_jd)
    end

  end
end