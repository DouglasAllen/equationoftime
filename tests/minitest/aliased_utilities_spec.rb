# aliased_utilities_spec.rb
#
# comment out next two lines and uncomment below for rpec tests.
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

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

  it 'expected   3.8508003966038915 for Eot_aliased_utilities.ma'do
    assert_equal 3.8508003966038915, Eot_aliased_utilities.ma
  end

  it 'expected   0.0 returned by Eot_aliased_utilities.truncate() ' do
    assert_equal 0.0, Eot_aliased_utilities.truncate()
    assert_equal 0.0, Eot_aliased_utilities.truncate(nil)
    assert_equal 0.0, Eot_aliased_utilities.truncate(0)
  end    

end
