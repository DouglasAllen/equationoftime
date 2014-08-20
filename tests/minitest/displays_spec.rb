# displays_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_displays = Eot.new

describe 'Eot displays default, nil, 0' do

  # set ma attribute first it gets tested anyway but a lot of methods
  # now rely on @ma and the only one really needing it is eot
  before(:each) do
    Eot_displays.ajd = 2456885.0  
    Eot_displays.mean_anomaly()
  end    

  it 'expected   "+000:00:00.000" returned by Eot_displays.degrees_to_s() ' do
    assert_equal "+000:00:00.000", Eot_displays.degrees_to_s()  
    assert_equal "+000:00:00.000", Eot_displays.degrees_to_s(nil)
    assert_equal "+000:00:00.000", Eot_displays.degrees_to_s(0)	
  end 
  
  it 'expected   "+279:13:46.271" returned by Eot_displays.string_al_Sun() ' do
    assert_equal "+279:13:46.271", Eot_displays.string_al_Sun()  
    assert_equal "+279:13:46.271", Eot_displays.string_al_Sun(nil)
    assert_equal "+279:13:46.271", Eot_displays.string_al_Sun(0)	
  end
  
  it 'expected   "12:00:00" returned by Eot_displays.string_day_fraction_to_time() ' do
    assert_equal "12:00:00", Eot_displays.string_day_fraction_to_time()  
    assert_equal "12:00:00", Eot_displays.string_day_fraction_to_time(nil)
    assert_equal "12:00:00", Eot_displays.string_day_fraction_to_time(0)	
  end
  
  it 'expected   "-023:06:59.415" returned by Eot_displays.string_dec_Sun() ' do
    assert_equal "-023:06:59.415", Eot_displays.string_dec_Sun()
    assert_equal "-023:06:59.415", Eot_displays.string_dec_Sun(nil)
    assert_equal "-023:06:59.415", Eot_displays.string_dec_Sun(0)	
  end
  
  it 'expected   "-04m, 28.9s" returned by Eot_displays.string_eot() ' do
    assert_equal "-04m, 28.9s", Eot_displays.string_eot()
  end
  
  it 'expected   "2000-01-01" returned by Eot_displays.string_jd_to_date() ' do
    assert_equal "2000-01-01", Eot_displays.string_jd_to_date()
    assert_equal "2000-01-01", Eot_displays.string_jd_to_date(nil)
    assert_equal "2000-01-01", Eot_displays.string_jd_to_date(0)
  end
  
  it 'expected   "+220:38:04.597" returned by Eot_displays.string_ma_Sun() ' do
    assert_equal "+220:38:04.597", Eot_displays.string_ma_Sun()	
  end
  
  it 'expected   "+280:02:35.793" returned by Eot_displays.string_ra_Sun() ' do
    assert_equal "+280:02:35.793", Eot_displays.string_ra_Sun()
    assert_equal "+280:02:35.793", Eot_displays.string_ra_Sun(nil)
    assert_equal "+280:02:35.793", Eot_displays.string_ra_Sun(0)
  end
  
  it 'expected   "+219:24:26.197" returned by Eot_displays.string_ta_Sun() ' do
    assert_equal "+219:24:26.197", Eot_displays.string_ta_Sun()
    assert_equal "+219:24:26.197", Eot_displays.string_ta_Sun(nil)
    assert_equal "+219:24:26.197", Eot_displays.string_ta_Sun(0)	
  end
  
  it 'expected   "12:00:00.000" returned by Eot_displays.string_time() ' do
    assert_equal "12:00:00.000", Eot_displays.string_time()
    assert_equal "12:00:00.000", Eot_displays.string_time(nil)
    assert_equal "12:00:00.000", Eot_displays.string_time(0)	
  end 
  
  it 'expected   "+279:14:20.844" returned by Eot_displays.string_tl_Sun() ' do
    assert_equal "+279:14:20.844", Eot_displays.string_tl_Sun()
    assert_equal "+279:14:20.844", Eot_displays.string_tl_Sun(nil)
    assert_equal "+279:14:20.844", Eot_displays.string_tl_Sun(0)	
  end
  
  it 'expected   "+023:26:15.667" returned by Eot_displays.string_to_Earth() ' do
    assert_equal "+023:26:15.667", Eot_displays.string_to_Earth()
    assert_equal "+023:26:15.667", Eot_displays.string_to_Earth(nil) 
    assert_equal "+023:26:15.667",  Eot_displays.string_to_Earth(0)	
  end
  
end

describe 'Eot displays explicit values' do

  it 'expected   "16:40:40.800" returned by Eot_displays.string_time(16.6780) ' do
    assert_equal "16:40:40.800", Eot_displays.string_time(16.6780)
  end 

  it 'expected   "17:59:16.800" returned by Eot_displays.string_time(17988) ' do
    Eot_displays.date= Date.today.to_s
    assert_equal "17:59:16.800", Eot_displays.string_time(17.988)
  end
  
end