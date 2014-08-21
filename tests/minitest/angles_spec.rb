# angles_spec.rb
#
# comment below for rspec
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot' 
Eot_angles = Eot.new 
describe 'Eot angles default, nil, 0' do

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute. 
  
  before(:each) do
    @ajd           = 2456885.0
    Eot_angles.ajd = @ajd
    Eot_angles.ma_Sun()    
  end

  it 'expected   2456885.0 for Eot_angles.ajd'do
    assert_equal 2456885.0, Eot_angles.ajd
    assert_equal 220.63461047326172, Eot_angles.ma
  end    
  
  it 'expected   279.2295199333757 returned by Eot_angles.al_Sun()? ' do
    assert_equal 279.2295199333757,  Eot_angles.al_Sun()
    assert_equal 279.2295199333757, Eot_angles.al_Sun(nil)
    assert_equal 279.2295199333757, Eot_angles.al_Sun(0)
  end  
  
  it 'expected   -1.227333353065282 returned by Eot_angles.centre()? ' do
    assert_equal -1.227333353065282, Eot_angles.center()
    assert_equal -1.227333353065282, Eot_angles.center(nil)
    assert_equal -1.227333353065282, Eot_angles.center(0)	
  end
  
  it 'expected   0.16038975882741865 returned by Eot_angles.cosine_al_Sun()? ' do
    assert_equal 0.16038975882741865, Eot_angles.cosine_al_Sun()
    assert_equal 0.16038975882741865, Eot_angles.cosine_al_Sun(nil)
    assert_equal 0.16038975882741865, Eot_angles.cosine_al_Sun(0)
  end  
  
  it 'expected   0.16055519782509398 returned by  Eot_angles.cosine_tl_Sun()? ' do
    assert_equal 0.16055519782509398, Eot_angles.cosine_tl_Sun()
    assert_equal 0.16055519782509398, Eot_angles.cosine_tl_Sun(nil)
    assert_equal 0.16055519782509398, Eot_angles.cosine_tl_Sun(0)
  end
  
  it 'expected   0.9174932093012645 returned by  Eot_angles.cosine_to_Earth()? ' do
    assert_equal 0.9174932093012645, Eot_angles.cosine_to_Earth() 
    assert_equal 0.9174932093012645, Eot_angles.cosine_to_Earth(nil)
    assert_equal 0.9174932093012645, Eot_angles.cosine_to_Earth(0)
  end
  
  it 'expected   -23.116504240687046 returned by  Eot_angles.dec_Sun()? ' do
    assert_equal -23.116504240687046, Eot_angles.dec_Sun()
    assert_equal -23.116504240687046, Eot_angles.dec_Sun(nil)
    assert_equal -23.116504240687046, Eot_angles.dec_Sun(0)
  end
  
  it 'expected   -0.0015940313608572006 returned by  Eot_angles.delta_epsilon()? ' do
    assert_equal -0.0015940313608572006, Eot_angles.delta_epsilon()
    assert_equal -0.0015940313608572006, Eot_angles.delta_epsilon(nil)
    assert_equal -0.0015940313608572006, Eot_angles.delta_epsilon(0)
  end
  
  it 'expected   -0.8041525701173668 returned by  Eot_angles.delta_oblique()? ' do
    assert_equal -0.8041525701173668, Eot_angles.delta_oblique()
    assert_equal -0.8041525701173668, Eot_angles.delta_oblique(nil)
    assert_equal -0.8041525701173668, Eot_angles.delta_oblique(0)	
  end
  
  it 'expected    1.2273333530652906 returned by  Eot_angles.delta_orbit()? ' do
    assert_equal  1.2273333530652906, Eot_angles.delta_orbit()
    assert_equal  1.2273333530652906, Eot_angles.delta_orbit(nil)
    assert_equal  1.2273333530652906, Eot_angles.delta_orbit(0)
  end  

  it 'expected   -0.0038550497869660255 returned by  Eot_angles.delta_psi()? ' do
    assert_equal -0.0038550497869660255, Eot_angles.delta_psi()
    assert_equal -0.0038550497869660255, Eot_angles.delta_psi(nil)
    assert_equal -0.0038550497869660255, Eot_angles.delta_psi(0)
  end  
  
  it 'expected   0.016708617 returned by  Eot_angles.eccentricity_Earth()? ' do
    assert_equal 0.016708617, Eot_angles.eccentricity_Earth()
    assert_equal 0.016708617, Eot_angles.eccentricity_Earth(nil)
    assert_equal 0.016708617, Eot_angles.eccentricity_Earth(0)
  end
  
  it 'expected   -0.0035369820010596148 returned by  Eot_angles.eq_of_equinox()? ' do
    assert_equal -0.0035369820010596148, Eot_angles.eq_of_equinox()
    assert_equal -0.0035369820010596148, Eot_angles.eq_of_equinox(nil)
    assert_equal -0.0035369820010596148, Eot_angles.eq_of_equinox(0)
  end

  it 'expected   -1.120130505656931 returned by  Eot_angles.eot()? ' do
    assert_equal -1.120130505656931, Eot_angles.eot()
  end  
  
  it 'expected   280.4664567 returned by  Eot_angles.gml_Sun()? ' do
    assert_equal 280.4664567, Eot_angles.gml_Sun() 
    assert_equal 280.4664567, Eot_angles.gml_Sun(nil)
    assert_equal 280.4664567, Eot_angles.gml_Sun(0)
  end

  it 'expected   90.9060538240478 returned by  Eot_angles.ha_Sun()? ' do
    assert_equal 90.9060538240478, Eot_angles.ha_Sun()
    assert_equal 90.9060538240478, Eot_angles.ha_Sun(nil)
    assert_equal 90.9060538240478, Eot_angles.ha_Sun(0)
  end  
  
  it 'expected   220.63461047326172 returned by  Eot_angles.ma_Sun()? ' do
    assert_equal 220.63461047326172, Eot_angles.ma_Sun() 
  end
  
  it 'expected   280.460622404583 returned by  Eot_angles.ml_Aries()? ' do
    assert_equal 280.460622404583, Eot_angles.ml_Aries() 
    assert_equal 280.460622404583, Eot_angles.ml_Aries(nil)
    assert_equal 280.460622404583, Eot_angles.ml_Aries(0)
  end
  
  it 'expected   23.439279444444445 returned by  Eot_angles.mo_Earth()? ' do
    assert_equal 23.439279444444445, Eot_angles.mo_Earth()
    assert_equal 23.439279444444445, Eot_angles.mo_Earth(nil)
    assert_equal 23.439279444444445, Eot_angles.mo_Earth(0)
  end
  
  it 'expected   125.04455501000001 returned by  Eot_angles.omega()? ' do
    assert_equal 125.04455501000001, Eot_angles.omega()
    assert_equal 125.04455501000001, Eot_angles.omega(nil)
    assert_equal 125.04455501000001, Eot_angles.omega(0)
  end
  
  it 'expected   280.0432759170521 returned by  Eot_angles.ra_Sun()? ' do
    assert_equal 280.0432759170521, Eot_angles.ra_Sun()
    assert_equal 280.0432759170521, Eot_angles.ra_Sun(nil)
    assert_equal 280.0432759170521, Eot_angles.ra_Sun(0)	
  end
  
  it 'expected   -0.9870537600674456 returned by  Eot_angles.sine_al_Sun()? ' do
    assert_equal -0.9870537600674456, Eot_angles.sine_al_Sun()
    assert_equal -0.9870537600674456, Eot_angles.sine_al_Sun(nil)
    assert_equal -0.9870537600674456, Eot_angles.sine_al_Sun(0)
  end  

  it 'expected   -0.9870268630849643 returned by  Eot_angles.sine_tl_Sun()? ' do
    assert_equal -0.9870268630849643, Eot_angles.sine_tl_Sun()
    assert_equal -0.9870268630849643, Eot_angles.sine_tl_Sun(nil)
    assert_equal -0.9870268630849643, Eot_angles.sine_tl_Sun(0)
  end

  it 'expected   219.40727712019643 returned by  Eot_angles.ta_Sun()? ' do
    assert_equal 219.40727712019643, Eot_angles.ta_Sun()
    assert_equal 219.40727712019643, Eot_angles.ta_Sun(nil)
    assert_equal 219.40727712019643, Eot_angles.ta_Sun(0)
  end

  it 'expected   280.45708542258194 returned by  Eot_angles.tl_Aries()? ' do
    assert_equal 280.45708542258194, Eot_angles.tl_Aries()
    assert_equal 280.45708542258194, Eot_angles.tl_Aries(nil)
    assert_equal 280.45708542258194, Eot_angles.tl_Aries(0)
  end  

  it 'expected   279.2391233469347 returned by  Eot_angles.tl_Sun()? ' do
    assert_equal 279.2391233469347, Eot_angles.tl_Sun()
    assert_equal 279.2391233469347, Eot_angles.tl_Sun(nil)
    assert_equal 279.2391233469347, Eot_angles.tl_Sun(0)
  end  
  
  it 'expected   23.43768541308359 returned by Eot_angles.to_Earth()? ' do
    assert_equal 23.43768541308359, Eot_angles.to_Earth()
    assert_equal 23.43768541308359, Eot_angles.to_Earth(nil)
    assert_equal 23.43768541308359, Eot_angles.to_Earth(0)
  end  
end



describe ' Eot angles tjc array for jd 2455055.5 a non default value' do

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute
  before(:each) do
    @ajd            = 2455055.0     
    Eot_angles.ajd  = @ajd
    @dt             = Eot_angles.ajd_to_datetime(@ajd)
    Eot_angles.date = @dt
    Eot_angles.ma_Sun
    @ta             = Eot_angles.time_julian_century(@ajd)
  end
  
  it 'expected   2455055.0, returned by Eot_angles.' do
    assert_equal 2455055.0, Eot_angles.ajd
  end
  
  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_angles.date.to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_angles.date.to_s
  end
  
  it 'expected   216.98609672514223, returned by Eot_angles.' do
    assert_equal 216.98609672514223, Eot_angles.ma
  end   
  
  it 'expected   138.95453031575755 returned by Eot_angles.al_Sun(@ta)? ' do
    assert_equal 138.95453031575755, Eot_angles.al_Sun(@ta)
  end  
  
  it 'expected   -1.1326466587538162 returned by Eot_angles.centre(@ta)? ' do
    assert_equal -1.1326466587538162, Eot_angles.center(@ta)  
  end
  
  it 'expected   -0.7541886969973313 returned by Eot_angles.cosine_al_Sun(@ta)? ' do
    assert_equal -0.7541886969973313, Eot_angles.cosine_al_Sun(@ta)
  end  
  
  it 'expected   -0.7542060769934986 returned by Eot_angles.cosine_tl_Sun(@ta)? ' do
    assert_equal -0.7542060769934986, Eot_angles.cosine_tl_Sun(@ta)
  end
  
  it 'expected   0.9174818406562965 returned by Eot_angles.cosine_to_Earth(@ta)? ' do
    assert_equal 0.9174818406562965, Eot_angles.cosine_to_Earth(@ta)
  end
  
  it 'expected    15.141502782959178 returned by Eot_angles.dec_Sun(@ta)? ' do
     assert_equal 15.141502782959178, Eot_angles.dec_Sun(@ta)
  end
  
  it 'expected   0.001293821738156411 returned by Eot_angles.delta_epsilon(@ta)? ' do
    assert_equal 0.001293821738156411, Eot_angles.delta_epsilon(@ta).round(18)
  end
  
  it 'expected   -2.42490431188628 returned by Eot_angles.delta_oblique(@ta)? ' do
    assert_equal -2.42490431188628, Eot_angles.delta_oblique(@ta)    	
  end
  
  it 'expected   1.1326466587538278 returned by Eot_angles.delta_orbit(@ta)? ' do
    assert_equal 1.1326466587538278, Eot_angles.delta_orbit(@ta)	
  end  

  it 'expected   0.0043768851558214535 returned by Eot_angles.delta_psi(@ta)? ' do
    assert_equal 0.0043768851558214535, Eot_angles.delta_psi(@ta)
  end  
  
  it 'expected    0.016704576164208475 returned by Eot_angles.eccentricity_Earth(@ta)? ' do
     assert_equal 0.016704576164208475, Eot_angles.eccentricity_Earth(@ta)
  end
  
  it 'expected   0.004015712649104288 returned by Eot_angles.eq_of_equinox(@ta)? ' do
    assert_equal 0.004015712649104288, Eot_angles.eq_of_equinox(@ta)
  end

  it 'expected   -1.2922576531324523 returned by Eot_angles.eot()? ' do
    assert_equal -1.2922576531324523, Eot_angles.eot()
  end  
  
  it 'expected   140.08869346549056 returned by  Eot_angles.gml_Sun(@ta)? ' do
    assert_equal 140.08869346549056, Eot_angles.gml_Sun(@ta)
  end

  it 'expected   90.86327177163999 returned by Eot_angles.ha_Sun(@ta)? ' do
    assert_equal 90.86327177163999, Eot_angles.ha_Sun(@ta)
  end  
  
  it 'expected   216.98609672514223 returned by Eot_angles.ma_Sun()? ' do
    assert_equal 216.98609672514223, Eot_angles.ma_Sun() 
  end
  
  it 'expected   140.08287431273857 returned by Eot_angles.ml_Aries(@ta)? ' do
    assert_equal 140.08287431273857, Eot_angles.ml_Aries(@ta)
  end
  
  it 'expected   23.43802918164109 returned by Eot_angles.mo_Earth(@ta)? ' do
    assert_equal 23.43802918164109, Eot_angles.mo_Earth(@ta)
  end
  
  it 'expected   -60.82314052284639 returned by Eot_angles.omega(@ta)? ' do
    assert_equal -60.82314052284639, Eot_angles.omega(@ta)
  end
  
  it 'expected   141.38095111862302 returned by Eot_angles.ra_Sun(@ta)? ' do
    assert_equal 141.38095111862302, Eot_angles.ra_Sun(@ta)
  end
  
  it 'expected   0.6566577566141039 returned by Eot_angles.sine_al_Sun(@ta)? ' do
    assert_equal 0.6566577566141039, Eot_angles.sine_al_Sun(@ta)
  end  

  it 'expected   0.6566377946981706 returned by Eot_angles.sine_tl_Sun(@ta)? ' do
    assert_equal 0.6566377946981706, Eot_angles.sine_tl_Sun(@ta)
  end

  it 'expected   215.8534500663884 returned by Eot_angles.ta_Sun(@ta)? ' do
    assert_equal 215.8534500663884, Eot_angles.ta_Sun(@ta)
  end

  it 'expected   140.08689002538767 returned by Eot_angles.tl_Aries(@ta)? ' do
    assert_equal 140.08689002538767, Eot_angles.tl_Aries(@ta)
  end  

  it 'expected   138.95604680673674 returned by Eot_angles.tl_Sun(@ta)? ' do
    assert_equal 138.95604680673674, Eot_angles.tl_Sun(@ta)
  end  
  
  it 'expected   23.439323003379247 returned by Eot_angles.to_Earth(@ta)? ' do
    assert_equal 23.439323003379247, Eot_angles.to_Earth(@ta)
  end  
end