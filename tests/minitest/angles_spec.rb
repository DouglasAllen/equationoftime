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

  it 'expected   220.63461047326172 for Eot_angles.ma'do
    assert_equal 220.63461047326172, Eot_angles.ma
  end
  
  it 'expected   142.59259890359445 returned by Eot_angles.al_Sun()? ' do
    assert_equal 142.59259890359445,  Eot_angles.al_Sun()
  end  
  
  it 'expected   -1.2268888346699507 returned by Eot_angles.centre()? ' do
    assert_equal -1.2268888346699507, Eot_angles.center()
  end
  
  it 'expected   -0.7943361570445601 returned by Eot_angles.cosine_al_Sun()? ' do
    assert_equal -0.7943361570445601, Eot_angles.cosine_al_Sun()
  end  
  
  it 'expected   -0.7943772759573492 returned by  Eot_angles.cosine_tl_Sun()? ' do
    assert_equal -0.7943772759573492, Eot_angles.cosine_tl_Sun()
  end
  
  it 'expected   0.9175113778701887 returned by  Eot_angles.cosine_to_Earth()? ' do
    assert_equal 0.9175113778701887, Eot_angles.cosine_to_Earth() 
  end
  
  it 'expected  13.980991172750501 returned by  Eot_angles.dec_Sun()? ' do
    assert_equal 13.980991172750501, Eot_angles.dec_Sun()
  end
  
  it 'expected   -0.0023092285713720855 returned by  Eot_angles.delta_epsilon()? ' do
    assert_equal -0.0023092285713720855, Eot_angles.delta_epsilon()
  end
  
  it 'expected   -2.347019340326881 returned by  Eot_angles.delta_oblique()? ' do
    assert_equal -2.347019340326881, Eot_angles.delta_oblique()
  end
  
  it 'expected    1.2268888346699498 returned by  Eot_angles.delta_orbit()? ' do
    assert_equal  1.2268888346699498, Eot_angles.delta_orbit()
  end  

  it 'expected   0.0021980854910821058 returned by  Eot_angles.delta_psi()? ' do
    assert_equal 0.0021980854910821058, Eot_angles.delta_psi()
  end  
  
  it 'expected   0.016702468499021204 returned by  Eot_angles.eccentricity_Earth()? ' do
    assert_equal 0.016702468499021204, Eot_angles.eccentricity_Earth()
  end
  
  it 'expected  0.0020167684475992133 returned by  Eot_angles.eq_of_equinox()? ' do
    assert_equal 0.0020167684475992133, Eot_angles.eq_of_equinox()
  end

  it 'expected   -1.120130505656931 returned by  Eot_angles.eot()? ' do
    assert_equal -1.120130505656931, Eot_angles.eot()
  end  
  
  it 'expected  143.82336613827107 returned by  Eot_angles.gml_Sun()? ' do
    assert_equal 143.82336613827107, Eot_angles.gml_Sun() 
  end

  it 'expected   90.85874122759954 returned by  Eot_angles.ha_Sun()? ' do
    assert_equal 90.85874122759954, Eot_angles.ha_Sun()
  end  
  
  it 'expected   220.63461047326172 returned by  Eot_angles.ma_Sun()? ' do
    assert_equal 220.63461047326172, Eot_angles.ma_Sun() 
  end
  
  it 'expected   143.81755550028174 returned by  Eot_angles.ml_Aries()? ' do
    assert_equal 143.81755550028174, Eot_angles.ml_Aries() 
  end
  
  it 'expected   23.437377335837343 returned by  Eot_angles.mo_Earth()? ' do
    assert_equal 23.437377335837343, Eot_angles.mo_Earth()
  end
  
  it 'expected   -157.72850503730697 returned by  Eot_angles.omega()? ' do
    assert_equal -157.72850503730697, Eot_angles.omega()
  end
  
  it 'expected   144.943496643928 returned by  Eot_angles.ra_Sun()? ' do
    assert_equal 144.943496643928, Eot_angles.ra_Sun()
  end
  
  it 'expected   0.6074784519731379 returned by  Eot_angles.sine_al_Sun()? ' do
    assert_equal 0.6074784519731379, Eot_angles.sine_al_Sun()
  end  

  it 'expected   0.6074246812919125 returned by  Eot_angles.sine_tl_Sun()? ' do
    assert_equal 0.6074246812919125, Eot_angles.sine_tl_Sun()
  end

  it 'expected   219.40772163859177 returned by  Eot_angles.ta_Sun()? ' do
    assert_equal 219.40772163859177, Eot_angles.ta_Sun()
  end

  it 'expected   143.81957226872933 returned by  Eot_angles.tl_Aries()? ' do
    assert_equal 143.81957226872933, Eot_angles.tl_Aries()
  end  

  it 'expected   142.59647730360112 returned by  Eot_angles.tl_Sun()? ' do
    assert_equal 142.59647730360112, Eot_angles.tl_Sun()
  end  
  
  it 'expected   23.43506810726597 returned by Eot_angles.to_Earth()? ' do
    assert_equal 23.43506810726597, Eot_angles.to_Earth()
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
  
  it 'expected   216.98609672514223, returned by Eot_angles.' do
    assert_equal 216.98609672514223, Eot_angles.ma
  end   
  
  it 'expected   138.95453031575755 returned by Eot_angles.al_Sun()? ' do
    assert_equal 138.95453031575755, Eot_angles.al_Sun()
  end  
  
  it 'expected   -1.1326466587538162 returned by Eot_angles.centre()? ' do
    assert_equal -1.1326466587538162, Eot_angles.center()  
  end
  
  it 'expected   -0.7541886969973313 returned by Eot_angles.cosine_al_Sun()? ' do
    assert_equal -0.7541886969973313, Eot_angles.cosine_al_Sun()
  end  
  
  it 'expected   -0.7542060769934986 returned by Eot_angles.cosine_tl_Sun()? ' do
    assert_equal -0.7542060769934986, Eot_angles.cosine_tl_Sun()
  end
  
  it 'expected   0.9174818406562965 returned by Eot_angles.cosine_to_Earth()? ' do
    assert_equal 0.9174818406562965, Eot_angles.cosine_to_Earth()
  end
  
  it 'expected    15.141502782959178 returned by Eot_angles.dec_Sun()? ' do
     assert_equal 15.141502782959178, Eot_angles.dec_Sun()
  end
  
  it 'expected   0.001293821738156411 returned by Eot_angles.delta_epsilon()? ' do
    assert_equal 0.001293821738156411, Eot_angles.delta_epsilon()
  end
  
  it 'expected   -2.42490431188628 returned by Eot_angles.delta_oblique()? ' do
    assert_equal -2.42490431188628, Eot_angles.delta_oblique()    	
  end
  
  it 'expected   1.1326466587538278 returned by Eot_angles.delta_orbit()? ' do
    assert_equal 1.1326466587538278, Eot_angles.delta_orbit()	
  end  

  it 'expected   0.0043768851558214535 returned by Eot_angles.delta_psi()? ' do
    assert_equal 0.0043768851558214535, Eot_angles.delta_psi()
  end  
  
  it 'expected    0.016704576164208475 returned by Eot_angles.eccentricity_Earth()? ' do
     assert_equal 0.016704576164208475, Eot_angles.eccentricity_Earth()
  end
  
  it 'expected   0.004015712649104288 returned by Eot_angles.eq_of_equinox()? ' do
    assert_equal 0.004015712649104288, Eot_angles.eq_of_equinox()
  end

  it 'expected   -1.2922576531324523 returned by Eot_angles.eot()? ' do
    assert_equal -1.2922576531324523, Eot_angles.eot()
  end  
  
  it 'expected   140.08869346549056 returned by  Eot_angles.gml_Sun()? ' do
    assert_equal 140.08869346549056, Eot_angles.gml_Sun()
  end

  it 'expected   90.86327177163999 returned by Eot_angles.ha_Sun()? ' do
    assert_equal 90.86327177163999, Eot_angles.ha_Sun()
  end  
  
  it 'expected   216.98609672514223 returned by Eot_angles.ma_Sun()? ' do
    assert_equal 216.98609672514223, Eot_angles.ma_Sun() 
  end
  
  it 'expected   140.08287431273857 returned by Eot_angles.ml_Aries()? ' do
    assert_equal 140.08287431273857, Eot_angles.ml_Aries()
  end
  
  it 'expected   23.43802918164109 returned by Eot_angles.mo_Earth()? ' do
    assert_equal 23.43802918164109, Eot_angles.mo_Earth()
  end
  
  it 'expected   -60.82314052284639 returned by Eot_angles.omega()? ' do
    assert_equal -60.82314052284639, Eot_angles.omega()
  end
  
  it 'expected   141.38095111862302 returned by Eot_angles.ra_Sun()? ' do
    assert_equal 141.38095111862302, Eot_angles.ra_Sun()
  end
  
  it 'expected   0.6566577566141039 returned by Eot_angles.sine_al_Sun()? ' do
    assert_equal 0.6566577566141039, Eot_angles.sine_al_Sun()
  end  

  it 'expected   0.6566377946981706 returned by Eot_angles.sine_tl_Sun()? ' do
    assert_equal 0.6566377946981706, Eot_angles.sine_tl_Sun()
  end

  it 'expected   215.8534500663884 returned by Eot_angles.ta_Sun()? ' do
    assert_equal 215.8534500663884, Eot_angles.ta_Sun()
  end

  it 'expected   140.08689002538767 returned by Eot_angles.tl_Aries()? ' do
    assert_equal 140.08689002538767, Eot_angles.tl_Aries()
  end  

  it 'expected   138.95604680673674 returned by Eot_angles.tl_Sun()? ' do
    assert_equal 138.95604680673674, Eot_angles.tl_Sun()
  end  
  
  it 'expected   23.439323003379247 returned by Eot_angles.to_Earth()? ' do
    assert_equal 23.439323003379247, Eot_angles.to_Earth()
  end  
end