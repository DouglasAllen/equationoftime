# times_spec.rb
#
# uncomment below for minitest
#gem 'minitest'
#require 'minitest/autorun'
require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_times = EqoT.new

describe ' Eot times default, nil, 0' do  
  
  it 'is         2451545.0 returned by Eot_times.ajd_time() ' do
    assert_equal 2451545.0, Eot_times.ajd_time()
    assert_equal 2451545.0, Eot_times.ajd_time(nil)
    assert_equal 2451545.0, Eot_times.ajd_time(0)
  end
  
  it 'is         0.0 returned by Eot_times.day_fraction_time() ' do
    assert_equal 0.0, Eot_times.day_fraction_time()
    assert_equal 0.0, Eot_times.day_fraction_time(nil)
    assert_equal 0.0, Eot_times.day_fraction_time(0)
  end  
  
  it 'is         "2000-01-01 12:00:00 UTC" returned by Eot_times.get_time() ' do    
    assert_equal '2000-01-01 12:00:00 UTC', Eot_times.get_time().to_s
    assert_equal '2000-01-01 12:00:00 UTC', Eot_times.get_time(nil).to_s
    assert_equal '2000-01-01 12:00:00 UTC', Eot_times.get_time(0).to_s    
  end
  
  it 'is         [2000, 1, 1.0] returned bt Eot_times.jd_to_civil() ' do
    assert_equal [2000, 1, 1.0], Eot_times.jd_to_civil()
    assert_equal [2000, 1, 1.0], Eot_times.jd_to_civil(nil)
    assert_equal [2000, 1, 1.0], Eot_times.jd_to_civil(0)
  end
  
  it 'is         2451544.749744917 returned by Eot_times.sunrise_jd() ' do
    Eot_times.date = DateTime.jd( 2451545.0 ).to_date
    assert_equal 2451544.749744917, Eot_times.sunrise_jd()	  
  end
  
  it 'is         "2000-01-01T05:59:37+00:00" returned by Eot_times.sunrise_time() ' do
    assert_equal "2000-01-01T05:59:37+00:00", Eot_times.sunrise_time().to_s
    assert_equal "2000-01-01T05:59:37+00:00", Eot_times.sunrise_time(nil).to_s
    assert_equal "2000-01-01T05:59:37+00:00", Eot_times.sunrise_time(0).to_s
  end
  
  it 'is         2451545.254775395 returned by Eot_times.sunset_jd() ' do
    Eot_times.date = DateTime.jd( 2451545.0 ).to_date
    assert_equal 2451545.254775395, Eot_times.sunset_jd()	  
  end

  it 'is         "2000-01-01T18:06:52+00:00" returned by Eot_times.sunset_time() ' do
    assert_equal "2000-01-01T18:06:52+00:00", Eot_times.sunset_time().to_s
    assert_equal "2000-01-01T18:06:52+00:00", Eot_times.sunset_time(nil).to_s
    assert_equal "2000-01-01T18:06:52+00:00", Eot_times.sunset_time(0).to_s
  end
  
  it 'is         -3.59091285979138 returned by Eot_times.time_delta_oblique() ' do
    assert_equal -3.59091285979138, Eot_times.time_delta_oblique()
    assert_equal -3.59091285979138, Eot_times.time_delta_oblique(nil)
    assert_equal -3.59091285979138, Eot_times.time_delta_oblique(0)
  end 

  it 'is         0.33628841398948545 returned by Eot_times.time_delta_orbit() ' do
    assert_equal 0.33628841398948545, Eot_times.time_delta_orbit()
    assert_equal 0.33628841398948545, Eot_times.time_delta_orbit(nil)
    assert_equal 0.33628841398948545, Eot_times.time_delta_orbit(0)
  end
  
  it 'is         -3.2546244458018947 returned by Eot_times.time_eot() ' do
    assert_equal -3.2546244458018947, Eot_times.time_eot()
    assert_equal -3.2546244458018947, Eot_times.time_eot(nil)
    assert_equal -3.2546244458018947, Eot_times.time_eot(0)
  end    

  it 'is         -3.2546244458018947 returned by Eot_times.time_eot()  ' do
    assert_equal -3.2546244458018947, Eot_times.time_eot() 
    assert_equal -3.2546244458018947, Eot_times.time_eot(nil) 
    assert_equal -3.2546244458018947, Eot_times.time_eot(0) 	
  end    
  
  it 'is         [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0] returned by Eot_times.time_julian_century()  ' do
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_times.time_julian_century()
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_times.time_julian_century(nil)
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_times.time_julian_century(0)
  end
  
  it 'is         [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0] returned by Eot_times.time_julian_centurey() ' do
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_times.time_julian_centurey()
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_times.time_julian_centurey(nil)
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_times.time_julian_centurey(0)
  end
  
  it 'is         2451545.0 returned by Eot_times.time_to_ajd() ' do
    assert_equal 2451545.0, Eot_times.time_to_ajd()
    assert_equal 2451545.0, Eot_times.time_to_ajd(nil)
    assert_equal 2451545.0, Eot_times.time_to_ajd(0)
  end
end  
  
describe 'Eot times tjc array for jd 2455055.255 a non default value' do  
  
  ta = Eot_times.time_julian_century( 2455055.255 )
  dt = DateTime.jd(2455055.255 + 0.5)
  before(:each) do    
    Eot_times.date = DateTime.jd(2455055.255 + 0.5)
  end
  
  it'is          2455055.255 returned by Eot_times.ajd_time(dt)' do
    assert_equal 2455055.255, Eot_times.ajd_time(dt)	
  end
  
  it'is          0.2549999998882413 returned by Eot_times.day_fraction_time(dt)' do
    assert_equal 0.2549999998882413, Eot_times.day_fraction_time(dt) 	
  end  
  
  it 'is         "2000-01-01 12:00:00 UTC" returned by Eot_times.get_time(dt) ' do    
    assert_equal '2000-01-01 12:00:00 UTC', Eot_times.get_time(dt).to_s      
  end  

  it 'is         "2009-08-11T06:01:42+00:00" returned by Eot_times.sunrise_time(Eot_times.date).to_s' do
    assert_equal "2009-08-11T06:01:42+00:00", Eot_times.sunrise_time(Eot_times.date).to_s	
  end
  
  it 'is         2455054.7511818386 returned by Eot_times.sunrise_jd()' do
    assert_equal 2455054.7511818386, Eot_times.sunrise_jd()	
  end

  it 'is         "2009-08-11T18:08:36+00:00" returned by Eot_times.sunset_time(Eot_times.date)' do
    assert_equal "2009-08-11T18:08:36+00:00", Eot_times.sunset_time(Eot_times.date).to_s	
  end

  it 'is         2455055.255977768 returned by Eot_times.sunset_jd().to_s  ' do
    assert_equal 2455055.255977768, Eot_times.sunset_jd()	
  end
  
  it 'is         -5.154916917299363 is returned by Eot_times.time_eot(dt) ' do
    assert_equal -5.154916917299363, Eot_times.time_eot(dt) 	
  end  
  
  it 'is         [0.09609856262833676, 0.009234933739232362, 0.0008874638583081612, 8.528400116801221e-05, 8.195669927439366e-06,
        7.87592099803208e-07, 7.568646872852184e-08, 7.2733608552255084e-09, 6.989595236643814e-10, 6.716900555953398e-11] returned by Eot_times.time_julian_century(dt)' do
    assert_equal [0.09609856262833676, 0.009234933739232362, 0.0008874638583081612, 8.528400116801221e-05, 8.195669927439366e-06, 
	7.87592099803208e-07, 7.568646872852184e-08, 7.2733608552255084e-09, 6.989595236643814e-10, 6.716900555953398e-11], Eot_times.time_julian_century(dt)
  end

  it 'is         [0.09609856262833676, 0.009234933739232362, 0.0008874638583081612, 8.528400116801221e-05, 8.195669927439366e-06,
        7.87592099803208e-07, 7.568646872852184e-08, 7.2733608552255084e-09, 6.989595236643814e-10, 6.716900555953398e-11] returned by Eot_times.time_julian_centurey(dt) ' do
    assert_equal [0.09609856262833676, 0.009234933739232362, 0.0008874638583081612, 8.528400116801221e-05, 8.195669927439366e-06, 
	7.87592099803208e-07, 7.568646872852184e-08, 7.2733608552255084e-09, 6.989595236643814e-10, 6.716900555953398e-11], Eot_times.time_julian_centurey(dt)
  end

  it 'is Eot_times.time_to_ajd(dt) should return 2455055.255' do
    assert_equal 2455055.255, Eot_times.time_to_ajd(dt)
  end     
  
end

describe 'Eot times explicit' do      

  it 'is         "2000-01-01 16:40:40 UTC" returned by Eot_times.get_time(16.678) ' do    
    assert_equal '2000-01-01 16:40:40 UTC', Eot_times.get_time(16.678).to_s    
  end
  
  it 'is         "2000-01-01 16:40:40 UTC" returned by Eot_times.get_time(16.678)' do    
    assert_equal '2000-01-01 16:40:40 UTC', Eot_times.get_time(16.678).to_s   
  end  

end