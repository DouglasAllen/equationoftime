# nutation_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_nutation = Eot.new

describe "Eot_nutation default" do    

  before(:each) do
    ajd           = 2456885.0
    Eot_nutation.ajd = ajd
    Eot_nutation.date =  Eot_nutation.ajd_to_datetime(ajd)
    Eot_nutation.time_julian_century()    
    Eot_nutation.ma_Sun()    
  end 

  it 'expected   2456885.0 for Eot_nutation.ajd'do
    assert_equal 2456885.0, Eot_nutation.ajd    
  end  
  
  it 'expected   "2014-08-15T12:00:00+00:00" for Eot_nutation.date.to_s'do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_nutation.date.to_s    
  end 
  #~ assert_equal 220.63461047326172, Eot_nutation.ma
  
  it "expected  [-0.0023092285713720855, 0.0021980854910821058] from Eot_nutation.delta_equinox() for default" do
    assert_equal [-0.0023092285713720855, 0.0021980854910821058], Eot_nutation.delta_equinox()[0..1]    
  end

end
