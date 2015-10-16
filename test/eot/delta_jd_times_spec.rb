# delta_jd_times_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'tests jd of 2456885.0 ' do

    before(:each) do
      @delta_jd_times = Eot.new
      # set our current object attributes
      @delta_jd_times.jd                =   2_456_885.0
      @delta_jd_times.ajd = @delta_jd_times.jd
      @delta_jd_times.set_t_ma

      ajd = @delta_jd_times.jd
      # check date for this ajd when needed.
      @delta_jd_times.date = @delta_jd_times.ajd_to_datetime(ajd)
    end

    it 'expected   2456885.0 for @delta_jd_times.ajd'do
      assert_equal(2_456_885.0, @delta_jd_times.ajd)
    end

    it 'expected   -0.006530258712013356 from @delta_jd_times.delta_oblique_jd ' do
      assert_equal(-0.006530258712013356, @delta_jd_times.delta_oblique_jd)
    end

    it 'expected   0.0034080245407109443 from @delta_jd_times.delta_orbit_jd ' do
      assert_equal(0.0034080245407109443, @delta_jd_times.delta_orbit_jd)
    end

    it 'expected   -0.003122234171302412 from @delta_jd_times.delta_total_jd ' do
      assert_equal(-0.003122234171302412, @delta_jd_times.delta_total_jd)
    end

  end

  describe 'tests ajd of 2455055.0 ' do

    before(:each) do
      @delta_jd_times = Eot.new
      # set our current object attributes
      @delta_jd_times.jd                     = 2_455_055.0
      @delta_jd_times.ajd = @delta_jd_times.jd    
      @delta_jd_times.set_t_ma

      ajd = @delta_jd_times.jd   # for use here
      # check date for this ajd when needed.
      @delta_jd_times.date = @delta_jd_times.ajd_to_datetime(ajd)
    end

    it 'expected   2_455_055.0, from @delta_jd_times. ' do
      assert_equal(2_455_055.0, @delta_jd_times.jd)
    end

    it 'expected -0.006740060479370825 from @delta_jd_times.delta_oblique_jd ' do
      assert_equal(-0.006740060479370825, @delta_jd_times.delta_oblique_jd)
    end

    it 'expected   0.0031462407187197246 from @delta_jd_times.delta_orbit_jd ' do
      assert_equal(0.0031462407187197246, @delta_jd_times.delta_orbit_jd)
    end
  
    it 'expected   -0.0035938197606511014 from @delta_jd_times.delta_total_jd ' do
      assert_equal(-0.0035938197606511014, @delta_jd_times.delta_total_jd)
    end

  end
end