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
    Eot_aliased_angles.time_julian_century()
    # sets the ma attribute    
    Eot_aliased_angles.mean_anomaly()
  end 

  it 'expected   2456885.0 for Eot_aliased_angles.ajd'do
    assert_equal 2456885.0, Eot_aliased_angles.ajd    
  end 
  
  it 'expected    "2014-08-15T12:00:00+00:00" for Eot_aliased_angles.date'.to_s do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_aliased_angles.date.to_s    
  end 

  it 'expected   220.63461047326172 for Eot_aliased_angles.ma'do
    assert_equal 220.63461047326172, Eot_aliased_angles.ma
  end

  it 'expected   142.59259890359445 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 142.59259890359445, Eot_aliased_angles.apparent_longitude()    
  end 
  
  it 'expected   -0.7943361570445601 returned by Eot_aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal -0.7943361570445601, Eot_aliased_angles.cosine_apparent_longitude() 
  end  
  
  it 'expected   -0.7943772759573492 returned by Eot_aliased_angles.cosine_true_longitude()? ' do
    assert_equal -0.7943772759573492, Eot_aliased_angles.cosine_true_longitude() 
  end
  
  it 'expected   0.9175113778701887 returned by Eot_aliased_angles.cosine_true_obliquity()? ' do
    assert_equal 0.9175113778701887, Eot_aliased_angles.cosine_true_obliquity()
  end
  
  it 'expected    13.980991172750501 returned by Eot_aliased_angles.declination()? ' do
     assert_equal 13.980991172750501, Eot_aliased_angles.declination() 
  end  
  
  it 'expected   -2.347019340326881 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -2.347019340326881, Eot_aliased_angles.delta_t_ecliptic() 
  end
  
  it 'expected   1.2268888346699498 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 1.2268888346699498, Eot_aliased_angles.delta_t_elliptic() 
  end   
  
  it 'expected   0.016702468499021204 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal 0.016702468499021204, Eot_aliased_angles.eccentricity_earth_orbit()
  end
  
  it 'expected   -1.2268888346699507returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -1.2268888346699507, Eot_aliased_angles.equation_of_center() 	
  end
  
  it 'expected   143.82336613827107 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 143.82336613827107, Eot_aliased_angles.geometric_mean_longitude()
  end

  it 'expected   90.85874122759954 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 90.85874122759954, Eot_aliased_angles.horizon_angle() 
  end

  it 'expected   220.63461047326172 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 220.63461047326172, Eot_aliased_angles.mean_anomaly() 
  end  
  
  it 'expected   143.81755550028174 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal 143.81755550028174, Eot_aliased_angles.mean_longitude_aries()
  end
  
  it 'expected   23.437377335837343 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 23.437377335837343, Eot_aliased_angles.mean_obliquity()
  end
  
  it 'expected   23.437377335837343 returned by Eot_aliased_angles.mean_obliquity_of_ecliptic()? ' do
    assert_equal 23.437377335837343, Eot_aliased_angles.mean_obliquity_of_ecliptic()
  end
  
  it 'expected   23.43506810726597, returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 23.43506810726597, Eot_aliased_angles.obliquity_correction()
  end
 
  it 'expected   144.943496643928 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 144.943496643928, Eot_aliased_angles.right_ascension()
  end
  
  it 'expected  0.6074784519731379 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal 0.6074784519731379, Eot_aliased_angles.sine_apparent_longitude()
  end  

  it 'expected   0.6074246812919125 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal 0.6074246812919125, Eot_aliased_angles.sine_true_longitude()
  end

  it 'expected   219.40772163859177 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 219.40772163859177, Eot_aliased_angles.true_anomaly() 
  end  

  it 'expected   142.59647730360112 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 142.59647730360112, Eot_aliased_angles.true_longitude()
  end

  it 'expected   143.81957226872933 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal 143.81957226872933, Eot_aliased_angles.true_longitude_aries()
  end    

  it 'expected   23.43506810726597 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 23.43506810726597, Eot_aliased_angles.true_obliquity()
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
    Eot_aliased_angles.time_julian_century() 
    # set ma attribute    
    Eot_aliased_angles.ma_Sun()    
  end
  
  it 'expected   2455055.0, returned by Eot_aliased_angles.' do
    assert_equal 2455055.0, Eot_aliased_angles.ajd
  end
  
  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_aliased_angles.date.to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_aliased_angles.date.to_s
  end
  
  it 'expected   216.98609672514223, returned by Eot_aliased_angles.ma' do
    assert_equal 216.98609672514223, Eot_aliased_angles.ma
  end 

  it 'expected   Eot_aliased_angles.ma  returned by Eot_angles.mean_anomaly()' do
    assert_equal Eot_aliased_angles.ma, Eot_aliased_angles.mean_anomaly()
  end   
  
  it 'expected   138.95453031575755 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 138.95453031575755, Eot_aliased_angles.apparent_longitude()
  end
  
  it 'expected   -0.7541886969973313 returned by Eot_aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal -0.7541886969973313, Eot_aliased_angles.cosine_apparent_longitude()
  end  
  
  it 'expected   -0.7542060769934986 returned by Eot_aliased_angles.cosine_true_longitude()? ' do
    assert_equal -0.7542060769934986, Eot_aliased_angles.cosine_true_longitude()
  end
  
  it 'expected   0.9174818406562965 returned by Eot_aliased_angles.cosine_true_obliquity()? ' do
    assert_equal 0.9174818406562965, Eot_aliased_angles.cosine_true_obliquity()
  end
  
  it 'expected    15.141502782959178 returned by Eot_aliased_angles.declination()? ' do
     assert_equal 15.141502782959178, Eot_aliased_angles.declination()
  end
  
  it 'expected   -2.42490431188628 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -2.42490431188628, Eot_aliased_angles.delta_t_ecliptic()    	
  end
  
  it 'expected   1.1326466587538278 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 1.1326466587538278, Eot_aliased_angles.delta_t_elliptic()
  end 
  
  it 'expected    0.016704576164208475 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
     assert_equal 0.016704576164208475, Eot_aliased_angles.eccentricity_earth_orbit()
  end
  
  it 'expected   -1.1326466587538162 returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -1.1326466587538162, Eot_aliased_angles.equation_of_center()
  end

  it 'expected   140.08869346549056 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 140.08869346549056, Eot_aliased_angles.geometric_mean_longitude()
  end

  it 'expected   90.86327177163999 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 90.86327177163999, Eot_aliased_angles.horizon_angle() 
  end

  it 'expected   216.98609672514223 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 216.98609672514223, Eot_aliased_angles.mean_anomaly() 
  end  
  
  it 'expected   140.08287431273857 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal 140.08287431273857, Eot_aliased_angles.mean_longitude_aries()
  end
  
  it 'expected   23.43802918164109 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 23.43802918164109, Eot_aliased_angles.mean_obliquity() 
  end
  
  it 'expected   23.439323003379247 returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 23.439323003379247, Eot_aliased_angles.obliquity_correction()
  end  
  
  it 'expected   141.38095111862302 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 141.38095111862302, Eot_aliased_angles.right_ascension() 
  end
  
  it 'expected   0.6566577566141039 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal 0.6566577566141039, Eot_aliased_angles.sine_apparent_longitude() 
  end  

  it 'expected   0.6566377946981706 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal 0.6566377946981706, Eot_aliased_angles.sine_true_longitude()
  end

  it 'expected   215.8534500663884 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 215.8534500663884, Eot_aliased_angles.true_anomaly()
  end
  
  it 'expected   138.95604680673674 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 138.95604680673674, Eot_aliased_angles.true_longitude()
  end 
  
  it 'expected   140.08689002538767 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal 140.08689002538767, Eot_aliased_angles.true_longitude_aries() 
  end

  it 'expected   23.439323003379247 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 23.439323003379247, Eot_aliased_angles.true_obliquity()	
  end      
  
end
