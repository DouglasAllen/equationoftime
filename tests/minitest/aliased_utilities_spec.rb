# aliased_utilities_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_aliased_utilities = Eot.new

describe 'Eot_aliased_utilities defaults' do

  # set ta attribute first as it gets tested anyway but a lot of methods
  # now rely on @ta so we don't have to keep calling it unless we change
  # @ajd attribute
  # The @ta attribute gets set along the way.  
  
  before(:each) do
    ajd                    =   2456885.0  
    Eot_aliased_utilities.ajd  = ajd
    # check date for this ajd when needed.
    
    Eot_aliased_utilities.date = Eot_aliased_utilities.ajd_to_datetime(ajd)
    
    # set ma attribute    
    Eot_aliased_utilities.ma_Sun()    
  end

  it 'expected   2456885.0 for Eot_aliased_utilities.ajd'do
    assert_equal 2456885.0, Eot_aliased_utilities.ajd    
  end 

  it 'expected   220.63461047270602 for Eot_aliased_utilities.ma'do
    assert_equal 220.63461047270602, Eot_aliased_utilities.ma
  end

  it 'expected   0.0 returned by Eot_aliased_utilities.degrees_to_radians() ' do
    assert_equal 0.0, Eot_aliased_utilities.degrees_to_radians()
    assert_equal 0.0, Eot_aliased_utilities.degrees_to_radians(nil)
    assert_equal 0.0, Eot_aliased_utilities.degrees_to_radians(0)
  end
  
  it 'expected   0.0 returned by Eot_aliased_utilities.radians_to_degrees() ' do
    assert_equal 0.0, Eot_aliased_utilities.radians_to_degrees()
    assert_equal 0.0, Eot_aliased_utilities.radians_to_degrees(nil)
    assert_equal 0.0, Eot_aliased_utilities.radians_to_degrees(0)
  end  

  it 'expected   0.0 returned by Eot_aliased_utilities.truncate() ' do
    assert_equal 0.0, Eot_aliased_utilities.truncate()
    assert_equal 0.0, Eot_aliased_utilities.truncate(nil)
    assert_equal 0.0, Eot_aliased_utilities.truncate(0)
  end    

end
