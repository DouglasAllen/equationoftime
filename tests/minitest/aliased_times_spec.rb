#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_aliased_times = Eot.new

describe 'Eot_aliased_times defaults' do

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute. 
  
  before(:each) do
    @ajd           = 2456885.0
    Eot_aliased_times.ajd = @ajd
    Eot_aliased_times.ma_Sun()    
  end

  it 'expected   2456885.0 for Eot_aliased_times.ajd'do
    assert_equal 2456885.0, Eot_aliased_times.ajd
    assert_equal 220.63461047326172, Eot_aliased_times.ma
  end    

  it 'expected   [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0] returned by Eot_aliased_times.deg_to_rad() ' do
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_aliased_times.time_julian_centurey()
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_aliased_times.time_julian_centurey(nil)
    assert_equal [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], Eot_aliased_times.time_julian_centurey(0)
  end

end