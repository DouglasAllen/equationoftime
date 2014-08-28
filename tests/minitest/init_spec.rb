# init_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_initialize = Eot.new 

describe 'Eot_initialize using today matchers' do

  before(:each) do
    @date = Eot_initialize.date
    @df = @date.day_fraction.to_f
    @jd = @date.jd.to_f
    @ajd = @date.ajd.to_f
    @ma = Eot_initialize.ma_Sun()
    @ta = Eot_initialize.time_julian_century()
  end

  it 'expected   defaults returned by Eot_initialize() ?' do    
    refute_nil Eot_initialize.data
    assert_equal @ajd + 0.5, Eot_initialize.ajd + @df
    assert_equal @date.to_s, Eot_initialize.date.to_s    
    assert_equal @jd, Eot_initialize.jd        
    assert_equal 0.0, Eot_initialize.latitude
    assert_equal 0.0, Eot_initialize.longitude
    assert_equal @ma, Eot_initialize.ma
    assert_equal @ta, Eot_initialize.ta
  end  

  it 'expected   0.0 returned by Eot_initialize.initialize(addr) ' do
    @test6 = Eot.new("some comma separated address")
    assert_equal "some comma separated address",  @test6.addr
  end    
  
end
