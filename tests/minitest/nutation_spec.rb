# nutation_spec.rb
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

Eot_nutation = Eot.new

describe 'Eot_nutation using ajd of 2456885.0' do    

  before(:each) do
    ajd           = 2456885.0
    Eot_nutation.ajd = ajd
    Eot_nutation.date =  Eot_nutation.ajd_to_datetime(ajd)   
  end 

  it 'expected   2456885.0 from Eot_nutation.ajd' do
    assert_equal 2456885.0, Eot_nutation.ajd    
  end  
  
  it 'expected   "2014-08-15T12:00:00+00:00" from Eot_nutation.date.to_s' do
    assert_equal "2014-08-15T12:00:00+00:00", Eot_nutation.date.to_s    
  end

  it 'expected   220.63461047270653 from Eot_nutation.ma' do 
    assert_equal 220.63461047270653, Eot_nutation.ma * Eot::R2D
  end
  
  it 'expected   [-4.069792718159396e-05, 3.75123821843003e-05, 3.8508003966038915, -2.7528817371494685] from Eot_nutation.delta_equinox()' do
    assert_equal [-4.069792718159396e-05, 3.75123821843003e-05, 3.8508003966038915, -2.7528817371494685], Eot_nutation.delta_equinox()    
  end

end
