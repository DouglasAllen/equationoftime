# constants_spec.rb
#
# uncomment below for minitest and comment out 'require_relative'
#gem 'minitest'
#require 'minitest/autorun'
require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

describe "Equation of Time constants." do
  
  Eot_constants = EqoT
    
  it "01 require 'eot' should find all constants." do    
    assert_equal 3600.0, Eot_constants::ASD 
    assert_equal 4.8481368110953599358991410235795e-6, Eot_constants::DTR 
    assert_equal 206264.80624709635515647335733078, Eot_constants::RTD 
    assert_equal 24.0, Eot_constants::DAY_HOURS
    assert_equal 1440.0, Eot_constants::DAY_MINUTES           
    assert_equal 86400.0, Eot_constants::DAY_SECONDS 
    assert_equal 86400.0 * 1.0e+6, Eot_constants::DAY_USECS 
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0], Eot_constants::A2000     
    assert_equal "2000-01-01", Eot_constants::D2000     
    assert_equal 2451545.0, Eot_constants::J2000 
    assert_equal DateTime.new( 2000, 01, 01, 12, 00, 00, "+00:00" ), Eot_constants::DT2000 
	end
end  