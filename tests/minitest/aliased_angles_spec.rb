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

  it 'expected   220.63461047270653 for Eot_aliased_angles.ma'do
    assert_equal 220.63461047270653, Eot_aliased_angles.ma * Eot::R2D
  end

  it 'expected   142.5925989036079 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 142.5925989036079, Eot_aliased_angles.apparent_longitude() * Eot::R2D    
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
  
  it 'expected    13.980978196899454 returned by Eot_aliased_angles.declination()? ' do
     assert_equal 13.980978196899454, Eot_aliased_angles.declination() * Eot::R2D 
  end  
  
  it 'expected   -2.3470147361251383 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -2.3470147361251383, Eot_aliased_angles.delta_t_ecliptic() * Eot::R2D
  end
  
  it 'expected   1.2268888346559275 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 1.2268888346559275, Eot_aliased_angles.delta_t_elliptic() * Eot::R2D 
  end   
  
  it 'expected   0.016702468499021204 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal 0.016702468499021204, Eot_aliased_angles.eccentricity_earth_orbit()
  end
  
  it 'expected   -1.2268888346559395 returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -1.2268888346559395, Eot_aliased_angles.equation_of_center() * Eot::R2D 	
  end
  
  it 'expected   143.8233661382705 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 143.8233661382705, Eot_aliased_angles.geometric_mean_longitude() * Eot::R2D
  end

  it 'expected   109.68262604883758 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 109.68262604883758, Eot_aliased_angles.horizon_angle() * Eot::R2D 
  end

  it 'expected   220.63461047270653 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 220.63461047270653, Eot_aliased_angles.mean_anomaly() * Eot::R2D 
  end  
  
  it 'expected    143.81755546193716 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal  143.81755546193716, Eot_aliased_angles.mean_longitude_aries() * Eot::R2D
  end
  
  it 'expected   23.437377335837343 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 23.437377335837343, Eot_aliased_angles.mean_obliquity() * Eot::R2D
  end
  
  it 'expected   23.437377335837343 returned by Eot_aliased_angles.mean_obliquity_of_ecliptic()? ' do
    assert_equal 23.437377335837343, Eot_aliased_angles.mean_obliquity_of_ecliptic() * Eot::R2D
  end
  
  it 'expected   23.43504551637491 returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 23.43504551637491, Eot_aliased_angles.obliquity_correction() * Eot::R2D
  end
 
  it 'expected   144.9434920397397 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 144.9434920397397, Eot_aliased_angles.right_ascension() * Eot::R2D
  end
  
  it 'expected   0.6074784519729512 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal 0.6074784519729512, Eot_aliased_angles.sine_apparent_longitude()
  end  

  it 'expected   0.6074246812917259 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal 0.6074246812917259, Eot_aliased_angles.sine_true_longitude()
  end

  it 'expected   219.40772163805062 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 219.40772163805062, Eot_aliased_angles.true_anomaly() * Eot::R2D 
  end  

  it 'expected   142.5964773036146 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 142.5964773036146, Eot_aliased_angles.true_longitude() * Eot::R2D
  end

  it 'expected    143.81952716284977 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal  143.81952716284977, Eot_aliased_angles.true_longitude_aries() * Eot::R2D
  end    

  it 'expected   23.43504551637491 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 23.43504551637491, Eot_aliased_angles.true_obliquity() * Eot::R2D
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
  
  it 'expected   216.98609672458667, returned by Eot_aliased_angles.ma' do
    assert_equal 216.98609672458667, Eot_aliased_angles.ma * Eot::R2D
  end 

  it 'expected   216.98609672458667 Eot_aliased_angles.ma  returned by Eot_angles.mean_anomaly()' do
    assert_equal 216.98609672458667, Eot_aliased_angles.mean_anomaly() * Eot::R2D
  end   
  
  it 'expected   138.95453031577227 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 138.95453031577227, Eot_aliased_angles.apparent_longitude() * Eot::R2D
  end
  
  it 'expected   -0.7541886969974998 returned by Eot_aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal -0.7541886969974998, Eot_aliased_angles.cosine_apparent_longitude()
  end  
  
  it 'expected   -0.7542060769936675 returned by Eot_aliased_angles.cosine_true_longitude()? ' do
    assert_equal -0.7542060769936675, Eot_aliased_angles.cosine_true_longitude()
  end
  
  it 'expected   0.9174818088112336 returned by Eot_aliased_angles.cosine_true_obliquity()? ' do
    assert_equal 0.9174818088112336, Eot_aliased_angles.cosine_true_obliquity()
  end
  
  it 'expected    15.141505645852742 returned by Eot_aliased_angles.declination()? ' do
     assert_equal 15.141505645852742, Eot_aliased_angles.declination() * Eot::R2D
  end
  
  it 'expected   -2.4249052816675642 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -2.4249052816675642, Eot_aliased_angles.delta_t_ecliptic() * Eot::R2D    	
  end
  
  it 'expected   1.1326466587390922 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 1.1326466587390922, Eot_aliased_angles.delta_t_elliptic() * Eot::R2D
  end 
  
  it 'expected    0.016704576164208475 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
     assert_equal 0.016704576164208475, Eot_aliased_angles.eccentricity_earth_orbit()
  end
  
  it 'expected   -1.132646658739101 returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -1.132646658739101, Eot_aliased_angles.equation_of_center() * Eot::R2D
  end

  it 'expected   140.08869346549056 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 140.08869346549056, Eot_aliased_angles.geometric_mean_longitude() * Eot::R2D
  end

  it 'expected   111.35205810460306 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 111.35205810460306, Eot_aliased_angles.horizon_angle() * Eot::R2D 
  end

  it 'expected   216.98609672458667 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 216.98609672458667, Eot_aliased_angles.mean_anomaly() * Eot::R2D 
  end  
  
  it 'expected   140.08287430391974 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal 140.08287430391974, Eot_aliased_angles.mean_longitude_aries() * Eot::R2D
  end
  
  it 'expected   23.43802918164109 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 23.43802918164109, Eot_aliased_angles.mean_obliquity() * Eot::R2D 
  end
  
  it 'expected   23.439327590332425 returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 23.439327590332425, Eot_aliased_angles.obliquity_correction() * Eot::R2D
  end  
  
  it 'expected   141.38095208841904 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 141.38095208841904, Eot_aliased_angles.right_ascension() * Eot::R2D 
  end
  
  it 'expected   0.6566577566139103 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal 0.6566577566139103, Eot_aliased_angles.sine_apparent_longitude() 
  end  

  it 'expected   0.6566377946979767 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal 0.6566377946979767, Eot_aliased_angles.sine_true_longitude()
  end

  it 'expected   215.85345006584757 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 215.85345006584757, Eot_aliased_angles.true_anomaly() * Eot::R2D
  end
  
  it 'expected   138.9560468067515 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 138.9560468067515, Eot_aliased_angles.true_longitude() * Eot::R2D
  end 
  
  it 'expected   140.0868895077245 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal 140.0868895077245, Eot_aliased_angles.true_longitude_aries() * Eot::R2D 
  end

  it 'expected   23.439327590332425 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 23.439327590332425, Eot_aliased_angles.true_obliquity() * Eot::R2D	
  end      
  
end
