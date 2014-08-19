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

Eot_aliased_angles = EqoT.new


describe 'EOT aliased_angles default, nil, 0' do
  
  # set ma attribute first it gets tested anyway but a lot of methods
  # now rely on @ma and the only one really neding it is equation_of_time
  before(:each) do 
    Eot_aliased_angles.ajd = 2456885.0  
    Eot_aliased_angles.mean_anomaly()
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

  Eot_aliased_angles.ajd = 2455055.5
  ajd = Eot_aliased_angles.ajd
  ta  = Eot_aliased_angles.time_julian_century(ajd)

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change some parameter
  # like location or date. The only method really needing @ma is equation_of_time method 
  # with all the dependencies of calculating it.

  before(:each) do  
    Eot_aliased_angles.mean_anomaly()
  end  
  
  it 'expected   139.35296056018754 returned by Eot_aliased_angles.apparent_longitude(ta)? ' do
    assert_equal 139.35296056018754, Eot_aliased_angles.apparent_longitude(ta)
  end  
  
  it 'expected   -1.2270411715724636 returned by Eot_aliased_angles.equation_of_center(ta)? ' do
    assert_equal -1.2270411715724636, Eot_aliased_angles.equation_of_center(ta)
  end
  
  it 'expected   -0.7587367703652198 returned by Eot_aliased_angles.cosine_apparent_longitude(ta)? ' do
    assert_equal -0.7587367703652198, Eot_aliased_angles.cosine_apparent_longitude(ta)
  end  
  
  it 'expected   -0.7587539988914966 returned by Eot_aliased_angles.cosine_true_longitude(ta)? ' do
    assert_equal -0.7587539988914966, Eot_aliased_angles.cosine_true_longitude(ta)
  end
  
  it 'expected   0.9174818675792462 returned by Eot_aliased_angles.cosine_true_obliquity(ta)? ' do
    assert_equal 0.9174818675792462, Eot_aliased_angles.cosine_true_obliquity(ta)
  end
  
  it 'expected    15.017335141237837 returned by Eot_aliased_angles.declination(ta)? ' do
     assert_equal 15.017335141237837, Eot_aliased_angles.declination(ta)
  end
  
  it 'expected   -2.418564680136626 returned by Eot_aliased_angles.delta_t_ecliptic(ta)? ' do
    assert_equal -2.418564680136626, Eot_aliased_angles.delta_t_ecliptic(ta)    	
  end
  
  it 'expected   1.2270411715724663 returned by Eot_aliased_angles.delta_t_elliptic(ta)? ' do
    assert_equal 1.2270411715724663, Eot_aliased_angles.delta_t_elliptic(ta)
  end 
  
  it 'expected    0.01670457558842835 returned by Eot_aliased_angles.eccentricity_earth_orbit(ta)? ' do
     assert_equal 0.01670457558842835, Eot_aliased_angles.eccentricity_earth_orbit(ta)
  end 

  it 'expected   140.5815171463405 returned by Eot_aliased_angles.geometric_mean_longitude(ta)? ' do
    assert_equal 140.5815171463405, Eot_aliased_angles.geometric_mean_longitude(ta)
  end

  it 'expected   90.86276781379927 returned by Eot_aliased_angles.horizon_angle(ta)? ' do
    assert_equal 90.86276781379927, Eot_aliased_angles.horizon_angle(ta) 
  end

  it 'expected   220.63461047326172 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 220.63461047326172, Eot_aliased_angles.mean_anomaly() 
  end  
  
  it 'expected   320.5756979962098 returned by Eot_aliased_angles.mean_longitude_aries(ta)? ' do
    assert_equal 320.5756979962098, Eot_aliased_angles.mean_longitude_aries(ta)
  end
  
  it 'expected   23.43802900354105 returned by Eot_aliased_angles.mean_obliquity(ta)? ' do
    assert_equal 23.43802900354105, Eot_aliased_angles.mean_obliquity(ta) 
  end
  
  it 'expected   23.439319125405095 returned by Eot_aliased_angles.obliquity_correction(ta)? ' do
    assert_equal 23.439319125405095, Eot_aliased_angles.obliquity_correction(ta)
  end  
  
  it 'expected   141.77304065490466 returned by Eot_aliased_angles.right_ascension(ta)? ' do
    assert_equal 141.77304065490466, Eot_aliased_angles.right_ascension(ta) 
  end
  
  it 'expected   0.6513973543819132 returned by Eot_aliased_angles.sine_apparent_longitude(ta)? ' do
    assert_equal 0.6513973543819132, Eot_aliased_angles.sine_apparent_longitude(ta) 
  end  

  it 'expected   0.6513772863449897 returned by Eot_aliased_angles.sine_true_longitude(ta)? ' do
    assert_equal 0.6513772863449897, Eot_aliased_angles.sine_true_longitude(ta)
  end

  it 'expected   219.40756930168925 returned by Eot_aliased_angles.true_anomaly(ta)? ' do
    assert_equal 219.40756930168925, Eot_aliased_angles.true_anomaly(ta)
  end
  
  it 'expected   139.35447597476804 returned by Eot_aliased_angles.true_longitude(ta)? ' do
    assert_equal 139.35447597476804, Eot_aliased_angles.true_longitude(ta)
  end 
  
  it 'expected   320.57970857033285 returned by Eot_aliased_angles.true_longitude_aries(ta)? ' do
    assert_equal 320.57970857033285, Eot_aliased_angles.true_longitude_aries(ta) 
  end

  it 'expected   23.439319125405095 returned by Eot_aliased_angles.true_obliquity(ta)? ' do
    assert_equal 23.439319125405095, Eot_aliased_angles.true_obliquity(ta)	
  end      
  
end
