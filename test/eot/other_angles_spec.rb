# other_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestOtherAngles < Minitest::Test

  describe 'Tests ajd of 2_456_885.0 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.omega.round(12)' do
      assert_equal(-2.752881737149, @main.omega.round(12))
      @main.jd = 2_455_055.0
      @main.set_t_ma
      assert_equal(-1.061564063527, @main.omega.round(12))
    end

    it 'expected from @main.earth_rotation_angle.round(12)
                   "not implemented yet"' do
      assert_equal('not implemented yet', @main.earth_rotation_angle)
      @main.jd = 2_455_055.0
      @main.set_t_ma
      assert_equal('not implemented yet', @main.earth_rotation_angle)
    end
  end
end
