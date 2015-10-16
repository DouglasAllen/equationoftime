# solar_angles_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'Tests ajd of 2456885.0 then 2455055.0 ' do

    before(:each) do
      @solar_angles = Eot.new
      @solar_angles.ajd  =   2_456_885.0
      @solar_angles.set_t_ma

      # ajd = @solar_angles.ajd    
      # check date for this ajd when needed.
      @solar_angles.date = @solar_angles.ajd_to_datetime(@solar_angles.ajd)
    end

    it 'expected   2456885.0 for @solar_angles.ajd'do
      assert_equal(2_456_885.0, @solar_angles.ajd)
      @solar_angles.ajd = 2_455_055.0
      assert_equal(2_455_055.0, @solar_angles.ajd)
    end

    it 'expected   "2014-08-15T12:00:00+00:00" for @solar_angles.date'.to_s do
      assert_equal('2014-08-15T12:00:00+00:00', @solar_angles.date.to_s)
      @solar_angles.ajd = 2_455_055.0;@solar_angles.date = @solar_angles.ajd_to_datetime(@solar_angles.ajd)
      assert_equal("2009-08-11T12:00:00+00:00", @solar_angles.date.to_s)
    end

    it 'expected   3.8508003966038915 for @solar_angles.ma'do
      assert_equal(3.8508003966038915, @solar_angles.ma)
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(3.7871218188949207, @solar_angles.ma)
    end

    it 'expected   2.4887103398436143 from @solar_angles.apparent_longitude ' do
      assert_equal(2.4887103398436143, @solar_angles.apparent_longitude)
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(2.4252140645725033, @solar_angles.apparent_longitude)
    end

    it 'expected   -0.021413249720702462 from @solar_angles.equation_of_center ' do
      assert_equal(-0.021413249720702462, @solar_angles.equation_of_center)
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(-0.019768413456709915, @solar_angles.equation_of_center)
    end

    it 'expected   0.24401410219492767 from  @solar_angles.declination ' do
      assert_equal(0.24401410219492767, @solar_angles.declination)
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(0.2642691272256653, @solar_angles.declination)
    end
  
    it 'expected   0.016702468499021204 from  \
      @solar_angles.eccentricity ' do
      assert_equal(0.016702468499021204, @solar_angles.eccentricity)
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(0.016704576164208475, @solar_angles.eccentricity)
    end

    it 'expected   1.585784187793996 from  @solar_angles.ha_sun(1)? ' do
      assert_equal(1.585784187793996, @solar_angles.ha_sun(1))
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(1.5858632617532584, @solar_angles.ha_sun(1))
      @solar_angles.ajd = 2_456_885.0;@solar_angles.set_t_ma
      assert_equal(1.6787252911101866, @solar_angles.ha_sun(2))
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(1.6792969058858402, @solar_angles.ha_sun(2))
      @solar_angles.ajd = 2_456_885.0;@solar_angles.set_t_ma
      assert_equal(1.7867293723146582, @solar_angles.ha_sun(3))
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(1.7878867091100799, @solar_angles.ha_sun(3))
      @solar_angles.ajd = 2_456_885.0;@solar_angles.set_t_ma
      assert_equal(1.894891065733284, @solar_angles.ha_sun(4))
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(1.8966638356206444, @solar_angles.ha_sun(4))
    end

    it 'expected   2.529741165435018 from  @solar_angles.right_ascension ' do
      assert_equal(2.529741165435018, @solar_angles.right_ascension)
      @solar_angles.ajd = 2_455_055.0;@solar_angles.set_t_ma
      assert_equal(2.467563113545988, @solar_angles.right_ascension)
    end
  end
end