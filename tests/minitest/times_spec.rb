# times_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_times = EqoT.new

describe ' Eot times default, nil, 0' do

  Eot_times.ajd = 2456885.0  
  
  it 'expected   "2014-08-15T04:45:44+00:00", returned by Eot_times.sunrise_dt() ' do
    assert_equal "2014-08-15T04:45:44+00:00", Eot_times.sunrise_dt().to_s
  end

  it 'expected   2456884.6984327845, returned by Eot_times.sunrise_jd() ' do
    assert_equal 2456884.6984327845, Eot_times.sunrise_jd()	  
  end

  it 'expected   "2014-08-15T19:23:11+00:00", returned by Eot_times.sunset_dt() ' do
    assert_equal "2014-08-15T19:23:11+00:00", Eot_times.sunset_dt().to_s
  end

  it 'expected   2456885.3077729377, returned by Eot_times.sunset_jd() ' do
    assert_equal 2456885.3077729377, Eot_times.sunset_jd()	  
  end
  
  it 'expected   -9.362443838775045, returned by Eot_times.time_delta_oblique() ' do
    assert_equal -9.362443838775045, Eot_times.time_delta_oblique()
  end 

  it 'expected   4.894155584341185, returned by Eot_times.time_delta_orbit() ' do
    assert_equal 4.894155584341185, Eot_times.time_delta_orbit()
  end
  
  it 'expected   -4.468288254433861, returned by Eot_times.time_eot() ' do
    assert_equal -4.468288254433861, Eot_times.time_eot()
  end    
  
  it 'expected   [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0] returned by Eot_times.time_julian_century()  ' do
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_times.time_julian_century()
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_times.time_julian_century(nil)
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_times.time_julian_century(0)
  end  
 

end  
  
describe 'Eot times for ajd 2455055.0 a non default value' do  
  
  before(:each) do
    @ajd           = 2455055.0     
    Eot_times.ajd  = @ajd
    @dt            = Eot_times.ajd_to_datetime(@ajd)
    Eot_times.date = @dt
  end

  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_times.ajd_to_datetime(@ajd).to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_times.ajd_to_datetime(@ajd).to_s
  end

  it 'expected   -0.0035798034147912243, returned by Eot_times.eot_jd()' do
    assert_equal -0.0035798034147912243, Eot_times.eot_jd()
  end

  it 'expected   "2009-08-11T11:59:59+00:00", returned by Eot_times.mean_local_noon_dt().to_s' do
    assert_equal "2009-08-11T11:59:59+00:00", Eot_times.mean_local_noon_dt().to_s
  end 
  
  it 'expected   "2009-08-11T04:39:45+00:00" returned by Eot_times.sunrise_dt().to_s' do
    assert_equal "2009-08-11T04:39:45+00:00", Eot_times.sunrise_dt().to_s	
  end
  
  it 'expected   2455054.694272856 returned by Eot_times.sunrise_jd()' do
    assert_equal 2455054.694272856, Eot_times.sunrise_jd()	
  end

  it 'expected   "2009-08-11T19:30:33+00:00" returned by Eot_times.sunset_dt()' do
    assert_equal "2009-08-11T19:30:33+00:00", Eot_times.sunset_dt().to_s	
  end

  it 'expected   2455055.312886517 returned by Eot_times.sunset_jd() ' do
    assert_equal 2455055.312886517, Eot_times.sunset_jd()	
  end
  
  it 'expected   -5.154916917299363 is returned by Eot_times.time_eot() ' do
    assert_equal -5.154916917299363, Eot_times.time_eot() 	
  end  
  
  it 'expected   [0.09609856262833676, 0.009234933739232362, 0.0008874638583081612, 8.528400116801221e-05, 8.195669927439366e-06,
        7.87592099803208e-07, 7.568646872852184e-08, 7.2733608552255084e-09, 6.989595236643814e-10, 6.716900555953398e-11] returned by Eot_times.time_julian_century(@dt)' do
    assert_equal [0.09609856262833676, 0.009234933739232362, 0.0008874638583081612, 8.528400116801221e-05, 8.195669927439366e-06, 
	7.87592099803208e-07, 7.568646872852184e-08, 7.2733608552255084e-09, 6.989595236643814e-10, 6.716900555953398e-11], Eot_times.time_julian_century(@dt)
  end

  it 'expected   [0.09609856262833676, 0.009234933739232362, 0.0008874638583081612, 8.528400116801221e-05, 8.195669927439366e-06,
        7.87592099803208e-07, 7.568646872852184e-08, 7.2733608552255084e-09, 6.989595236643814e-10, 6.716900555953398e-11] returned by Eot_times.time_julian_century(@ajd)' do
    assert_equal [0.09609856262833676, 0.009234933739232362, 0.0008874638583081612, 8.528400116801221e-05, 8.195669927439366e-06, 
	7.87592099803208e-07, 7.568646872852184e-08, 7.2733608552255084e-09, 6.989595236643814e-10, 6.716900555953398e-11], Eot_times.time_julian_century(@ajd)
  end  
  
end

