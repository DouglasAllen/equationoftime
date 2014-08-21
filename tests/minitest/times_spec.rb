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

Eot_times = Eot.new

describe ' Eot times default, nil, 0' do

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute. 
  before(:each) do
    @ajd           = 2456885.0
    Eot_times.ajd = @ajd
    Eot_times.ma_Sun()    
  end 

  it 'expected   2456885.0 for Eot_times.ajd'do
    assert_equal 2456885.0, Eot_times.ajd
    assert_equal 220.63461047326172, Eot_times.ma
  end  
  
  it 'expected   "2014-08-15T06:01:02+00:00", returned by Eot_times.sunrise_dt() ' do
    assert_equal "2014-08-15T06:01:02+00:00", Eot_times.sunrise_dt().to_s
  end

  it 'expected   2456884.7507175957, returned by Eot_times.sunrise_jd() ' do
    assert_equal 2456884.7507175957, Eot_times.sunrise_jd()	  
  end

  it 'expected   "2014-08-15T18:07:54+00:00", returned by Eot_times.sunset_dt() ' do
    assert_equal "2014-08-15T18:07:54+00:00", Eot_times.sunset_dt().to_s
  end

  it 'expected   2456885.25548836, returned by Eot_times.sunset_jd() ' do
    assert_equal 2456885.25548836, Eot_times.sunset_jd()	  
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
  
  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute
  before(:each) do
    @ajd           = 2455055.0     
    Eot_times.ajd  = @ajd
    @dt            = Eot_times.ajd_to_datetime(@ajd)
    Eot_times.date = @dt
    Eot_times.ma_Sun
  end
  
  it 'expected   2455055.0, returned by Eot_times.' do
    assert_equal 2455055.0, Eot_times.ajd
  end
  
  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_times.date.to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_times.date.to_s
  end
  
  it 'expected   216.98609672514223, returned by Eot_times.' do
    assert_equal 216.98609672514223, Eot_times.ma
  end

  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_times.ajd_to_datetime(@ajd).to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_times.ajd_to_datetime(@ajd).to_s
  end

  it 'expected   -0.0035798034147912243, returned by Eot_times.eot_jd()' do
    assert_equal -0.0035798034147912243, Eot_times.eot_jd()
  end

  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_times.mean_local_noon_dt().to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_times.mean_local_noon_dt().to_s
  end 
  
  it 'expected   "2009-08-11T06:01:42+00:00" returned by Eot_times.sunrise_dt().to_s' do
    assert_equal "2009-08-11T06:01:42+00:00", Eot_times.sunrise_dt().to_s	
  end
  
  it 'expected   2455054.7511818386 returned by Eot_times.sunrise_jd()' do
    assert_equal 2455054.7511818386, Eot_times.sunrise_jd()	
  end

  it 'expected   "2009-08-11T18:08:36+00:00" returned by Eot_times.sunset_dt()' do
    assert_equal "2009-08-11T18:08:36+00:00", Eot_times.sunset_dt().to_s	
  end

  it 'expected   2455055.255977768 returned by Eot_times.sunset_jd() ' do
    assert_equal 2455055.255977768, Eot_times.sunset_jd()	
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

