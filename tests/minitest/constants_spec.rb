# constants_spec.rb
#
# comment out next two lines and uncomment below for rpec tests. 
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'

begin
  require 'eot'
rescue
  lib = File.expand_path('../../../lib', __FILE__)
  # puts "Loading gem from #{lib}/eot.rb"
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
end

describe "Equation of Time constants." do
    
  it "01 require 'eot' should find all constants." do    
    assert_equal 24.0, Eot::DAY_HOURS
    assert_equal 1440.0, Eot::DAY_MINUTES           
    assert_equal 86400.0, Eot::DAY_SECONDS 
    assert_equal 86400.0 * 1.0e+6, Eot::DAY_USECS
    assert_equal 57.29577951308232, Eot::R2D
  end
end  