# aliased_displays_spec.rb
#
# uncomment below for minitest
#gem 'minitest'
#require 'minitest/autorun'
require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_aliased_displays = EqoT.new

describe 'assert_equal Eot aliased_displays default, nil' do

  # set ma attribute first it gets tested anyway but a lot of methods
  # now rely on @ma and the only one really neding it is equation_of_time
  before(:each) do  
    Eot_aliased_displays.mean_anomaly()
  end
  
  it 'is         "+280:22:21.183" returned by Eot_aliased_displays.apparent_longitude_string()? ' do
    assert_equal "+280:22:21.183", Eot_aliased_displays.apparent_longitude_string()
    assert_equal "+280:22:21.183", Eot_aliased_displays.apparent_longitude_string(nil)
    assert_equal "+280:22:21.183", Eot_aliased_displays.apparent_longitude_string(0)	
  end  
  
  it 'is         "-023:01:56.578" returned by Eot_aliased_displays.declination_string()? ' do
    assert_equal "-023:01:56.578", Eot_aliased_displays.declination_string()
    assert_equal "-023:01:56.578", Eot_aliased_displays.declination_string(nil)
    assert_equal "-023:01:56.578", Eot_aliased_displays.declination_string(0)	
  end
  
  it 'is         "-03m, 15.27s" returned by Eot_aliased_displays.display_equation_of_time()? ' do
    assert_equal "-03m, 15.27s", Eot_aliased_displays.display_equation_of_time() 
    assert_equal "-03m, 15.27s", Eot_aliased_displays.display_equation_of_time(nil) 
    assert_equal "-03m, 15.27s", Eot_aliased_displays.display_equation_of_time(0)  	
  end
  
  it 'is         "12:00:00.000" returned by Eot_aliased_displays.display_time_string()? ' do
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string()
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string(nil)
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string(0)	
  end 
  
  it 'is         "2000-01-01" returned by Eot_aliased_displays.jd_to_date_string()? ' do
    assert_equal "2000-01-01", Eot_aliased_displays.jd_to_date_string()
    assert_equal "2000-01-01", Eot_aliased_displays.jd_to_date_string(nil)
    assert_equal "2000-01-01", Eot_aliased_displays.jd_to_date_string(0)
  end
  
  it 'is         "12:00:00" returned by Eot_aliased_displays.julian_period_day_fraction_to_time()? ' do
    assert_equal "12:00:00", Eot_aliased_displays.julian_period_day_fraction_to_time()
    assert_equal "12:00:00", Eot_aliased_displays.julian_period_day_fraction_to_time(nil)
    assert_equal "12:00:00", Eot_aliased_displays.julian_period_day_fraction_to_time(0)	
  end
  
  it 'is         "+357:31:44.793" returned by Eot_aliased_displays.mean_anomaly_string()? ' do
    assert_equal "+357:31:44.793", Eot_aliased_displays.mean_anomaly_string()
    assert_equal "+357:31:44.793", Eot_aliased_displays.mean_anomaly_string(nil)
    assert_equal "+357:31:44.793", Eot_aliased_displays.mean_anomaly_string(0)	
  end
  
  it 'is         "+281:16:56.425" returned by Eot_aliased_displays.right_ascension_string()? ' do
    assert_equal "+281:16:56.425", Eot_aliased_displays.right_ascension_string()  
    assert_equal "+281:16:56.425", Eot_aliased_displays.right_ascension_string(nil) 
    assert_equal "+281:16:56.425", Eot_aliased_displays.right_ascension_string(0) 
  end
  
  it 'is         "+357:26:41.304" returned by Eot_aliased_displays.true_anomaly_string()? ' do
    assert_equal "+357:26:41.304", Eot_aliased_displays.true_anomaly_string() 
    assert_equal "+357:26:41.304", Eot_aliased_displays.true_anomaly_string(nil) 
    assert_equal "+357:26:41.304", Eot_aliased_displays.true_anomaly_string(0) 	
  end 
  
  it 'is         "+280:22:55.755" returned by Eot_aliased_displays.true_longitude_string()? ' do
    assert_equal "+280:22:55.755", Eot_aliased_displays.true_longitude_string() 
    assert_equal "+280:22:55.755", Eot_aliased_displays.true_longitude_string(nil) 
    assert_equal "+280:22:55.755", Eot_aliased_displays.true_longitude_string(0) 
  end
  
  it 'is         "+023:26:15.667" returned by Eot_aliased_displays.true_obliquity_string()? ' do
    assert_equal "+023:26:15.667", Eot_aliased_displays.true_obliquity_string() 
    assert_equal "+023:26:15.667",  Eot_aliased_displays.true_obliquity_string(nil) 
    assert_equal "+023:26:15.667", Eot_aliased_displays.true_obliquity_string(0)  	
  end
  
end

describe 'Eot aliased displays explicit values' do

  it 'is         "16:40:40.800" returned by Eot_aliased_displays.display_time_string(16.6780)? ' do
    assert_equal "16:40:40.800", Eot_aliased_displays.display_time_string(16.6780)
  end 

  it 'is         "17:59:16.800" returned by Eot_aliased_displays.display_time_string(17988)? ' do
    Eot_aliased_displays.date = Date.today.to_s
    assert_equal "17:59:16.800", Eot_aliased_displays.display_time_string(17.988)
  end
  
end