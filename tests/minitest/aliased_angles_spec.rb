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
    Eot_aliased_angles.mean_anomaly()
  end

  it 'is         280.37255100114527 returned by Eot_aliased_angles.apparent_longitude()? ' do
    assert_equal 280.37255100114527, Eot_aliased_angles.apparent_longitude() 
    assert_equal 280.37255100114527, Eot_aliased_angles.apparent_longitude(nil) 
    assert_equal 280.37255100114527, Eot_aliased_angles.apparent_longitude(0) 
  end 
  
  it 'is         0.18004791965072248 returned by Eot_aliased_angles.cosine_apparent_longitude()? ' do
    assert_equal 0.18004791965072248, Eot_aliased_angles.cosine_apparent_longitude() 
    assert_equal 0.18004791965072248, Eot_aliased_angles.cosine_apparent_longitude(nil)
    assert_equal 0.18004791965072248, Eot_aliased_angles.cosine_apparent_longitude(0)
  end  
  
  it 'is         0.18021278917811492 returned by Eot_aliased_angles.cosine_true_longitude()? ' do
    assert_equal 0.18021278917811492, Eot_aliased_angles.cosine_true_longitude() 
    assert_equal 0.18021278917811492, Eot_aliased_angles.cosine_true_longitude(nil)
    assert_equal 0.18021278917811492, Eot_aliased_angles.cosine_true_longitude(0)
  end
  
  it 'is         0.9174932093012645 returned by Eot_aliased_angles.cosine_true_obliquity()? ' do
    assert_equal 0.9174932093012645, Eot_aliased_angles.cosine_true_obliquity()
    assert_equal 0.9174932093012645, Eot_aliased_angles.cosine_true_obliquity(nil)
    assert_equal 0.9174932093012645, Eot_aliased_angles.cosine_true_obliquity(0)
  end
  
  it 'is          -23.032382986970642 returned by Eot_aliased_angles.declination()? ' do
     assert_equal -23.032382986970642, Eot_aliased_angles.declination() 
     assert_equal -23.032382986970642, Eot_aliased_angles.declination(nil)
     assert_equal -23.032382986970642, Eot_aliased_angles.declination(0)
  end  
  
  it 'is         -0.9001861134220235 returned by Eot_aliased_angles.delta_t_ecliptic()? ' do
    assert_equal -0.9001861134220235, Eot_aliased_angles.delta_t_ecliptic() 
    assert_equal -0.9001861134220235, Eot_aliased_angles.delta_t_ecliptic(nil)
    assert_equal -0.9001861134220235, Eot_aliased_angles.delta_t_ecliptic(0)	
  end
  
  it 'is         0.08430228529567785 returned by Eot_aliased_angles.delta_t_elliptic()? ' do
    assert_equal 0.08430228529567785, Eot_aliased_angles.delta_t_elliptic() 
    assert_equal 0.08430228529567785, Eot_aliased_angles.delta_t_elliptic(nil)
    assert_equal 0.08430228529567785, Eot_aliased_angles.delta_t_elliptic(0)
  end   
  
  it 'is         0.016708617 returned by Eot_aliased_angles.eccentricity_earth_orbit()? ' do
    assert_equal 0.016708617, Eot_aliased_angles.eccentricity_earth_orbit()
    assert_equal 0.016708617, Eot_aliased_angles.eccentricity_earth_orbit(nil)
    assert_equal 0.016708617, Eot_aliased_angles.eccentricity_earth_orbit(0)
  end
  
  it 'is         -0.08430228529566448 returned by Eot_aliased_angles.equation_of_center()? ' do
    assert_equal -0.08430228529566448, Eot_aliased_angles.equation_of_center() 
    assert_equal -0.08430228529566448, Eot_aliased_angles.equation_of_center(nil)
    assert_equal -0.08430228529566448, Eot_aliased_angles.equation_of_center(0)	
  end
  
  it 'is         280.4664567 returned by Eot_aliased_angles.geometric_mean_longitude()? ' do
    assert_equal 280.4664567, Eot_aliased_angles.geometric_mean_longitude()
    assert_equal 280.4664567, Eot_aliased_angles.geometric_mean_longitude(nil)
    assert_equal 280.4664567, Eot_aliased_angles.geometric_mean_longitude(0)
  end

  it 'is         90.90548725038606 returned by Eot_aliased_angles.horizon_angle()? ' do
    assert_equal 90.90548725038606, Eot_aliased_angles.horizon_angle() 
    assert_equal 90.90548725038606, Eot_aliased_angles.horizon_angle(nil)
    assert_equal 90.90548725038606, Eot_aliased_angles.horizon_angle(0)
  end

  it 'is         357.52910918055557 returned by Eot_aliased_angles.mean_anomaly()? ' do
    assert_equal 357.52910918055557, Eot_aliased_angles.mean_anomaly() 
    assert_equal 357.52910918055557, Eot_aliased_angles.mean_anomaly(nil)
    assert_equal 357.52910918055557, Eot_aliased_angles.mean_anomaly(0)
  end  
  
  it 'is         280.460622404583 returned by Eot_aliased_angles.mean_longitude_aries()? ' do
    assert_equal 280.460622404583, Eot_aliased_angles.mean_longitude_aries()
    assert_equal 280.460622404583, Eot_aliased_angles.mean_longitude_aries(nil)
    assert_equal 280.460622404583, Eot_aliased_angles.mean_longitude_aries(0)
  end
  
  it 'is         23.439279444444445 returned by Eot_aliased_angles.mean_obliquity()? ' do
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity()
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity(nil)
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity(0)
  end
  
  it 'is         23.439279444444445 returned by Eot_aliased_angles.mean_obliquity_of_ecliptic()? ' do
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity_of_ecliptic()
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity_of_ecliptic(nil)
    assert_equal 23.439279444444445, Eot_aliased_angles.mean_obliquity_of_ecliptic(0)
  end
  
  it 'is         23.43768541308359, returned by Eot_aliased_angles.obliquity_correction()? ' do
    assert_equal 23.43768541308359, Eot_aliased_angles.obliquity_correction()
    assert_equal 23.43768541308359, Eot_aliased_angles.obliquity_correction(nil)
    assert_equal 23.43768541308359, Eot_aliased_angles.obliquity_correction(0)
  end
 
  it 'is         281.2823405281263 returned by Eot_aliased_angles.right_ascension()? ' do
    assert_equal 281.2823405281263, Eot_aliased_angles.right_ascension()
    assert_equal 281.2823405281263, Eot_aliased_angles.right_ascension(nil)
    assert_equal 281.2823405281263, Eot_aliased_angles.right_ascension(0)	
  end
  
  it 'is         -0.9836578402216123 returned by Eot_aliased_angles.sine_apparent_longitude()? ' do
    assert_equal -0.9836578402216123, Eot_aliased_angles.sine_apparent_longitude()
    assert_equal -0.9836578402216123, Eot_aliased_angles.sine_apparent_longitude(nil)
    assert_equal -0.9836578402216123, Eot_aliased_angles.sine_apparent_longitude(0)
  end  

  it 'is         -0.9836276483591971 returned by Eot_aliased_angles.sine_true_longitude()? ' do
    assert_equal -0.9836276483591971, Eot_aliased_angles.sine_true_longitude()
    assert_equal -0.9836276483591971, Eot_aliased_angles.sine_true_longitude(nil)
    assert_equal -0.9836276483591971, Eot_aliased_angles.sine_true_longitude(0)
  end

  it 'is         357.4448068952599 returned by Eot_aliased_angles.true_anomaly()? ' do
    assert_equal 357.4448068952599, Eot_aliased_angles.true_anomaly() 
    assert_equal 357.4448068952599, Eot_aliased_angles.true_anomaly(nil)
    assert_equal 357.4448068952599, Eot_aliased_angles.true_anomaly(0)
  end  

  it 'is         280.3821544147043 returned by Eot_aliased_angles.true_longitude()? ' do
    assert_equal 280.3821544147043, Eot_aliased_angles.true_longitude()
    assert_equal 280.3821544147043, Eot_aliased_angles.true_longitude(nil)
    assert_equal 280.3821544147043, Eot_aliased_angles.true_longitude(0)
  end

  it 'is         280.45708542258194 returned by Eot_aliased_angles.true_longitude_aries()? ' do
    assert_equal 280.45708542258194, Eot_aliased_angles.true_longitude_aries()
    assert_equal 280.45708542258194, Eot_aliased_angles.true_longitude_aries(nil)
    assert_equal 280.45708542258194, Eot_aliased_angles.true_longitude_aries(0)
  end    

  it 'is         23.43768541308359 returned by Eot_aliased_angles.true_obliquity()? ' do
    assert_equal 23.43768541308359, Eot_aliased_angles.true_obliquity()
    assert_equal 23.43768541308359, Eot_aliased_angles.true_obliquity(nil)
    assert_equal 23.43768541308359, Eot_aliased_angles.true_obliquity(0)
  end    
end

describe 'EOT angles tjc array for jd 2455055.5 a non default value' do

  ta = Eot_aliased_angles.time_julian_century(2455055.5)

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change some parameter
  # like location or date. The only method really needing @ma is equation_of_time method 
  # with all the dependencies of calculating it.

  before(:each) do  
    Eot_aliased_angles.mean_anomaly(ta)
  end  
  
  it 'is         139.43434184626486 returned by Eot_aliased_angles.apparent_longitude(ta)? ' do
    assert_equal 139.43434184626486, Eot_aliased_angles.apparent_longitude(ta)
  end  
  
  it 'is         -1.1456598854951456 returned by Eot_aliased_angles.equation_of_center(ta)? ' do
    assert_equal -1.1456598854951456, Eot_aliased_angles.equation_of_center(ta)
  end
  
  it 'is         -0.759661230862344 returned by Eot_aliased_angles.cosine_apparent_longitude(ta)? ' do
    assert_equal -0.759661230862344, Eot_aliased_angles.cosine_apparent_longitude(ta)
  end  
  
  it 'is         -0.7596784308671858 returned by Eot_aliased_angles.cosine_true_longitude(ta)? ' do
    assert_equal -0.7596784308671858, Eot_aliased_angles.cosine_true_longitude(ta)
  end
  
  it 'is         0.9174818675792462 returned by Eot_aliased_angles.cosine_true_obliquity(ta)? ' do
    assert_equal 0.9174818675792462, Eot_aliased_angles.cosine_true_obliquity(ta)
  end
  
  it 'is          14.991891095131638 returned by Eot_aliased_angles.declination(ta)? ' do
     assert_equal 14.991891095131638, Eot_aliased_angles.declination(ta)
  end
  
  it 'is         -2.417213472457888 returned by Eot_aliased_angles.delta_t_ecliptic(ta)? ' do
    assert_equal -2.417213472457888, Eot_aliased_angles.delta_t_ecliptic(ta)    	
  end
  
  it 'is         1.1456598854951494 returned by Eot_aliased_angles.delta_t_elliptic(ta)? ' do
    assert_equal 1.1456598854951494, Eot_aliased_angles.delta_t_elliptic(ta)
  end 
  
  it 'is          0.01670457558842835 returned by Eot_aliased_angles.eccentricity_earth_orbit(ta)? ' do
     assert_equal 0.01670457558842835, Eot_aliased_angles.eccentricity_earth_orbit(ta)
  end 

  it 'is         140.5815171463405 returned by Eot_aliased_angles.geometric_mean_longitude(ta)? ' do
    assert_equal 140.5815171463405, Eot_aliased_angles.geometric_mean_longitude(ta)
  end

  it 'is         90.86266511703538 returned by Eot_aliased_angles.horizon_angle(ta)? ' do
    assert_equal 90.86266511703538, Eot_aliased_angles.horizon_angle(ta) 
  end

  it 'is         217.47889686561615 returned by Eot_aliased_angles.mean_anomaly(ta)? ' do
    assert_equal 217.47889686561615, Eot_aliased_angles.mean_anomaly(ta) 
  end  
  
  it 'is         320.5756979962098 returned by Eot_aliased_angles.mean_longitude_aries(ta)? ' do
    assert_equal 320.5756979962098, Eot_aliased_angles.mean_longitude_aries(ta)
  end
  
  it 'is         23.43802900354105 returned by Eot_aliased_angles.mean_obliquity(ta)? ' do
    assert_equal 23.43802900354105, Eot_aliased_angles.mean_obliquity(ta) 
  end
  
  it 'is         23.439319125405095 returned by Eot_aliased_angles.obliquity_correction(ta)? ' do
    assert_equal 23.439319125405095, Eot_aliased_angles.obliquity_correction(ta)
  end  
  
  it 'is         141.85307073330324 returned by Eot_aliased_angles.right_ascension(ta)? ' do
    assert_equal 141.85307073330324, Eot_aliased_angles.right_ascension(ta) 
  end
  
  it 'is         0.6503190096596503 returned by Eot_aliased_angles.sine_apparent_longitude(ta)? ' do
    assert_equal 0.6503190096596503, Eot_aliased_angles.sine_apparent_longitude(ta) 
  end  

  it 'is         0.6502989171720728 returned by Eot_aliased_angles.sine_true_longitude(ta)? ' do
    assert_equal 0.6502989171720728, Eot_aliased_angles.sine_true_longitude(ta)
  end

  it 'is         216.333236980121 returned by Eot_aliased_angles.true_anomaly(ta)? ' do
    assert_equal 216.333236980121, Eot_aliased_angles.true_anomaly(ta)
  end
  
  it 'is         139.43585726084535 returned by Eot_aliased_angles.true_longitude(ta)? ' do
    assert_equal 139.43585726084535, Eot_aliased_angles.true_longitude(ta)
  end 
  
  it 'is         320.57970857033285 returned by Eot_aliased_angles.true_longitude_aries(ta)? ' do
    assert_equal 320.57970857033285, Eot_aliased_angles.true_longitude_aries(ta) 
  end

  it 'is         23.439319125405095 returned by Eot_aliased_angles.true_obliquity(ta)? ' do
    assert_equal 23.439319125405095, Eot_aliased_angles.true_obliquity(ta)	
  end      
  
end
