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

  # set ta attribute first as it gets tested anyway but a lot of methods
  # now rely on @ta so we don't have to keep calling it unless we change
  # The same goes for @ma.  
  # @ajd attribute
  before(:each) do
    ajd                    =   2456885.0  
    Eot_aliased_times.ajd  = ajd
    # check date for this ajd when needed.
    Eot_aliased_times.date = Eot_aliased_times.ajd_to_datetime(ajd)
    # set ta attribute
    @ta = Eot_aliased_times.ta 
    # set ma attribute    
    # Eot_aliased_times.ma_Sun()    
  end

  it 'expected   2456885.0 for Eot_aliased_times.ajd'do
    assert_equal 2456885.0, Eot_aliased_times.ajd
  end

   it 'expected    "2014-08-15T12:00:00+00:00" for Eot_aliased_times.date'.to_s do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_aliased_times.date.to_s    
  end 

  it 'expected   220.63461047326172 for Eot_aliased_times.ma'do
    assert_equal 220.63461047326172, Eot_aliased_times.ma
  end

  it 'expected   @ta returned by Eot_aliased_times.deg_to_rad() ' do
    assert_equal @ta, Eot_aliased_times.time_julian_centurey()
    
  end

end