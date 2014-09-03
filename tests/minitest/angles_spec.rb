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

r2d = 180.0 / Math::PI

describe 'Eot angles default, nil, 0' do

  
  # set ta attribute first as it gets tested anyway but a lot of methods
  # now rely on @ta so we don't have to keep calling it unless we change
  # The same goes for @ma.  
  # @ajd attribute
  before(:each) do
    ajd                    =   2456885.0  
    Eot_angles.ajd  = ajd
    # check date for this ajd when needed.
    Eot_angles.date = Eot_angles.ajd_to_datetime(ajd)
    # set ta attribute
    Eot_angles.time_julian_century() 
    # set ma attribute    
    Eot_angles.ma_Sun()    
  end

  it 'expected   2456885.0 for Eot_angles.ajd'do
    assert_equal 2456885.0, Eot_angles.ajd   
  end

 it 'expected    "2014-08-15T12:00:00+00:00" for Eot_angles.date'.to_s do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_angles.date.to_s    
  end 

  it 'expected   220.63461047270653 for Eot_angles.ma'do
    assert_equal 220.63461047270653, Eot_angles.ma * r2d
  end
  
  it 'expected   142.59259890360846 returned by Eot_angles.al_Sun()? ' do
    assert_equal 142.59259890360846,  Eot_angles.al_Sun() * r2d
  end  
  
  it 'expected   -1.2268888346559395 returned by Eot_angles.centre()? ' do
    assert_equal -1.2268888346559395, Eot_angles.center() * r2d
  end
  
  it 'expected   -0.7943361570447087 returned by Eot_angles.cosine_al_Sun()? ' do
    assert_equal -0.7943361570447087, Eot_angles.cosine_al_Sun()
  end  
  
  it 'expected   -0.7943772759574979 returned by  Eot_angles.cosine_tl_Sun()? ' do
    assert_equal -0.7943772759574979, Eot_angles.cosine_tl_Sun()
  end
  
  it 'expected   0.9175115346811911 returned by  Eot_angles.cosine_to_Earth()? ' do
    assert_equal 0.9175115346811911, Eot_angles.cosine_to_Earth() 
  end
  
  it 'expected   13.98097819689927 returned by  Eot_angles.dec_Sun()? ' do
    assert_equal 13.98097819689927, Eot_angles.dec_Sun() * r2d
  end
  
  it 'expected   -0.0023318194624360874 returned by  Eot_angles.delta_epsilon()? ' do
    assert_equal  -0.0023318194624360874, Eot_angles.delta_epsilon() * r2d
  end
  
  it 'expected   -2.3470147361251383 returned by  Eot_angles.delta_oblique()? ' do
    assert_equal -2.3470147361251383, Eot_angles.delta_oblique() * r2d
  end
  
  it 'expected    1.2268888346559275 returned by  Eot_angles.delta_orbit()? ' do
    assert_equal  1.2268888346559275, Eot_angles.delta_orbit() * r2d
  end  

  it 'expected   0.0021493011786421472 returned by  Eot_angles.delta_psi()? ' do
    assert_equal 0.0021493011786421472, Eot_angles.delta_psi() * r2d
  end  
  
  it 'expected   0.016702468499021204 returned by  Eot_angles.eccentricity_Earth()? ' do
    assert_equal 0.016702468499021204, Eot_angles.eccentricity_Earth()
  end
  
  it 'expected   0.0019720086229080493 returned by  Eot_angles.eq_of_equinox()? ' do
    assert_equal 0.0019720086229080493, Eot_angles.eq_of_equinox() * r2d
  end

  it 'expected   -1.1201259014692109 returned by  Eot_angles.eot()? ' do
    assert_equal -1.1201259014692109, Eot_angles.eot() * r2d
  end  
  
  it 'expected   143.82336613827107 returned by  Eot_angles.gml_Sun()? ' do
    assert_equal 143.82336613827107, Eot_angles.gml_Sun() * r2d 
  end

  it 'expected   109.68262604883732 returned by  Eot_angles.ha_Sun()? ' do
    assert_equal 109.68262604883732, Eot_angles.ha_Sun() * r2d
  end  
  
  it 'expected   220.63461047270653 returned by  Eot_angles.ma_Sun()? ' do
    assert_equal 220.63461047270653, Eot_angles.ma_Sun() * r2d 
  end
  
  it 'expected   143.81755550028174 returned by  Eot_angles.ml_Aries()? ' do
    assert_equal 143.81755550028174, Eot_angles.ml_Aries() * r2d 
  end
  
  it 'expected   23.437377335837343 returned by  Eot_angles.mo_Earth()? ' do
    assert_equal 23.437377335837343, Eot_angles.mo_Earth() * r2d
  end
  
  it 'expected   -157.728505037307 returned by  Eot_angles.omega()? ' do
    assert_equal -157.728505037307, Eot_angles.omega() * r2d
  end
  
  it 'expected   144.94349203974028 returned by  Eot_angles.ra_Sun()? ' do
    assert_equal 144.94349203974028, Eot_angles.ra_Sun() * r2d
  end
  
  it 'expected   0.6074784519729435 returned by  Eot_angles.sine_al_Sun()? ' do
    assert_equal 0.6074784519729435, Eot_angles.sine_al_Sun()
  end  

  it 'expected   0.6074246812917181 returned by  Eot_angles.sine_tl_Sun()? ' do
    assert_equal 0.6074246812917181, Eot_angles.sine_tl_Sun()
  end

  it 'expected   219.40772163805062 returned by  Eot_angles.ta_Sun()? ' do
    assert_equal 219.40772163805062, Eot_angles.ta_Sun() * r2d
  end

  it 'expected   143.81952750890466 returned by  Eot_angles.tl_Aries()? ' do
    assert_equal 143.81952750890466, Eot_angles.tl_Aries() * r2d
  end  

  it 'expected   142.59647730361513 returned by  Eot_angles.tl_Sun()? ' do
    assert_equal 142.59647730361513, Eot_angles.tl_Sun() * r2d
  end  
  
  it 'expected   23.43504551637491 returned by Eot_angles.to_Earth()? ' do
    assert_equal 23.43504551637491, Eot_angles.to_Earth() * r2d
  end  
end



describe ' Eot angles tjc array for jd 2455055.5 a non default value' do

  # set ta attribute first as it gets tested anyway but a lot of methods
  # now rely on @ta so we don't have to keep calling it unless we change
  # The same goes for @ma.  
  # @ajd attribute
  before(:each) do
    ajd                    = 2455055.0     
    Eot_angles.ajd  = ajd
    # check date for this ajd when needed.
    Eot_angles.date = Eot_angles.ajd_to_datetime(ajd)
    # set ta attribute
    Eot_angles.time_julian_century() 
    # set ma attribute    
    Eot_angles.ma_Sun()    
  end
  
  it 'expected   2455055.0, returned by Eot_angles.' do
    assert_equal 2455055.0, Eot_angles.ajd
  end
  
  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_angles.date.to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_angles.date.to_s
  end
  
  it 'expected   216.98609672458667, returned by Eot_angles.' do
    assert_equal 216.98609672458667, Eot_angles.ma * r2d
  end   
  
  it 'expected   138.95453031577227 returned by Eot_angles.al_Sun()? ' do
    assert_equal 138.95453031577227, Eot_angles.al_Sun() * r2d
  end  
  
  it 'expected   -1.132646658739101 returned by Eot_angles.centre()? ' do
    assert_equal -1.132646658739101, Eot_angles.center() * r2d  
  end
  
  it 'expected   -0.7541886969974998 returned by Eot_angles.cosine_al_Sun()? ' do
    assert_equal -0.7541886969974998, Eot_angles.cosine_al_Sun()
  end  
  
  it 'expected   -0.7542060769936675 returned by Eot_angles.cosine_tl_Sun()? ' do
    assert_equal -0.7542060769936675, Eot_angles.cosine_tl_Sun()
  end
  
  it 'expected   0.9174818088112336 returned by Eot_angles.cosine_to_Earth()? ' do
    assert_equal 0.9174818088112336, Eot_angles.cosine_to_Earth()
  end
  
  it 'expected    15.141505645852742 returned by Eot_angles.dec_Sun()? ' do
     assert_equal 15.141505645852742, Eot_angles.dec_Sun() * r2d
  end
  
  it 'expected   0.0012984086913317787 returned by Eot_angles.delta_epsilon()? ' do
    assert_equal 0.0012984086913317787, Eot_angles.delta_epsilon() * r2d
  end
  
  it 'expected   -2.4249052816675642 returned by Eot_angles.delta_oblique()? ' do
    assert_equal -2.4249052816675642, Eot_angles.delta_oblique() * r2d    	
  end
  
  it 'expected   1.1326466587390922 returned by Eot_angles.delta_orbit()? ' do
    assert_equal 1.1326466587390922, Eot_angles.delta_orbit() * r2d	
  end  

  it 'expected   0.004377020275265401 returned by Eot_angles.delta_psi()? ' do
    assert_equal 0.004377020275265401, Eot_angles.delta_psi() * r2d
  end  
  
  it 'expected    0.016704576164208475 returned by Eot_angles.eccentricity_Earth()? ' do
     assert_equal 0.016704576164208475, Eot_angles.eccentricity_Earth()
  end
  
  it 'expected   0.004015836479353945 returned by Eot_angles.eq_of_equinox()? ' do
    assert_equal 0.004015836479353945, Eot_angles.eq_of_equinox() * r2d
  end

  it 'expected   -1.2922586229284718 returned by Eot_angles.eot()? ' do
    assert_equal -1.2922586229284718, Eot_angles.eot() * r2d
  end  
  
  it 'expected   140.08869346549056 returned by  Eot_angles.gml_Sun()? ' do
    assert_equal 140.08869346549056, Eot_angles.gml_Sun() * r2d
  end

  it 'expected   111.35205810460305 returned by Eot_angles.ha_Sun()? ' do
    assert_equal 111.35205810460305, Eot_angles.ha_Sun() * r2d
  end  
  
  it 'expected   216.98609672458667 returned by Eot_angles.ma_Sun()? ' do
    assert_equal 216.98609672458667, Eot_angles.ma_Sun() * r2d 
  end
  
  it 'expected   140.082874313066 returned by Eot_angles.ml_Aries()? ' do
    assert_equal 140.082874313066, Eot_angles.ml_Aries() * r2d
  end
  
  it 'expected   23.438029181641095 returned by Eot_angles.mo_Earth()? ' do
    assert_equal 23.438029181641095, Eot_angles.mo_Earth() * r2d
  end
  
  it 'expected   -60.823140522846394 returned by Eot_angles.omega()? ' do
    assert_equal -60.823140522846394, Eot_angles.omega() * r2d
  end
  
  it 'expected   141.38095208841904 returned by Eot_angles.ra_Sun()? ' do
    assert_equal 141.38095208841904, Eot_angles.ra_Sun() * r2d
  end
  
  it 'expected   0.6566577566139103 returned by Eot_angles.sine_al_Sun()? ' do
    assert_equal 0.6566577566139103, Eot_angles.sine_al_Sun()
  end  

  it 'expected   0.6566377946979767 returned by Eot_angles.sine_tl_Sun()? ' do
    assert_equal 0.6566377946979767, Eot_angles.sine_tl_Sun()
  end

  it 'expected   215.85345006584757 returned by Eot_angles.ta_Sun()? ' do
    assert_equal 215.85345006584757, Eot_angles.ta_Sun() * r2d
  end

  it 'expected   140.08689014954535 returned by Eot_angles.tl_Aries()? ' do
    assert_equal 140.08689014954535, Eot_angles.tl_Aries() * r2d
  end  

  it 'expected   138.9560468067515 returned by Eot_angles.tl_Sun()? ' do
    assert_equal 138.9560468067515, Eot_angles.tl_Sun() * r2d
  end  
  
  it 'expected   23.439327590332425 returned by Eot_angles.to_Earth()? ' do
    assert_equal 23.439327590332425, Eot_angles.to_Earth() * r2d
  end  
end