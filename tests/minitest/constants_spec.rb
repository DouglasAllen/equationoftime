# constants_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

describe "Equation of Time constants." do
    
  it "01 require 'eot' should find all constants." do    
    assert_equal 3600.0, EqoT::ASD 
    assert_equal 4.8481368110953599358991410235795e-6, EqoT::DTR 
    assert_equal 206264.80624709635515647335733078, EqoT::RTD 
    assert_equal 24.0, EqoT::DAY_HOURS
    assert_equal 1440.0, EqoT::DAY_MINUTES           
    assert_equal 86400.0, EqoT::DAY_SECONDS 
    assert_equal 86400.0 * 1.0e+6, EqoT::DAY_USECS 
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0], EqoT::A2000     
    assert_equal "2000-01-01", EqoT::D2000     
    assert_equal 2451545.0, EqoT::J2000 
    assert_equal DateTime.new( 2000, 01, 01, 12, 00, 00, "+00:00" ), EqoT::DT2000 
  end
end  