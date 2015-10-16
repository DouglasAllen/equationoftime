# delta_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'Tests ajd of 2456885.0 ' do

    before(:each) do
      @delta_angles = Eot.new
      
      @delta_angles.ajd  =   2_456_885.0
      ajd = @delta_angles.ajd
      @delta_angles.set_t_ma
      # check date for this ajd when needed.
      @delta_angles.date = @delta_angles.ajd_to_datetime(ajd)
    end

    it 'expected   2456885.0 for angles.ajd'do
      assert_equal(2_456_885.0, @delta_angles.ajd)
    end

    it 'expected   "2014-08-15T12:00:00+00:00" for @delta_angles.date'.to_s do
      assert_equal('2014-08-15T12:00:00+00:00', @delta_angles.date.to_s)
    end

    it 'expected   -4.069792718159396e-05 from @delta_angles.delta_epsilon? ' do
      assert_equal(-4.069792718159396e-05, @delta_angles.delta_epsilon)
    end

    it 'expected   -0.04103082559140381 from @delta_angles.delta_oblique? ' do
      assert_equal(-0.04103082559140381, @delta_angles.delta_oblique)
    end

    it 'expected   0.021413249720702462 from @delta_angles.delta_orbit? ' do
      assert_equal(0.021413249720702462, @delta_angles.delta_orbit)
    end

    it 'expected   3.75123821843003e-05 from @delta_angles.delta_psi? ' do
      assert_equal(3.75123821843003e-05, @delta_angles.delta_psi)
    end

    it 'expected   3.4412912434333975e-05 from @delta_angles.equation_of_equinox? ' do
      assert_equal(3.4412912434333975e-05, @delta_angles.equation_of_equinox)
    end

    it 'expected   -0.019617575870701346 from @delta_angles.delta_total? ' do
      assert_equal(-0.019617575870701346, @delta_angles.delta_total)
    end
  end

  describe 'Tests ajd of 2455055.5 ' do

    before(:each) do
      @delta_angles = Eot.new
      @delta_angles.ajd             = 2_455_055.0
      ajd = @delta_angles.ajd
      @delta_angles.set_t_ma
      # check date for this ajd when needed.
      @delta_angles.date = @delta_angles.ajd_to_datetime(ajd)
    end

    it 'expected   2455055.0, from @delta_angles.' do
      assert_equal(2_455_055.0, @delta_angles.ajd)
    end

    it 'expected   "2009-08-11T12:00:00+00:00" from @delta_angles.date.to_s' do
      assert_equal('2009-08-11T12:00:00+00:00', @delta_angles.date.to_s)
    end

    it 'expected   2.2661506700250296e-05 from @delta_angles.delta_epsilon()? ' do
      assert_equal(2.2661506700250296e-05, @delta_angles.delta_epsilon)
    end

    it 'expected   -0.04234904897348457 from @delta_angles.delta_oblique()? ' do
      assert_equal(-0.04234904897348457, @delta_angles.delta_oblique)
    end

    it 'expected   0.019768413456709915 from @delta_angles.delta_orbit()? ' do
      assert_equal(0.019768413456709915, @delta_angles.delta_orbit)
    end

    it 'expected   7.639341522992976e-05 from @delta_angles.delta_psi()? ' do
      assert_equal(7.639341522992976e-05, @delta_angles.delta_psi)
    end

    it 'expected   7.007879585074761e-05 from @delta_angles.equation_of_equinox()? ' do
      assert_equal(7.007879585074761e-05, @delta_angles.equation_of_equinox)
    end

    it 'expected   -0.022580635516774656 from @delta_angles.delta_total()? ' do
      assert_equal(-0.022580635516774656, @delta_angles.delta_total)
    end

  end
end