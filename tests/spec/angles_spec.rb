# angles_spec.rb
#
# comment below for rspec
#gem 'minitest'
#require 'minitest/autorun'
require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_angles = EqoT.new
  

describe 'Eot angles default, nil, 0' do

  # set ma attribute first it gets tested anyway but a lot of methods
  # now rely on @ma and the only one really neding it is eot
  
  before(:each) do  
    Eot_angles.mean_anomaly()
  end    
  
  it 'is         280.37255100114527 returned by Eot_angles.al_Sun()? ' do
    assert_equal 280.37255100114527,  Eot_angles.al_Sun()
    assert_equal 280.37255100114527, Eot_angles.al_Sun(nil)
    assert_equal 280.37255100114527, Eot_angles.al_Sun(0)
  end  
  
  it 'is         -0.08430228529566448 returned by Eot_angles.centre()? ' do
    assert_equal -0.08430228529566448, Eot_angles.center()
    assert_equal -0.08430228529566448, Eot_angles.center(nil)
    assert_equal -0.08430228529566448, Eot_angles.center(0)	
  end
  
  it 'is         0.18004791965072248 returned by Eot_angles.cosine_al_Sun()? ' do
    assert_equal 0.18004791965072248, Eot_angles.cosine_al_Sun()
    assert_equal 0.18004791965072248, Eot_angles.cosine_al_Sun(nil)
    assert_equal 0.18004791965072248, Eot_angles.cosine_al_Sun(0)
  end  
  
  it 'is         0.18021278917811492 returned by  Eot_angles.cosine_tl_Sun()? ' do
    assert_equal 0.18021278917811492, Eot_angles.cosine_tl_Sun()
    assert_equal 0.18021278917811492, Eot_angles.cosine_tl_Sun(nil)
    assert_equal 0.18021278917811492, Eot_angles.cosine_tl_Sun(0)
  end
  
  it 'is         0.9174932093012645 returned by  Eot_angles.cosine_to_Earth()? ' do
    assert_equal 0.9174932093012645, Eot_angles.cosine_to_Earth() 
    assert_equal 0.9174932093012645, Eot_angles.cosine_to_Earth(nil)
    assert_equal 0.9174932093012645, Eot_angles.cosine_to_Earth(0)
  end
  
  it 'is         -23.032382986970642 returned by  Eot_angles.dec_Sun()? ' do
    assert_equal -23.032382986970642, Eot_angles.dec_Sun()
    assert_equal -23.032382986970642, Eot_angles.dec_Sun(nil)
    assert_equal -23.032382986970642, Eot_angles.dec_Sun(0)
  end
  
  it 'is         -0.0015940313608572006 returned by  Eot_angles.delta_epsilon()? ' do
    assert_equal -0.0015940313608572006, Eot_angles.delta_epsilon()
    assert_equal -0.0015940313608572006, Eot_angles.delta_epsilon(nil)
    assert_equal -0.0015940313608572006, Eot_angles.delta_epsilon(0)
  end
  
  it 'is         -0.9001861134220235 returned by  Eot_angles.delta_oblique()? ' do
    assert_equal -0.9001861134220235, Eot_angles.delta_oblique()
    assert_equal -0.9001861134220235, Eot_angles.delta_oblique(nil)
    assert_equal -0.9001861134220235, Eot_angles.delta_oblique(0)	
  end
  
  it 'is          0.08430228529567785 returned by  Eot_angles.delta_orbit()? ' do
    assert_equal  0.08430228529567785, Eot_angles.delta_orbit()
    assert_equal  0.08430228529567785, Eot_angles.delta_orbit(nil)
    assert_equal  0.08430228529567785, Eot_angles.delta_orbit(0)
  end  

  it 'is         -0.0038550497869660255 returned by  Eot_angles.delta_psi()? ' do
    assert_equal -0.0038550497869660255, Eot_angles.delta_psi()
    assert_equal -0.0038550497869660255, Eot_angles.delta_psi(nil)
    assert_equal -0.0038550497869660255, Eot_angles.delta_psi(0)
  end  
  
  it 'is         0.016708617 returned by  Eot_angles.eccentricity_Earth()? ' do
    assert_equal 0.016708617, Eot_angles.eccentricity_Earth()
    assert_equal 0.016708617, Eot_angles.eccentricity_Earth(nil)
    assert_equal 0.016708617, Eot_angles.eccentricity_Earth(0)
  end
  
  it 'is         -0.0035369820010596148 returned by  Eot_angles.eq_of_equinox()? ' do
    assert_equal -0.0035369820010596148, Eot_angles.eq_of_equinox()
    assert_equal -0.0035369820010596148, Eot_angles.eq_of_equinox(nil)
    assert_equal -0.0035369820010596148, Eot_angles.eq_of_equinox(0)
  end

  it 'is         -0.8158838281263456 returned by  Eot_angles.eot()? ' do
    assert_equal -0.8158838281263456, Eot_angles.eot()
    assert_equal -0.8158838281263456, Eot_angles.eot(nil)
    assert_equal -0.8158838281263456, Eot_angles.eot(0)
  end  
  
  it 'is         280.4664567 returned by  Eot_angles.gml_Sun()? ' do
    assert_equal 280.4664567, Eot_angles.gml_Sun() 
    assert_equal 280.4664567, Eot_angles.gml_Sun(nil)
    assert_equal 280.4664567, Eot_angles.gml_Sun(0)
  end

  it 'is         90.90548725038606 returned by  Eot_angles.ha_Sun()? ' do
    assert_equal 90.90548725038606, Eot_angles.ha_Sun()
    assert_equal 90.90548725038606, Eot_angles.ha_Sun(nil)
    assert_equal 90.90548725038606, Eot_angles.ha_Sun(0)
  end  
  
  it 'is         357.52910918055557 returned by  Eot_angles.ma_Sun()? ' do
    assert_equal 357.52910918055557, Eot_angles.ma_Sun() 
    assert_equal 357.52910918055557, Eot_angles.ma_Sun(nil)
    assert_equal 357.52910918055557, Eot_angles.ma_Sun(0)
  end
  
  it 'is         280.460622404583 returned by  Eot_angles.ml_Aries()? ' do
    assert_equal 280.460622404583, Eot_angles.ml_Aries() 
    assert_equal 280.460622404583, Eot_angles.ml_Aries(nil)
    assert_equal 280.460622404583, Eot_angles.ml_Aries(0)
  end
  
  it 'is         23.439279444444445 returned by  Eot_angles.mo_Earth()? ' do
    assert_equal 23.439279444444445, Eot_angles.mo_Earth()
    assert_equal 23.439279444444445, Eot_angles.mo_Earth(nil)
    assert_equal 23.439279444444445, Eot_angles.mo_Earth(0)
  end
  
  it 'is         125.04455501000001 returned by  Eot_angles.omega()? ' do
    assert_equal 125.04455501000001, Eot_angles.omega()
    assert_equal 125.04455501000001, Eot_angles.omega(nil)
    assert_equal 125.04455501000001, Eot_angles.omega(0)
  end
  
  it 'is         281.2823405281263 returned by  Eot_angles.ra_Sun()? ' do
    assert_equal 281.2823405281263, Eot_angles.ra_Sun()
    assert_equal 281.2823405281263, Eot_angles.ra_Sun(nil)
    assert_equal 281.2823405281263, Eot_angles.ra_Sun(0)	
  end
  
  it 'is         -0.9836578402216123 returned by  Eot_angles.sine_al_Sun()? ' do
    assert_equal -0.9836578402216123, Eot_angles.sine_al_Sun()
    assert_equal -0.9836578402216123, Eot_angles.sine_al_Sun(nil)
    assert_equal -0.9836578402216123, Eot_angles.sine_al_Sun(0)
  end  

  it 'is         -0.9836276483591971 returned by  Eot_angles.sine_tl_Sun()? ' do
    assert_equal -0.9836276483591971, Eot_angles.sine_tl_Sun()
    assert_equal -0.9836276483591971, Eot_angles.sine_tl_Sun(nil)
    assert_equal -0.9836276483591971, Eot_angles.sine_tl_Sun(0)
  end

  it 'is         357.4448068952599 returned by  Eot_angles.ta_Sun()? ' do
    assert_equal 357.4448068952599, Eot_angles.ta_Sun()
    assert_equal 357.4448068952599, Eot_angles.ta_Sun(nil)
    assert_equal 357.4448068952599, Eot_angles.ta_Sun(0)
  end

  it 'is         280.45708542258194 returned by  Eot_angles.tl_Aries()? ' do
    assert_equal 280.45708542258194, Eot_angles.tl_Aries()
    assert_equal 280.45708542258194, Eot_angles.tl_Aries(nil)
    assert_equal 280.45708542258194, Eot_angles.tl_Aries(0)
  end  

  it 'is         280.3821544147043 returned by  Eot_angles.tl_Sun()? ' do
    assert_equal 280.3821544147043, Eot_angles.tl_Sun()
    assert_equal 280.3821544147043, Eot_angles.tl_Sun(nil)
    assert_equal 280.3821544147043, Eot_angles.tl_Sun(0)
  end  
  
  it 'is         23.43768541308359 returned by Eot_angles.to_Earth()? ' do
    assert_equal 23.43768541308359, Eot_angles.to_Earth()
    assert_equal 23.43768541308359, Eot_angles.to_Earth(nil)
    assert_equal 23.43768541308359, Eot_angles.to_Earth(0)
  end  
end



describe ' Eot angles tjc array for jd 2455055.5 a non default value' do

  ta = Eot_angles.time_julian_century(2455055.5)

  # set ma attribute first it gets tested anyway but a lot of methods
  # now rely on @ma and the only one really neding it is eot
  
  before(:each) do  
    Eot_angles.mean_anomaly(ta)
  end     
  
  it 'is         139.43434184626486 returned by Eot_angles.al_Sun(ta)? ' do
    assert_equal 139.43434184626486, Eot_angles.al_Sun(ta)
  end  
  
  it 'is         -1.1456598854951456 returned by Eot_angles.centre(ta)? ' do
    assert_equal -1.1456598854951456, Eot_angles.center(ta)  
  end
  
  it 'is         -0.759661230862344 returned by Eot_angles.cosine_al_Sun(ta)? ' do
    assert_equal -0.759661230862344, Eot_angles.cosine_al_Sun(ta)
  end  
  
  it 'is         -0.7596784308671858 returned by Eot_angles.cosine_tl_Sun(ta)? ' do
    assert_equal -0.7596784308671858, Eot_angles.cosine_tl_Sun(ta)
  end
  
  it 'is         0.9174818675792462 returned by Eot_angles.cosine_to_Earth(ta)? ' do
    assert_equal 0.9174818675792462, Eot_angles.cosine_to_Earth(ta)
  end
  
  it 'is          14.991891095131638 returned by Eot_angles.dec_Sun(ta)? ' do
     assert_equal 14.991891095131638, Eot_angles.dec_Sun(ta)
  end
  
  it 'is         0.001290121864043651 returned by Eot_angles.delta_epsilon(ta)? ' do
    assert_equal 0.001290121864043651, Eot_angles.delta_epsilon(ta)
  end
  
  it 'is         -2.417213472457888 returned by Eot_angles.delta_oblique(ta)? ' do
    assert_equal -2.417213472457888, Eot_angles.delta_oblique(ta)    	
  end
  
  it 'is         1.1456598854951494 returned by Eot_angles.delta_orbit(ta)? ' do
    assert_equal 1.1456598854951494, Eot_angles.delta_orbit(ta)	
  end  

  it 'is         0.004371284343373657 returned by Eot_angles.delta_psi(ta)? ' do
    assert_equal 0.004371284343373657, Eot_angles.delta_psi(ta)
  end  
  
  it 'is          0.01670457558842835 returned by Eot_angles.eccentricity_Earth(ta)? ' do
     assert_equal 0.01670457558842835, Eot_angles.eccentricity_Earth(ta)
  end
  
  it 'is         0.004010574123078382 returned by Eot_angles.eq_of_equinox(ta)? ' do
    assert_equal 0.004010574123078382, Eot_angles.eq_of_equinox(ta)
  end

  it 'is         -1.2715535869627388 returned by Eot_angles.eot(ta)? ' do
    assert_equal -1.2715535869627388, Eot_angles.eot(ta)
  end  
  
  it 'is         140.5815171463405 returned by  Eot_angles.gml_Sun(ta)? ' do
    assert_equal 140.5815171463405, Eot_angles.gml_Sun(ta)
  end

  it 'is         90.86266511703538 returned by Eot_angles.ha_Sun(ta)? ' do
    assert_equal 90.86266511703538, Eot_angles.ha_Sun(ta)
  end  
  
  it 'is         217.47889686561615 returned by Eot_angles.ma_Sun(ta)? ' do
    assert_equal 217.47889686561615, Eot_angles.ma_Sun(ta) 
  end
  
  it 'is         320.5756979962098 returned by Eot_angles.ml_Aries(ta)? ' do
    assert_equal 320.5756979962098, Eot_angles.ml_Aries(ta)
  end
  
  it 'is         23.43802900354105 returned by Eot_angles.mo_Earth(ta)? ' do
    assert_equal 23.43802900354105, Eot_angles.mo_Earth(ta)
  end
  
  it 'is         -60.849617399820495 returned by Eot_angles.omega(ta)? ' do
    assert_equal -60.849617399820495, Eot_angles.omega(ta)
  end
  
  it 'is         141.85307073330324 returned by Eot_angles.ra_Sun(ta)? ' do
    assert_equal 141.85307073330324, Eot_angles.ra_Sun(ta)
  end
  
  it 'is         0.6503190096596503 returned by Eot_angles.sine_al_Sun(ta)? ' do
    assert_equal 0.6503190096596503, Eot_angles.sine_al_Sun(ta)
  end  

  it 'is         0.6502989171720728 returned by Eot_angles.sine_tl_Sun(ta)? ' do
    assert_equal 0.6502989171720728, Eot_angles.sine_tl_Sun(ta)
  end

  it 'is         216.333236980121 returned by Eot_angles.ta_Sun(ta)? ' do
    assert_equal 216.333236980121, Eot_angles.ta_Sun(ta)
  end

  it 'is         320.57970857033285 returned by Eot_angles.tl_Aries(ta)? ' do
    assert_equal 320.57970857033285, Eot_angles.tl_Aries(ta)
  end  

  it 'is         139.43585726084535 returned by Eot_angles.tl_Sun(ta)? ' do
    assert_equal 139.43585726084535, Eot_angles.tl_Sun(ta)
  end  
  
  it 'is         23.439319125405095 returned by Eot_angles.to_Earth(ta)? ' do
    assert_equal 23.439319125405095, Eot_angles.to_Earth(ta)
  end  
end