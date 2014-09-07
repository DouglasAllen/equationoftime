# times_spec.rb
#
# comment out next two lines and uncomment below for rpec tests.
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_times = Eot.new

describe 'tests ajd of 2456885.0' do

  before(:each) do
    ajd                    =   2456885.0  
    Eot_times.ajd  = ajd
    # check date for this ajd when needed.
    Eot_times.date = Eot_times.ajd_to_datetime(ajd)
    # use ta attribute as matcher
    @ta = Eot_times.ta   
  end

  it 'expected   2456885.0 for Eot_times.ajd'do
    assert_equal 2456885.0, Eot_times.ajd   
  end

 it 'expected    "2014-08-15T12:00:00+00:00" for Eot_times.date'.to_s do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_times.date.to_s    
  end 

  it 'expected   220.63461047270653 for Eot_times.ma'do
    assert_equal 220.63461047270653, Eot_times.ma * Eot::R2D
  end

  it 'expected   "2014-08-15T12:00:00+00:00" from Eot_times.ajd_to_datetime(Eot_times.ajd).to_s ' do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_times.ajd_to_datetime(Eot_times.ajd).to_s	  
  end
  
  it 'expected   -0.003102965199978262 from Eot_times.eot_jd() ' do
    assert_equal -0.003102965199978262, Eot_times.eot_jd()	  
  end
  
  it 'expected   "2014-08-15T12:04:28+00:00" from Eot_times.local_noon_dt().to_s ' do
    assert_equal "2014-08-15T12:04:28+00:00", Eot_times.local_noon_dt().to_s	  
  end
  
  it 'expected   "2014-08-15T12:00:00+00:00" from Eot_times.mean_local_noon_dt().to_s ' do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_times.mean_local_noon_dt().to_s	  
  end
  
  it 'expected   "2014-08-15T04:45:44+00:00" from Eot_times.sunrise_dt() ' do
    assert_equal "2014-08-15T04:45:44+00:00", Eot_times.sunrise_dt().to_s
  end
  
  it 'expected   "2014-08-15T19:23:11+00:00" from Eot_times.sunset_dt() ' do
    assert_equal "2014-08-15T19:23:11+00:00", Eot_times.sunset_dt().to_s
  end
  
  it 'expected   2456884.6984291207 from Eot_times.sunrise_jd() ' do
    assert_equal 2456884.6984291207, Eot_times.sunrise_jd()
  end  

  it 'expected   2456885.3077770434 from Eot_times.sunset_jd() ' do
    assert_equal 2456885.3077770434, Eot_times.sunset_jd()	  
  end
  
  it 'expected   -9.362425472253944 from Eot_times.time_delta_oblique() ' do
    assert_equal -9.362425472253944, Eot_times.time_delta_oblique()
  end 

  it 'expected   4.894155584285248 from Eot_times.time_delta_orbit() ' do
    assert_equal 4.894155584285248, Eot_times.time_delta_orbit()
  end
  
  it 'expected   -4.468269887968697 from Eot_times.time_eot() ' do
    assert_equal -4.468269887968697, Eot_times.time_eot()
  end    
  
end  
  
describe 'tests ajd of 2455055.0' do  
  
  before(:each) do
    ajd                    = 2455055.0     
    Eot_times.ajd  = ajd
    # check date for this ajd when needed.
    Eot_times.date = Eot_times.ajd_to_datetime(ajd)
    # use ta attribute as matcher
    @ta =  Eot_times.ta  
  end
  
  it 'expected   2455055.0, from Eot_times.' do
    assert_equal 2455055.0, Eot_times.ajd
  end
  
  it 'expected   "2009-08-11T12:00:00+00:00" from Eot_times.date.to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_times.date.to_s
  end
  
  it 'expected   216.98609672458667 from Eot_times.' do
    assert_equal 216.98609672458667, Eot_times.ma * Eot::R2D
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from Eot_times.ajd_to_datetime(Eot_times.ajd).to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_times.ajd_to_datetime(Eot_times.ajd).to_s
  end

  it 'expected   -0.003579806101313601 from Eot_times.eot_jd()' do
    assert_equal -0.003579806101313601, Eot_times.eot_jd()
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from Eot_times.mean_local_noon_dt().to_s' do
    assert_equal "2009-08-11T12:00:00+00:00", Eot_times.mean_local_noon_dt().to_s
  end 
  
  it 'expected   "2009-08-11T04:39:44+00:00" from Eot_times.sunrise_dt().to_s' do
    assert_equal "2009-08-11T04:39:44+00:00", Eot_times.sunrise_dt().to_s	
  end
  
  it 'expected   2455054.6942686504 from Eot_times.sunrise_jd()' do
    assert_equal 2455054.6942686504, Eot_times.sunrise_jd()	
  end

  it 'expected   "2009-08-11T19:30:33+00:00" from Eot_times.sunset_dt()' do
    assert_equal "2009-08-11T19:30:33+00:00", Eot_times.sunset_dt().to_s	
  end

  it 'expected   2455055.3128911955 from Eot_times.sunset_jd() ' do
    assert_equal 2455055.3128911955, Eot_times.sunset_jd()	
  end
  
  it 'expected   -5.154920785891585 is from Eot_times.time_eot() ' do
    assert_equal -5.154920785891585, Eot_times.time_eot() 	
  end  
  
end

