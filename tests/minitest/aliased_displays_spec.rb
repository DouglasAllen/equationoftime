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

describe 'Eot_aliased_displays using ajd of 2456885.0' do

  # set ta attribute first as it gets tested anyway but a lot of methods
  # now rely on @ta so we don't have to keep calling it unless we change
  # @ajd attribute.
  # The @ta attribute gets set along the way.  
  
  before(:each) do
    ajd                       =   2456885.0  
    Eot_aliased_displays.ajd  = ajd
    
    # check date for this ajd when needed.
    Eot_aliased_displays.date = Eot_aliased_displays.ajd_to_datetime(ajd)
    
    # set ma attribute    
    Eot_aliased_displays.ma_Sun()    
  end

  it 'expected  2456885.0 , returned by Eot_aliased_displays.' do
    assert_equal 2456885.0, Eot_aliased_displays.ajd
  end
  
  it 'expected   "2014-08-15T12:00:00+00:00", returned by Eot_aliased_displays.date.to_s' do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_aliased_displays.date.to_s
  end
  
  it 'expected   220.63461047270602, returned by Eot_aliased_displays.' do
    assert_equal 220.63461047270602, Eot_aliased_displays.ma
  end   
  
  it 'expected   "+142:35:33.356" returned by Eot_aliased_displays.apparent_longitude_string()? ' do
    assert_equal "+142:35:33.356", Eot_aliased_displays.apparent_longitude_string()
  end  
  
  it 'expected   "+013:58:51.568" returned by Eot_aliased_displays.declination_string()? ' do
    assert_equal "+013:58:51.568", Eot_aliased_displays.declination_string()
  end
  
  it 'expected   "-04m, 28.9s" returned by Eot_aliased_displays.display_equation_of_time()? ' do
    assert_equal "-04m, 28.9s", Eot_aliased_displays.display_equation_of_time() 	
  end
  
  it 'expected   "12:00:00.000" returned by Eot_aliased_displays.display_time_string()? ' do
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string()
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string(nil)
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string(0)	
  end 
  
  it 'expected   "12:00:00.000" returned by Eot_aliased_displays.display_time_string(Eot_aliased_displays.date)? ' do
    assert_equal "12:00:00.000", Eot_aliased_displays.display_time_string(Eot_aliased_displays.date)
  end 
  
  it 'expected   "2000-01-01" returned by Eot_aliased_displays.jd_to_date_string()? ' do
    assert_equal "2000-01-01", Eot_aliased_displays.jd_to_date_string()
    assert_equal "2000-01-01", Eot_aliased_displays.jd_to_date_string(nil)
    assert_equal "2000-01-01", Eot_aliased_displays.jd_to_date_string(0)
  end
  
   it 'expected   "2014-08-15" returned by Eot_aliased_displays.jd_to_date_string(Eot_aliased_displays.ajd)? ' do
    assert_equal "2014-08-15", Eot_aliased_displays.jd_to_date_string(Eot_aliased_displays.ajd)
  end
  
  it 'expected   "12:00:00" returned by Eot_aliased_displays.julian_period_day_fraction_to_time()? ' do
    assert_equal "12:00:00", Eot_aliased_displays.julian_period_day_fraction_to_time()
    assert_equal "12:00:00", Eot_aliased_displays.julian_period_day_fraction_to_time(nil)
    assert_equal "12:00:00", Eot_aliased_displays.julian_period_day_fraction_to_time(0)	
  end
  
  it 'expected   "+220:38:04.597" returned by Eot_aliased_displays.mean_anomaly_string()? ' do
    assert_equal "+220:38:04.597", Eot_aliased_displays.mean_anomaly_string()
  end
  
  it 'expected   "+144:56:36.587" returned by Eot_aliased_displays.right_ascension_string()? ' do
    assert_equal "+144:56:36.587", Eot_aliased_displays.right_ascension_string()  
  end
  
  it 'expected   "+219:24:27.797" returned by Eot_aliased_displays.true_anomaly_string()? ' do
    assert_equal "+219:24:27.797", Eot_aliased_displays.true_anomaly_string() 
  end 
  
  it 'expected   "+142:35:47.3184" returned by Eot_aliased_displays.true_longitude_string()? ' do
    assert_equal "+142:35:47.318", Eot_aliased_displays.true_longitude_string() 
  end
  
  it 'expected   "+023:26:06.245" returned by Eot_aliased_displays.true_obliquity_string()? ' do
    assert_equal "+023:26:06.245", Eot_aliased_displays.true_obliquity_string() 
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