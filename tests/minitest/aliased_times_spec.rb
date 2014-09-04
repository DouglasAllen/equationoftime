# aliased_times_spec.rb
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

# Eot_aliased_times = Eot.new

# describe 'Eot_aliased_times defaults' do
  
  # before(:each) do
    # ajd                    =   2456885.0  
    # Eot_aliased_times.ajd  = ajd
    ## check date for this ajd when needed.
    # Eot_aliased_times.date = Eot_aliased_times.ajd_to_datetime(ajd)      
  # end

  # it 'expected   2456885.0 for Eot_aliased_times.ajd'do
    # assert_equal 2456885.0, Eot_aliased_times.ajd
  # end

   # it 'expected  "2014-08-15T12:00:00+00:00" for Eot_aliased_times.date'.to_s do
    # assert_equal "2014-08-15T12:00:00+00:00", Eot_aliased_times.date.to_s    
  # end 

  # it 'expected   220.63461047270653 for Eot_aliased_times.ma'do
    # assert_equal 220.63461047270653, Eot_aliased_times.ma * Eot::R2D
  # end

  ## I spelled it wrong way back in the beginning.
  # it 'expected   0.1462012320328542 returned by Eot_aliased_times.time_julian_centurey() ' do
    # assert_equal 0.1462012320328542, Eot_aliased_times.time_julian_centurey()    
  # end
  
# end