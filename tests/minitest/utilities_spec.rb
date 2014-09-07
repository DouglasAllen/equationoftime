# utilities_spec.rb
#
# comment out next two lines and uncomment below for rpec tests.
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_utilities = Eot.new

describe 'tests ajd of 2456885.0' do
  
  before(:each) do
    ajd                    =   2456885.0  
    Eot_utilities.ajd  = ajd
    # check date for this ajd when needed.
    Eot_utilities.date = Eot_utilities.ajd_to_datetime(ajd)    
  end

  it 'expected   2456885.0 for Eot_utilities.ajd'do
    assert_equal 2456885.0, Eot_utilities.ajd
  end

  it 'expected   220.63461047270653 for Eot_utilities.ma'do
    assert_equal 220.63461047270653, Eot_utilities.ma * Eot::R2D
  end

  it 'expected   0.0 returned by Eot_utilities.mod_360() ' do
    assert_equal 0.0, Eot_utilities.mod_360()
    assert_equal 0.0, Eot_utilities.mod_360(nil)
    assert_equal 0.0, Eot_utilities.mod_360(0)
  end  

end