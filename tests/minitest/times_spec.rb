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

describe ' Eot times using ajd of 2456885.0' do

  # set ta attribute first as it gets tested anyway but a lot of methods
  # now rely on @ta so we don't have to keep calling it unless we change
  # The same goes for @ma.  
  # @ajd attribute
  before(:each) do
    ajd                    =   2456885.0  
    Eot_times.ajd  = ajd
    # check date for this ajd when needed.
    Eot_times.date = Eot_times.ajd_to_datetime(ajd)
    # set ta attribute
    @ta = Eot_times.ta 
    # set ma attribute    
    # Eot_times.ma_Sun()    
  end

  it 'expected   2456885.0 for Eot_times.ajd'do
    assert_equal 2456885.0, Eot_times.ajd   
  end

 it 'expected    "2014-08-15T12:00:00+00:00" for Eot_times.date'.to_s do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_times.date.to_s    
  end 

  it 'expected   220.63461047326172 for Eot_times.ma'do
    assert_equal 220.63461047326172, Eot_times.ma
  end

  it 'expected   "2014-08-15T12:00:00+00:00" returned by Eot_times.ajd_to_datetime(Eot_times.ajd).to_s ' do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_times.ajd_to_datetime(Eot_times.ajd).to_s	  
  end
  
  it 'expected   -0.003102977954467959, returned by Eot_times.eot_jd() ' do
    assert_equal -0.003102977954467959, Eot_times.eot_jd()	  
  end
  
  it 'expected   "2014-08-15T12:04:28+00:00", returned by Eot_times.local_noon_dt().to_s ' do
    assert_equal "2014-08-15T12:04:28+00:00", Eot_times.local_noon_dt().to_s	  
  end
  
  it 'expected   "2014-08-15T12:00:00+00:00", returned by Eot_times.mean_local_noon_dt().to_s ' do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_times.mean_local_noon_dt().to_s	  
  end
  
  it 'expected   "2014-08-15T06:01:01+00:00", returned by Eot_times.sunrise_dt() ' do
    assert_equal "2014-08-15T06:01:01+00:00", Eot_times.sunrise_dt().to_s
  end
  
  it 'expected   "2014-08-15T18:07:54+00:00", returned by Eot_times.sunset_dt() ' do
    assert_equal "2014-08-15T18:07:54+00:00", Eot_times.sunset_dt().to_s
  end
  
  it 'expected   2456884.7507175854, returned by Eot_times.sunrise_jd() ' do
    assert_equal 2456884.7507175854, Eot_times.sunrise_jd()
  end  

  it 'expected   2456885.25548837, returned by Eot_times.sunset_jd() ' do
    assert_equal 2456885.25548837, Eot_times.sunset_jd()	  
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
  
  it 'expected @ta returned by Eot_times.time_julian_century()  ' do
    assert_equal @ta, Eot_times.time_julian_century()
    
  end  
 

end  
  
describe 'Eot times using ajd of 2455055.0' do  
  
  # set ta attribute first as it gets tested anyway but a lot of methods
  # now rely on @ta so we don't have to keep calling it unless we change
  # The same goes for @ma.  
  # @ajd attribute
  before(:each) do
    ajd                    = 2455055.0     
    Eot_times.ajd  = ajd
    # check date for this ajd when needed.
    Eot_times.date = Eot_times.ajd_to_datetime(ajd)
    # set ta attribute
    @ta =  Eot_times.ta 
    # set ma attribute    
    # Eot_times.ma_Sun()    
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

  it 'expected   "2009-08-11T12:00:00+00:00", returned by Eot_times.ajd_to_datetime(Eot_times.ajd).to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_times.ajd_to_datetime(Eot_times.ajd).to_s
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
  
  it 'expected   2455054.7511818265 returned by Eot_times.sunrise_jd()' do
    assert_equal 2455054.7511818265, Eot_times.sunrise_jd()	
  end

  it 'expected   "2009-08-11T18:08:36+00:00" returned by Eot_times.sunset_dt()' do
    assert_equal "2009-08-11T18:08:36+00:00", Eot_times.sunset_dt().to_s	
  end

  it 'expected   2455055.2559777806returned by Eot_times.sunset_jd() ' do
    assert_equal 2455055.2559777806, Eot_times.sunset_jd()	
  end
  
  it 'expected   -5.154916917299363 is returned by Eot_times.time_eot() ' do
    assert_equal -5.154916917299363, Eot_times.time_eot() 	
  end  
  
  it 'expected  @ta returned by Eot_times.time_julian_century()' do
    assert_equal @ta, Eot_times.time_julian_century()
  end
  
end

