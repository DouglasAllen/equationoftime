# displays_spec.rb
#

# require_relative 'spec_config'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_displays = Eot.new

describe 'Eot displays using ajd of 2456885.0' do
  
  before(:each) do
    Eot_displays.ajd               =   2456885.0  
    ajd   = Eot_displays.ajd    
    # check date for this ajd when needed.
    Eot_displays.date = Eot_displays.ajd_to_datetime(ajd)  
  end

  it 'expected   2456885.0 for Eot_displays.ajd'do
    assert_equal 2456885.0, Eot_displays.ajd
  end
  
  it 'expected   "2014-08-15T12:00:00+00:00", returned by Eot_displays.date.to_s' do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_displays.date.to_s
  end
  
  it 'expected   3.8508003966038915, returned by Eot_displays.' do
    assert_equal 3.8508003966038915, Eot_displays.ma
  end   

  it 'expected   "+000:00:00.000" returned by Eot_displays.degrees_to_s() ' do
    assert_equal "+000:00:00.000", Eot_displays.degrees_to_s()  
    assert_equal "+000:00:00.000", Eot_displays.degrees_to_s(nil)
    assert_equal "+000:00:00.000", Eot_displays.degrees_to_s(0)	
  end 
  
  it 'expected   "+142:35:33.356" returned by Eot_displays.string_al_Sun() ' do
    assert_equal "+142:35:33.356", Eot_displays.string_al_Sun()  
  end
  
  it 'expected   "12:00:00" returned by Eot_displays.string_day_fraction_to_time() ' do
    assert_equal "12:00:00", Eot_displays.string_day_fraction_to_time()  
    assert_equal "12:00:00", Eot_displays.string_day_fraction_to_time(nil)
    assert_equal "12:00:00", Eot_displays.string_day_fraction_to_time(0)	
  end
  
  it 'expected   "+013:58:51.521" returned by Eot_displays.string_dec_Sun() ' do
    assert_equal "+013:58:51.521", Eot_displays.string_dec_Sun()
  end
  
  it 'expected   "-04m, 29.2s" returned by Eot_displays.string_eot() ' do
    assert_equal "-04m, 29.2s", Eot_displays.string_eot()
  end
  
  it 'expected   "2000-01-01" returned by Eot_displays.string_jd_to_date() ' do
    assert_equal "2000-01-01", Eot_displays.string_jd_to_date()
    assert_equal "2000-01-01", Eot_displays.string_jd_to_date(nil)
    assert_equal "2000-01-01", Eot_displays.string_jd_to_date(0)
  end
  
   it 'expected  "2014-08-15" returned by Eot_displays.jd_to_date_string(Eot_displays.ajd)? ' do
    assert_equal "2014-08-15", Eot_displays.jd_to_date_string(Eot_displays.ajd)
  end
  
  it 'expected   "+220:38:04.597" returned by Eot_displays.string_ma_Sun() ' do
    assert_equal "+220:38:04.597", Eot_displays.string_ma_Sun()	
  end
  
  it 'expected   "+144:56:36.571" returned by Eot_displays.string_ra_Sun() ' do
    assert_equal "+144:56:36.571", Eot_displays.string_ra_Sun()
  end
  
  it 'expected   "+219:24:27.797" returned by Eot_displays.string_ta_Sun() ' do
    assert_equal "+219:24:27.797", Eot_displays.string_ta_Sun()
  end
  
  it 'expected   "12:00:00.000" returned by Eot_displays.string_time() ' do
    assert_equal "12:00:00.000", Eot_displays.string_time()
    assert_equal "12:00:00.000", Eot_displays.string_time(nil)
    assert_equal "12:00:00.000", Eot_displays.string_time(0)	
  end

  it 'expected   "12:00:00.000" returned by Eot_displays.display_time_string(Eot_adisplays.date)? ' do
    assert_equal "12:00:00.000", Eot_displays.display_time_string(Eot_displays.date)
  end 
  
  it 'expected   "+142:35:47.318" returned by Eot_displays.string_tl_Sun() ' do
    assert_equal "+142:35:47.318", Eot_displays.string_tl_Sun()
  end
  
  it 'expected   "+023:26:06.163" returned by Eot_displays.string_to_Earth() ' do
    assert_equal "+023:26:06.163", Eot_displays.string_to_Earth()
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