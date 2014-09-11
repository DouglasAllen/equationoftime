# aliased_angles_spec.rb
#
# comment out next two lines and uncomment below for rpec tests.
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_aliased_angles = Eot.new()

describe 'tests ajd of 2456885.0' do
  
  before(:each) do  
    Eot_aliased_angles.ajd  = 2456885.0
    ajd = Eot_aliased_angles.ajd
    # somtimes need date to check values somewhere else
    Eot_aliased_angles.date = Eot_aliased_angles.ajd_to_datetime(ajd)
  end 

  it 'expected   2456885.0 for Eot_aliased_angles.ajd'do
    assert_equal 2456885.0, Eot_aliased_angles.ajd    
  end 
  
  it 'expected   "2014-08-15T12:00:00+00:00" for Eot_aliased_angles.date'.to_s do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_aliased_angles.date.to_s    
  end 

  it 'expected   3.8508003966038915 for Eot_aliased_angles.ma'do
    assert_equal 3.8508003966038915, Eot_aliased_angles.ma
  end

  it 'expected   2.4887103398436143 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 2.4887103398436143, Eot_aliased_angles.apparent_longitude()    
  end 
  
  it 'expected   -0.7943361570447028 returned by Eot_aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal -0.7943361570447028, Eot_aliased_angles.cosine_apparent_longitude() 
  end  
  
  it 'expected   -0.7943772759574919 returned by Eot_aliased_angles.cosine_true_longitude()? ' do
    assert_equal -0.7943772759574919, Eot_aliased_angles.cosine_true_longitude() 
  end
  
  it 'expected   0.9175115346811911 returned by Eot_aliased_angles.cosine_true_obliquity()? ' do
    assert_equal 0.9175115346811911, Eot_aliased_angles.cosine_true_obliquity()
  end
  
  it 'expected    0.24401410218543554 returned by Eot_aliased_angles.declination()? ' do
     assert_equal 0.24401410218543554, Eot_aliased_angles.declination() 
  end  
  
  it 'expected   -0.04103082558803539 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -0.04103082558803539, Eot_aliased_angles.delta_t_ecliptic()
  end
  
  it 'expected   0.021413249720702243 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 0.021413249720702243, Eot_aliased_angles.delta_t_elliptic() 
  end   
  
  it 'expected   0.016702468499021204 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal 0.016702468499021204, Eot_aliased_angles.eccentricity_earth_orbit()
  end
  
  it 'expected   -0.021413249720702462 returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -0.021413249720702462, Eot_aliased_angles.equation_of_center() 	
  end
  
  it 'expected   2.5101912804141424 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 2.5101912804141424, Eot_aliased_angles.geometric_mean_longitude()
  end

  it 'expected   1.9143229567859146 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 1.9143229567859146, Eot_aliased_angles.horizon_angle() 
  end

  it 'expected   3.8508003966038915 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 3.8508003966038915, Eot_aliased_angles.mean_anomaly() 
  end  
  
  it 'expected    2.510089864980358 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal  2.510089864980358, Eot_aliased_angles.mean_longitude_aries()
  end
  
  it 'expected   0.40905940254265843 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 0.40905940254265843, Eot_aliased_angles.mean_obliquity()
  end
  
  it 'expected   0.40905940254265843 returned by Eot_aliased_angles.mean_obliquity_of_ecliptic()? ' do
    assert_equal 0.40905940254265843, Eot_aliased_angles.mean_obliquity_of_ecliptic()
  end
  
  it 'expected   0.40901870461547685 returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 0.40901870461547685, Eot_aliased_angles.obliquity_correction()
  end
 
  it 'expected   2.5297411654316497 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 2.5297411654316497, Eot_aliased_angles.right_ascension()
  end
  
  it 'expected   0.6074784519729512 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal 0.6074784519729512, Eot_aliased_angles.sine_apparent_longitude()
  end  

  it 'expected   0.6074246812917259 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal 0.6074246812917259, Eot_aliased_angles.sine_true_longitude()
  end

  it 'expected   3.8293871468831893 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 3.8293871468831893, Eot_aliased_angles.true_anomaly() 
  end  

  it 'expected   2.48877803069344 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 2.48877803069344, Eot_aliased_angles.true_longitude()
  end

  it 'expected    2.5101242776531474 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal  2.5101242776531474, Eot_aliased_angles.true_longitude_aries()
  end    

  it 'expected   0.40901870461547685 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 0.40901870461547685, Eot_aliased_angles.true_obliquity()
  end    
end

describe 'tests ajd of 2455055.5' do

  before(:each) do
    ajd                    = 2455055.0     
    Eot_aliased_angles.ajd  = ajd
    # check date for this ajd when needed.
    Eot_aliased_angles.date = Eot_aliased_angles.ajd_to_datetime(ajd)    
  end
  
  it 'expected   2455055.0, returned by Eot_aliased_angles.' do
    assert_equal 2455055.0, Eot_aliased_angles.ajd
  end
  
  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_aliased_angles.date.to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_aliased_angles.date.to_s
  end
  
  it 'expected   3.7871218188949207, returned by Eot_aliased_angles.ma' do
    assert_equal 3.7871218188949207, Eot_aliased_angles.ma
  end 

  it 'expected   3.7871218188949207 Eot_aliased_angles.ma  returned by Eot_angles.mean_anomaly()' do
    assert_equal 3.7871218188949207, Eot_aliased_angles.mean_anomaly()
  end   
  
  it 'expected   2.4252140645725033 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 2.4252140645725033, Eot_aliased_angles.apparent_longitude()
  end
  
  it 'expected   -0.7541886969975007 returned by Eot_aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal -0.7541886969975007, Eot_aliased_angles.cosine_apparent_longitude()
  end  
  
  it 'expected   -0.7542060769936684 returned by Eot_aliased_angles.cosine_true_longitude()? ' do
    assert_equal -0.7542060769936684, Eot_aliased_angles.cosine_true_longitude()
  end
  
  it 'expected   0.9174818088112336 returned by Eot_aliased_angles.cosine_true_obliquity()? ' do
    assert_equal 0.9174818088112336, Eot_aliased_angles.cosine_true_obliquity()
  end
  
  it 'expected    0.26426912722944046 returned by Eot_aliased_angles.declination()? ' do
     assert_equal 0.26426912722944046, Eot_aliased_angles.declination()
  end
  
  it 'expected   -0.04234904897476355 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -0.04234904897476355, Eot_aliased_angles.delta_t_ecliptic()    	
  end
  
  it 'expected   0.019768413456709766 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 0.019768413456709766, Eot_aliased_angles.delta_t_elliptic()
  end 
  
  it 'expected    0.016704576164208475 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
     assert_equal 0.016704576164208475, Eot_aliased_angles.eccentricity_earth_orbit()
  end
  
  it 'expected   -0.019768413456709915 returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -0.019768413456709915, Eot_aliased_angles.equation_of_center()
  end

  it 'expected   2.445008945789877 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 2.445008945789877, Eot_aliased_angles.geometric_mean_longitude()
  end

  it 'expected   1.9434600427973594 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 1.9434600427973594, Eot_aliased_angles.horizon_angle() 
  end

  it 'expected   3.7871218188949207 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 3.7871218188949207, Eot_aliased_angles.mean_anomaly() 
  end  
  
  it 'expected   2.444907382260759 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal 2.444907382260759, Eot_aliased_angles.mean_longitude_aries()
  end
  
  it 'expected   0.4090707793981491 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 0.4090707793981491, Eot_aliased_angles.mean_obliquity() 
  end
  
  it 'expected   0.4090934409048494 returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 0.4090934409048494, Eot_aliased_angles.obliquity_correction()
  end  
  
  it 'expected   2.467563113547267 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 2.467563113547267, Eot_aliased_angles.right_ascension() 
  end
  
  it 'expected   0.6566577566139093 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal 0.6566577566139093, Eot_aliased_angles.sine_apparent_longitude() 
  end  

  it 'expected   0.6566377946979757 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal 0.6566377946979757, Eot_aliased_angles.sine_true_longitude()
  end

  it 'expected   3.767353405438211 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 3.767353405438211, Eot_aliased_angles.true_anomaly()
  end
  
  it 'expected   2.4252405323331674 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 2.4252405323331674, Eot_aliased_angles.true_longitude()
  end 
  
  it 'expected   2.4449774607872907 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal 2.4449774607872907, Eot_aliased_angles.true_longitude_aries() 
  end

  it 'expected   0.4090934409048494 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 0.4090934409048494, Eot_aliased_angles.true_obliquity()	
  end      
  
end
