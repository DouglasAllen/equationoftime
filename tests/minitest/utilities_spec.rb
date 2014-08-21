# utilities_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_utilities = Eot.new

describe 'Eot utilities default' do

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute. 
  
  before(:each) do
    @ajd           = 2456885.0
    Eot_utilities.ajd = @ajd
    Eot_utilities.ma_Sun()    
  end

  it 'expected   2456885.0 for Eot_utilities.ajd'do
    assert_equal 2456885.0, Eot_utilities.ajd
    assert_equal 220.63461047326172, Eot_utilities.ma
  end        

  it 'expected   0.0 rturned by Eot_utilities.bd() ' do
    assert_equal 0.0, Eot_utilities.bd()
    assert_equal 0.0, Eot_utilities.bd(nil)
    assert_equal 0.0, Eot_utilities.bd(0)
  end
  
  it 'expected   "2000-01-01" returned by Eot_utilities.check_date_nil() ' do
    assert_equal '2000-01-01', Eot_utilities.check_date_nil()
    assert_equal '2000-01-01', Eot_utilities.check_date_nil(nil)
    assert_equal 0, Eot_utilities.check_date_nil(0)	
  end
  
  it 'expected   "2000-01-01" returned by Eot_utilities.check_date_zero() ' do
    assert_equal '2000-01-01', Eot_utilities.check_date_zero()
    assert_equal '2000-01-01', Eot_utilities.check_date_zero(nil)
    assert_equal '2000-01-01', Eot_utilities.check_date_zero(0)	
  end   
  
  it 'expected   [0.0, 0.0, 0.0, 0.0, 0.0] returned by Eot_utilities.check_jct_nil() ' do
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0], Eot_utilities.check_jct_nil()
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0], Eot_utilities.check_jct_nil(nil)
    assert_equal 0, Eot_utilities.check_jct_nil(0)	
  end
  
  it 'expected         [0.0, 0.0, 0.0, 0.0, 0.0] returned by Eot_utilities.check_jct_zero() ' do
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0], Eot_utilities.check_jct_zero()
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0], Eot_utilities.check_jct_zero(nil)
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0], Eot_utilities.check_jct_zero(0)	
  end
  
  it 'expected   2451545.0 returned by Eot_utilities.check_jd_nil() ' do
    assert_equal 2451545.0, Eot_utilities.check_jd_nil()
    assert_equal 2451545.0, Eot_utilities.check_jd_nil(nil)
    assert_equal 0, Eot_utilities.check_jd_nil(0)	
  end
  
  it 'expected   2451545.0 returned by Eot_utilities.check_jd_zero() ' do
    assert_equal 2451545.0, Eot_utilities.check_jd_zero()
    assert_equal 2451545.0, Eot_utilities.check_jd_zero(nil)
    assert_equal 2451545.0, Eot_utilities.check_jd_zero(0)
  end
  
  it 'expected   "2000-01-01T12:00:00+00:00" returned by Eot_utilities.check_t_nil() ' do
    assert_equal "2000-01-01T12:00:00+00:00", Eot_utilities.check_t_nil().to_s
    assert_equal "2000-01-01T12:00:00+00:00", Eot_utilities.check_t_nil(nil).to_s
    assert_equal '0', Eot_utilities.check_t_nil(0).to_s
  end
  
  it 'expected   "2000-01-01T12:00:00+00:00" returned by Eot_utilities.check_t_zero() ' do
    assert_equal "2000-01-01T12:00:00+00:00", Eot_utilities.check_t_zero().to_s
    assert_equal "2000-01-01T12:00:00+00:00", Eot_utilities.check_t_zero(nil).to_s
    assert_equal "2000-01-01T12:00:00+00:00", Eot_utilities.check_t_zero(0).to_s
   end
  
  it 'expected   1.0 returned by Eot_utilities.cosd() ' do
    assert_equal 1.0, Eot_utilities.cosd()
    assert_equal 1.0, Eot_utilities.cosd(nil)
    assert_equal 1.0, Eot_utilities.cosd(0)
  end
  
  it 'expected   0.0 returned by Eot_utilities.deg_to_rad() ' do
    assert_equal 0.0, Eot_utilities.deg_to_rad()
    assert_equal 0.0, Eot_utilities.deg_to_rad(nil)
    assert_equal 0.0, Eot_utilities.deg_to_rad(0)
  end  

  it 'expected   0.0 returned by Eot_utilities.mod_360() ' do
    assert_equal 0.0, Eot_utilities.mod_360()
    assert_equal 0.0, Eot_utilities.mod_360(nil)
    assert_equal 0.0, Eot_utilities.mod_360(0)
  end  

  it 'expected   0.0 returned by Eot_utilities.rad_to_deg() ' do
    assert_equal 0.0, Eot_utilities.rad_to_deg()
    assert_equal 0.0, Eot_utilities.rad_to_deg(nil)
    assert_equal 0.0, Eot_utilities.rad_to_deg(0)
  end  
  
  it 'expected   0.0 returned by Eot_utilities.sind() ' do
    assert_equal 0.0, Eot_utilities.sind()
    assert_equal 0.0, Eot_utilities.sind(nil)
    assert_equal 0.0, Eot_utilities.sind(0)
  end
  
  it 'expected   0.0 returned by Eot_utilities.to_deg() ' do
    assert_equal 0.0, Eot_utilities.to_deg()
    assert_equal 0.0, Eot_utilities.to_deg(nil)
    assert_equal 0.0, Eot_utilities.to_deg(0)
  end  
     
end