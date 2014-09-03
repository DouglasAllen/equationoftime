# aliased_angles_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_aliased_angles = Eot.new

r2d = 180.0 / Math::PI

describe 'aliased_angles using ajd of 2456885.0' do
  
  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute.
  
  before(:each) do 
    ajd                    = 2456885.0
    Eot_aliased_angles.ajd  = ajd
    # somtimes need date to check values somewhere else
    Eot_aliased_angles.date = Eot_aliased_angles.ajd_to_datetime(ajd)
    # sets the ta attribute
#    Eot_aliased_angles.time_julian_century()
    # sets the ma attribute    
    Eot_aliased_angles.mean_anomaly()
    # R2D = 180.0 / Math::PI
  end 

  it 'expected   2456885.0 for Eot_aliased_angles.ajd'do
    assert_equal 2456885.0, Eot_aliased_angles.ajd    
  end 
  
  it 'expected   "2014-08-15T12:00:00+00:00" for Eot_aliased_angles.date'.to_s do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_aliased_angles.date.to_s    
  end 

  it 'expected   220.63461047270653 for Eot_aliased_angles.ma'do
    assert_equal 220.63461047270653, Eot_aliased_angles.ma * r2d
  end

  it 'expected   142.59259890360846 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 142.59259890360846, Eot_aliased_angles.apparent_longitude() * r2d    
  end 
  
  it 'expected   -0.7943361570447087 returned by Eot_aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal -0.7943361570447087, Eot_aliased_angles.cosine_apparent_longitude() 
  end  
  
  it 'expected   -0.7943772759574979 returned by Eot_aliased_angles.cosine_true_longitude()? ' do
    assert_equal -0.7943772759574979, Eot_aliased_angles.cosine_true_longitude() 
  end
  
  it 'expected   0.9175115346811911 returned by Eot_aliased_angles.cosine_true_obliquity()? ' do
    assert_equal 0.9175115346811911, Eot_aliased_angles.cosine_true_obliquity()
  end
  
  it 'expected    13.98097819689927 returned by Eot_aliased_angles.declination()? ' do
     assert_equal 13.98097819689927, Eot_aliased_angles.declination() * r2d 
  end  
  
  it 'expected   -2.3470147361251383 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -2.3470147361251383, Eot_aliased_angles.delta_t_ecliptic() * r2d
  end
  
  it 'expected   1.2268888346559275 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 1.2268888346559275, Eot_aliased_angles.delta_t_elliptic() * r2d 
  end   
  
  it 'expected   0.016702468499021204 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal 0.016702468499021204, Eot_aliased_angles.eccentricity_earth_orbit()
  end
  
  it 'expected   -1.2268888346559395 returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -1.2268888346559395, Eot_aliased_angles.equation_of_center() * r2d 	
  end
  
  it 'expected   143.82336613827107 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 143.82336613827107, Eot_aliased_angles.geometric_mean_longitude() * r2d
  end

  it 'expected   109.68262604883732 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 109.68262604883732, Eot_aliased_angles.horizon_angle() * r2d 
  end

  it 'expected   220.63461047270653 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 220.63461047270653, Eot_aliased_angles.mean_anomaly() * r2d 
  end  
  
  it 'expected   143.81755550028174 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal 143.81755550028174, Eot_aliased_angles.mean_longitude_aries() * r2d
  end
  
  it 'expected   23.437377335837343 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 23.437377335837343, Eot_aliased_angles.mean_obliquity() * r2d
  end
  
  it 'expected   23.437377335837343 returned by Eot_aliased_angles.mean_obliquity_of_ecliptic()? ' do
    assert_equal 23.437377335837343, Eot_aliased_angles.mean_obliquity_of_ecliptic() * r2d
  end
  
  it 'expected   23.43504551637491 returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 23.43504551637491, Eot_aliased_angles.obliquity_correction() * r2d
  end
 
  it 'expected   144.94349203974028 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 144.94349203974028, Eot_aliased_angles.right_ascension() * r2d
  end
  
  it 'expected   0.6074784519729435 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal 0.6074784519729435, Eot_aliased_angles.sine_apparent_longitude()
  end  

  it 'expected   0.6074246812917181 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal 0.6074246812917181, Eot_aliased_angles.sine_true_longitude()
  end

  it 'expected   219.40772163805062 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 219.40772163805062, Eot_aliased_angles.true_anomaly() * r2d 
  end  

  it 'expected   142.59647730361513 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 142.59647730361513, Eot_aliased_angles.true_longitude() * r2d
  end

  it 'expected   143.81952750890466 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal 143.81952750890466, Eot_aliased_angles.true_longitude_aries() * r2d
  end    

  it 'expected   23.43504551637491 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 23.43504551637491, Eot_aliased_angles.true_obliquity() * r2d
  end    
end

describe 'aliased_angles using ajd  of 2455055.5' do

  # set ta attribute first as it gets tested anyway but a lot of methods
  # now rely on @ta so we don't have to keep calling it unless we change
  # The same goes for @ma.  
  # @ajd attribute
  before(:each) do
    ajd                    = 2455055.0     
    Eot_aliased_angles.ajd  = ajd
    # check date for this ajd when needed.
    Eot_aliased_angles.date = Eot_aliased_angles.ajd_to_datetime(ajd)
    # set ta attribute
#    Eot_aliased_angles.time_julian_century() 
    # set ma attribute    
    Eot_aliased_angles.ma_Sun()    
  end
  
  it 'expected   2455055.0, returned by Eot_aliased_angles.' do
    assert_equal 2455055.0, Eot_aliased_angles.ajd
  end
  
  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_aliased_angles.date.to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_aliased_angles.date.to_s
  end
  
  it 'expected   216.98609672458667, returned by Eot_aliased_angles.ma' do
    assert_equal 216.98609672458667, Eot_aliased_angles.ma * r2d
  end 

  it 'expected   216.98609672458667 Eot_aliased_angles.ma  returned by Eot_angles.mean_anomaly()' do
    assert_equal 216.98609672458667, Eot_aliased_angles.mean_anomaly() * r2d
  end   
  
  it 'expected   138.95453031577227 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 138.95453031577227, Eot_aliased_angles.apparent_longitude() * r2d
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
     assert_equal 15.141505645852742, Eot_aliased_angles.declination() * r2d
  end
  
  it 'expected   -2.4249052816675642 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -2.4249052816675642, Eot_aliased_angles.delta_t_ecliptic() * r2d    	
  end
  
  it 'expected   1.1326466587390922 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 1.1326466587390922, Eot_aliased_angles.delta_t_elliptic() * r2d
  end 
  
  it 'expected    0.016704576164208475 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
     assert_equal 0.016704576164208475, Eot_aliased_angles.eccentricity_earth_orbit()
  end
  
  it 'expected   -1.132646658739101 returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -1.132646658739101, Eot_aliased_angles.equation_of_center() * r2d
  end

  it 'expected   140.08869346549056 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 140.08869346549056, Eot_aliased_angles.geometric_mean_longitude() * r2d
  end

  it 'expected   111.35205810460305 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 111.35205810460305, Eot_aliased_angles.horizon_angle() * r2d 
  end

  it 'expected   216.98609672458667 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 216.98609672458667, Eot_aliased_angles.mean_anomaly() * r2d 
  end  
  
  it 'expected   140.082874313066 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal 140.082874313066, Eot_aliased_angles.mean_longitude_aries() * r2d
  end
  
  it 'expected   23.438029181641095 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 23.438029181641095, Eot_aliased_angles.mean_obliquity() * r2d 
  end
  
  it 'expected   23.439327590332425 returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 23.439327590332425, Eot_aliased_angles.obliquity_correction() * r2d
  end  
  
  it 'expected   141.38095208841904 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 141.38095208841904, Eot_aliased_angles.right_ascension() * r2d 
  end
  
  it 'expected   0.6566577566139103 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal 0.6566577566139103, Eot_aliased_angles.sine_apparent_longitude() 
  end  

  it 'expected   0.6566377946979767 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal 0.6566377946979767, Eot_aliased_angles.sine_true_longitude()
  end

  it 'expected   215.85345006584757 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 215.85345006584757, Eot_aliased_angles.true_anomaly() * r2d
  end
  
  it 'expected   138.9560468067515 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 138.9560468067515, Eot_aliased_angles.true_longitude() * r2d
  end 
  
  it 'expected   140.08689014954535 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal 140.08689014954535, Eot_aliased_angles.true_longitude_aries() * r2d 
  end

  it 'expected   23.439327590332425 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 23.439327590332425, Eot_aliased_angles.true_obliquity() * r2d	
  end      
  
end
