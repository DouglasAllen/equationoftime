# other_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'Tests ajd of 2456885.0 ' do

    before(:each) do
      @other_angles = Eot.new
      @other_angles.ajd  =   2_456_885.0
      @other_angles.set_t_ma

      # ajd = @other_angles.ajd    
      # check date for this ajd when needed.
      @other_angles.date = @other_angles.ajd_to_datetime(@other_angles.ajd)
    end

    it 'expected   -2.7528817371494685 from @other_angles.omega ' do
      assert_equal(-2.7528817371494685, @other_angles.omega)
      @other_angles.ajd = 2_455_055.0;@other_angles.set_t_ma
      assert_equal(-1.0615640635268548, @other_angles.omega)
    end

    it 'expected   2.506820536931464 from @other_angles.earth_rotation_angle' do
      assert_equal(2.506820536931464, @other_angles.earth_rotation_angle)
      @other_angles.ajd = 2_455_055.0;@other_angles.set_t_ma
      assert_equal(2.4427584501333826, @other_angles.earth_rotation_angle)
    end

  end
end