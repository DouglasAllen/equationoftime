# aliased_displays_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_aliased_displays = Eot.new

describe 'assert_equal Eot aliased_displays default, nil' do

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute.
  
  before(:each) do 
    @ajd                      = 2456885.0
    Eot_aliased_displays.ajd  = @ajd  
    Eot_aliased_displays.mean_anomaly()
  end 

  it 'expected   2456885.0 for Eot_aliased_displays.ajd' do
    assert_equal 2456885.0, Eot_aliased_displays.ajd
    assert_equal 220.63461047326172, Eot_aliased_displays.ma
  end    
  
  it 'expected   "+279:13:46.271" returned by Eot_aliased_displays.apparent_longitude_string()? ' do
    assert_equal "+279:13:46.271", Eot_aliased_displays.apparent_longitude_string()
    assert_equal "+279:13:46.271", Eot_aliased_displays.apparent_longitude_string(nil)
    assert_equal "+279:13:46.271", Eot_aliased_displays.apparent_longitude_string(0)	
  end  
  
  it 'expected   "-023:06:59.415" returned by Eot_aliased_displays.declination_string()? ' do
    assert_equal "-023:06:59.415", Eot_aliased_displays.declination_string()
    assert_equal "-023:06:59.415", Eot_aliased_displays.declination_string(nil)
    assert_equal "-023:06:59.415", Eot_aliased_displays.declination_string(0)	
  end
  
  it 'expected   "-04m, 28.9s" returned by Eot_aliased_displays.display_equation_of_time()? ' do
    assert_equal "-04m, 28.9s", Eot_aliased_displays.display_equation_of_time() 	
  end
  
  it 'expected   "12:00:00.000" returned by Eot_aliased_displays.display_time_string()? ' do
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string()
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string(nil)
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string(0)	
  end 
  
  it 'expected   "2000-01-01" returned by Eot_aliased_displays.jd_to_date_string()? ' do
    assert_equal "2000-01-01", Eot_aliased_displays.jd_to_date_string()
    assert_equal "2000-01-01", Eot_aliased_displays.jd_to_date_string(nil)
    assert_equal "2000-01-01", Eot_aliased_displays.jd_to_date_string(0)
  end
  
  it 'expected   "12:00:00" returned by Eot_aliased_displays.julian_period_day_fraction_to_time()? ' do
    assert_equal "12:00:00", Eot_aliased_displays.julian_period_day_fraction_to_time()
    assert_equal "12:00:00", Eot_aliased_displays.julian_period_day_fraction_to_time(nil)
    assert_equal "12:00:00", Eot_aliased_displays.julian_period_day_fraction_to_time(0)	
  end
  
  it 'expected   "+220:38:04.597" returned by Eot_aliased_displays.mean_anomaly_string()? ' do
    assert_equal "+220:38:04.597", Eot_aliased_displays.mean_anomaly_string()
  end
  
  it 'expected   "+280:02:35.793" returned by Eot_aliased_displays.right_ascension_string()? ' do
    assert_equal "+280:02:35.793", Eot_aliased_displays.right_ascension_string()  
    assert_equal "+280:02:35.793", Eot_aliased_displays.right_ascension_string(nil) 
    assert_equal "+280:02:35.793", Eot_aliased_displays.right_ascension_string(0) 
  end
  
  it 'expected   "+219:24:26.197" returned by Eot_aliased_displays.true_anomaly_string()? ' do
    assert_equal "+219:24:26.197", Eot_aliased_displays.true_anomaly_string() 
    assert_equal "+219:24:26.197", Eot_aliased_displays.true_anomaly_string(nil) 
    assert_equal "+219:24:26.197", Eot_aliased_displays.true_anomaly_string(0) 	
  end 
  
  it 'expected   "+279:14:20.844" returned by Eot_aliased_displays.true_longitude_string()? ' do
    assert_equal "+279:14:20.844", Eot_aliased_displays.true_longitude_string() 
    assert_equal "+279:14:20.844", Eot_aliased_displays.true_longitude_string(nil) 
    assert_equal "+279:14:20.844", Eot_aliased_displays.true_longitude_string(0) 
  end
  
  it 'expected   "+023:26:15.667" returned by Eot_aliased_displays.true_obliquity_string()? ' do
    assert_equal "+023:26:15.667", Eot_aliased_displays.true_obliquity_string() 
    assert_equal "+023:26:15.667",  Eot_aliased_displays.true_obliquity_string(nil) 
    assert_equal "+023:26:15.667", Eot_aliased_displays.true_obliquity_string(0)  	
  end
  
end

describe 'Eot aliased displays explicit values' do

  it 'expected   "16:40:40.800" returned by Eot_aliased_displays.display_time_string(16.6780)? ' do
    assert_equal "16:40:40.800", Eot_aliased_displays.display_time_string(16.6780)
  end 

  it 'expected   "17:59:16.800" returned by Eot_aliased_displays.display_time_string(17988)? ' do
    Eot_aliased_displays.date = Date.today.to_s
    assert_equal "17:59:16.800", Eot_aliased_displays.display_time_string(17.988)
  end
  
end