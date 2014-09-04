# aliased_utilities_spec.rb
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

Eot_aliased_utilities = Eot.new

describe 'tests ajd of 2456885.0' do

  
  before(:each) do
    ajd                    =   2456885.0  
    Eot_aliased_utilities.ajd  = ajd
    # check date for this ajd when needed.    
    Eot_aliased_utilities.date = Eot_aliased_utilities.ajd_to_datetime(ajd)  
  end

  it 'expected   2456885.0 for Eot_aliased_utilities.ajd'do
    assert_equal 2456885.0, Eot_aliased_utilities.ajd    
  end 

  it 'expected   220.63461047270653 for Eot_aliased_utilities.ma'do
    assert_equal 220.63461047270653, Eot_aliased_utilities.ma * Eot::R2D
  end

  # it 'expected   0.0 returned by Eot_aliased_utilities.degrees_to_radians() ' do
    # assert_equal 0.0, Eot_aliased_utilities.degrees_to_radians()
    # assert_equal 0.0, Eot_aliased_utilities.degrees_to_radians(nil)
    # assert_equal 0.0, Eot_aliased_utilities.degrees_to_radians(0)
  # end
  
  # it 'expected   0.0 returned by Eot_aliased_utilities.radians_to_degrees() ' do
    # assert_equal 0.0, Eot_aliased_utilities.radians_to_degrees()
    # assert_equal 0.0, Eot_aliased_utilities.radians_to_degrees(nil)
    # assert_equal 0.0, Eot_aliased_utilities.radians_to_degrees(0)
  # end  

  it 'expected   0.0 returned by Eot_aliased_utilities.truncate() ' do
    assert_equal 0.0, Eot_aliased_utilities.truncate()
    assert_equal 0.0, Eot_aliased_utilities.truncate(nil)
    assert_equal 0.0, Eot_aliased_utilities.truncate(0)
  end    

end
