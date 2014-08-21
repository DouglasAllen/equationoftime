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


describe 'EOT aliased_angles default, nil, 0' do
  
  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute.
  
  before(:each) do 
    @ajd                    = 2456885.0
    Eot_aliased_angles.ajd  = @ajd  
    Eot_aliased_angles.mean_anomaly()
  end 

  it 'expected   2456885.0 for Eot_aliased_angles.ajd'do
    assert_equal 2456885.0, Eot_aliased_angles.ajd
    assert_equal 220.63461047326172, Eot_aliased_angles.ma
  end    

  it 'expected   279.2295199333757 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 279.2295199333757, Eot_aliased_angles.apparent_longitude() 
    assert_equal 279.2295199333757, Eot_aliased_angles.apparent_longitude(nil) 
    assert_equal 279.2295199333757, Eot_aliased_angles.apparent_longitude(0) 
  end 
  
  it 'expected   0.16038975882741865 returned by Eot_aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal 0.16038975882741865, Eot_aliased_angles.cosine_apparent_longitude() 
    assert_equal 0.16038975882741865, Eot_aliased_angles.cosine_apparent_longitude(nil)
    assert_equal 0.16038975882741865, Eot_aliased_angles.cosine_apparent_longitude(0)
  end  
  
  it 'expected   0.16055519782509398 returned by Eot_aliased_angles.cosine_true_longitude()? ' do
    assert_equal 0.16055519782509398, Eot_aliased_angles.cosine_true_longitude() 
    assert_equal 0.16055519782509398, Eot_aliased_angles.cosine_true_longitude(nil)
    assert_equal 0.16055519782509398, Eot_aliased_angles.cosine_true_longitude(0)
  end
  
  it 'expected   0.9174932093012645 returned by Eot_aliased_angles.cosine_true_obliquity()? ' do
    assert_equal 0.9174932093012645, Eot_aliased_angles.cosine_true_obliquity()
    assert_equal 0.9174932093012645, Eot_aliased_angles.cosine_true_obliquity(nil)
    assert_equal 0.9174932093012645, Eot_aliased_angles.cosine_true_obliquity(0)
  end
  
  it 'expected    -23.116504240687046 returned by Eot_aliased_angles.declination()? ' do
     assert_equal -23.116504240687046, Eot_aliased_angles.declination() 
     assert_equal -23.116504240687046, Eot_aliased_angles.declination(nil)
     assert_equal -23.116504240687046, Eot_aliased_angles.declination(0)
  end  
  
  it 'expected   -0.8041525701173668 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -0.8041525701173668, Eot_aliased_angles.delta_t_ecliptic() 
    assert_equal -0.8041525701173668, Eot_aliased_angles.delta_t_ecliptic(nil)
    assert_equal -0.8041525701173668, Eot_aliased_angles.delta_t_ecliptic(0)	
  end
  
  it 'expected   1.2273333530652906 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 1.2273333530652906, Eot_aliased_angles.delta_t_elliptic() 
    assert_equal 1.2273333530652906, Eot_aliased_angles.delta_t_elliptic(nil)
    assert_equal 1.2273333530652906, Eot_aliased_angles.delta_t_elliptic(0)
  end   
  
  it 'expected   0.016708617 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal 0.016708617, Eot_aliased_angles.eccentricity_earth_orbit()
    assert_equal 0.016708617, Eot_aliased_angles.eccentricity_earth_orbit(nil)
    assert_equal 0.016708617, Eot_aliased_angles.eccentricity_earth_orbit(0)
  end
  
  it 'expected   -1.227333353065282returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -1.227333353065282, Eot_aliased_angles.equation_of_center() 
    assert_equal -1.227333353065282, Eot_aliased_angles.equation_of_center(nil)
    assert_equal -1.227333353065282, Eot_aliased_angles.equation_of_center(0)	
  end
  
  it 'expected   280.4664567 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 280.4664567, Eot_aliased_angles.geometric_mean_longitude()
    assert_equal 280.4664567, Eot_aliased_angles.geometric_mean_longitude(nil)
    assert_equal 280.4664567, Eot_aliased_angles.geometric_mean_longitude(0)
  end

  it 'expected   90.9060538240478 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 90.9060538240478, Eot_aliased_angles.horizon_angle() 
    assert_equal 90.9060538240478, Eot_aliased_angles.horizon_angle(nil)
    assert_equal 90.9060538240478, Eot_aliased_angles.horizon_angle(0)
  end

  it 'expected   220.63461047326172 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 220.63461047326172, Eot_aliased_angles.mean_anomaly() 
  end  
  
  it 'expected   280.460622404583 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal 280.460622404583, Eot_aliased_angles.mean_longitude_aries()
    assert_equal 280.460622404583, Eot_aliased_angles.mean_longitude_aries(nil)
    assert_equal 280.460622404583, Eot_aliased_angles.mean_longitude_aries(0)
  end
  
  it 'expected   23.439279444444445 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity()
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity(nil)
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity(0)
  end
  
  it 'expected   23.439279444444445 returned by Eot_aliased_angles.mean_obliquity_of_ecliptic()? ' do
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity_of_ecliptic()
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity_of_ecliptic(nil)
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity_of_ecliptic(0)
  end
  
  it 'expected   23.43768541308359, returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 23.43768541308359, Eot_aliased_angles.obliquity_correction()
    assert_equal 23.43768541308359, Eot_aliased_angles.obliquity_correction(nil)
    assert_equal 23.43768541308359, Eot_aliased_angles.obliquity_correction(0)
  end
 
  it 'expected   280.0432759170521 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 280.0432759170521, Eot_aliased_angles.right_ascension()
    assert_equal 280.0432759170521, Eot_aliased_angles.right_ascension(nil)
    assert_equal 280.0432759170521, Eot_aliased_angles.right_ascension(0)	
  end
  
  it 'expected   -0.9870537600674456 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal -0.9870537600674456, Eot_aliased_angles.sine_apparent_longitude()
    assert_equal -0.9870537600674456, Eot_aliased_angles.sine_apparent_longitude(nil)
    assert_equal -0.9870537600674456, Eot_aliased_angles.sine_apparent_longitude(0)
  end  

  it 'expected   -0.9870268630849643 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal -0.9870268630849643, Eot_aliased_angles.sine_true_longitude()
    assert_equal -0.9870268630849643, Eot_aliased_angles.sine_true_longitude(nil)
    assert_equal -0.9870268630849643, Eot_aliased_angles.sine_true_longitude(0)
  end

  it 'expected   219.40727712019643 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 219.40727712019643, Eot_aliased_angles.true_anomaly() 
    assert_equal 219.40727712019643, Eot_aliased_angles.true_anomaly(nil)
    assert_equal 219.40727712019643, Eot_aliased_angles.true_anomaly(0)
  end  

  it 'expected   279.2391233469347 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 279.2391233469347, Eot_aliased_angles.true_longitude()
    assert_equal 279.2391233469347, Eot_aliased_angles.true_longitude(nil)
    assert_equal 279.2391233469347, Eot_aliased_angles.true_longitude(0)
  end

  it 'expected   280.45708542258194 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal 280.45708542258194, Eot_aliased_angles.true_longitude_aries()
    assert_equal 280.45708542258194, Eot_aliased_angles.true_longitude_aries(nil)
    assert_equal 280.45708542258194, Eot_aliased_angles.true_longitude_aries(0)
  end    

  it 'expected   23.43768541308359 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 23.43768541308359, Eot_aliased_angles.true_obliquity()
    assert_equal 23.43768541308359, Eot_aliased_angles.true_obliquity(nil)
    assert_equal 23.43768541308359, Eot_aliased_angles.true_obliquity(0)
  end    
end

describe 'EOT angles tjc array for jd 2455055.5 a non default value' do

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute
  before(:each) do
    @ajd                    = 2455055.0     
    Eot_aliased_angles.ajd  = @ajd
    @dt                     = Eot_aliased_angles.ajd_to_datetime(@ajd)
    Eot_aliased_angles.date = @dt
    Eot_aliased_angles.ma_Sun
    @ta                     = Eot_aliased_angles.time_julian_century(@ajd)
  end
  
  it 'expected   2455055.0, returned by Eot_aliased_angles.' do
    assert_equal 2455055.0, Eot_aliased_angles.ajd
  end
  
  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_aliased_angles.date.to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_aliased_angles.date.to_s
  end
  
  it 'expected   216.98609672514223, returned by Eot_aliased_angles.' do
    assert_equal 216.98609672514223, Eot_aliased_angles.ma
  end 

  it 'expected   Eot_aliased_angles.ma  returned by Eot_angles.mean_anomaly()' do
    assert_equal Eot_aliased_angles.ma, Eot_aliased_angles.mean_anomaly()
  end   
  
  it 'expected   138.95453031575755 returned by Eot_aliased_angles.apparent_longitude(@ta)? ' do
    assert_equal 138.95453031575755, Eot_aliased_angles.apparent_longitude(@ta)
  end
  
  it 'expected   -0.7541886969973313 returned by Eot_aliased_angles.cosine_apparent_longitude(@ta)? ' do
    assert_equal -0.7541886969973313, Eot_aliased_angles.cosine_apparent_longitude(@ta)
  end  
  
  it 'expected   -0.7542060769934986 returned by Eot_aliased_angles.cosine_true_longitude(@ta)? ' do
    assert_equal -0.7542060769934986, Eot_aliased_angles.cosine_true_longitude(@ta)
  end
  
  it 'expected   0.9174818406562965 returned by Eot_aliased_angles.cosine_true_obliquity(@ta)? ' do
    assert_equal 0.9174818406562965, Eot_aliased_angles.cosine_true_obliquity(@ta)
  end
  
  it 'expected    15.141502782959178 returned by Eot_aliased_angles.declination(@ta)? ' do
     assert_equal 15.141502782959178, Eot_aliased_angles.declination(@ta)
  end
  
  it 'expected   -2.42490431188628 returned by Eot_aliased_angles.delta_t_ecliptic(@ta)? ' do
    assert_equal -2.42490431188628, Eot_aliased_angles.delta_t_ecliptic(@ta)    	
  end
  
  it 'expected   1.1326466587538278 returned by Eot_aliased_angles.delta_t_elliptic(@ta)? ' do
    assert_equal 1.1326466587538278, Eot_aliased_angles.delta_t_elliptic(@ta)
  end 
  
  it 'expected    0.016704576164208475 returned by Eot_aliased_angles.eccentricity_earth_orbit(@ta)? ' do
     assert_equal 0.016704576164208475, Eot_aliased_angles.eccentricity_earth_orbit(@ta)
  end 
  
  it 'expected   -1.1326466587538162 returned by Eot_aliased_angles.equation_of_center(@ta)? ' do
    assert_equal -1.1326466587538162, Eot_aliased_angles.equation_of_center(@ta)
  end

  it 'expected   140.08869346549056 returned by Eot_aliased_angles.geometric_mean_longitude(@ta)? ' do
    assert_equal 140.08869346549056, Eot_aliased_angles.geometric_mean_longitude(@ta)
  end

  it 'expected   90.86327177163999 returned by Eot_aliased_angles.horizon_angle(@ta)? ' do
    assert_equal 90.86327177163999, Eot_aliased_angles.horizon_angle(@ta) 
  end

  it 'expected   216.98609672514223 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 216.98609672514223, Eot_aliased_angles.mean_anomaly() 
  end  
  
  it 'expected   140.08287431273857 returned by Eot_aliased_angles.mean_longitude_aries(@ta)? ' do
    assert_equal 140.08287431273857, Eot_aliased_angles.mean_longitude_aries(@ta)
  end
  
  it 'expected   23.43802918164109 returned by Eot_aliased_angles.mean_obliquity(@ta)? ' do
    assert_equal 23.43802918164109, Eot_aliased_angles.mean_obliquity(@ta) 
  end
  
  it 'expected   23.439323003379247 returned by Eot_aliased_angles.obliquity_correction(@ta)? ' do
    assert_equal 23.439323003379247, Eot_aliased_angles.obliquity_correction(@ta)
  end  
  
  it 'expected   141.38095111862302 returned by Eot_aliased_angles.right_ascension(@ta)? ' do
    assert_equal 141.38095111862302, Eot_aliased_angles.right_ascension(@ta) 
  end
  
  it 'expected   0.6566577566141039 returned by Eot_aliased_angles.sine_apparent_longitude(@ta)? ' do
    assert_equal 0.6566577566141039, Eot_aliased_angles.sine_apparent_longitude(@ta) 
  end  

  it 'expected   0.6566377946981706 returned by Eot_aliased_angles.sine_true_longitude(@ta)? ' do
    assert_equal 0.6566377946981706, Eot_aliased_angles.sine_true_longitude(@ta)
  end

  it 'expected   215.8534500663884 returned by Eot_aliased_angles.true_anomaly(@ta)? ' do
    assert_equal 215.8534500663884, Eot_aliased_angles.true_anomaly(@ta)
  end
  
  it 'expected   138.95604680673674 returned by Eot_aliased_angles.true_longitude(@ta)? ' do
    assert_equal 138.95604680673674, Eot_aliased_angles.true_longitude(@ta)
  end 
  
  it 'expected   140.08689002538767 returned by Eot_aliased_angles.true_longitude_aries(@ta)? ' do
    assert_equal 140.08689002538767, Eot_aliased_angles.true_longitude_aries(@ta) 
  end

  it 'expected   23.439323003379247 returned by Eot_aliased_angles.true_obliquity(@ta)? ' do
    assert_equal 23.439323003379247, Eot_aliased_angles.true_obliquity(@ta)	
  end      
  
end
