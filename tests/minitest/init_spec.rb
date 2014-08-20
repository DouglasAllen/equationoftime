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

describe 'Eot methods for init.rb' do   

  it 'expected   defaults returned by Eot_initialize() ?' do    
    
    date = DateTime.now.to_time.utc.to_datetime
    refute_nil Eot_initialize.data
    assert_equal date.jd.to_f, Eot_initialize.ajd
    assert_equal date.to_date, Eot_initialize.date    
    assert_equal date.jd, Eot_initialize.jd        
    assert_equal 0.0, Eot_initialize.latitude
    assert_equal 0.0, Eot_initialize.longitude
  end  

  it 'expected   0.0 returned by Eot_initialize.initialize(addr) ' do
    @test6 = Eot.new("some comma seperated address")
    assert_equal "some comma seperated address",  @test6.addr
  end    
  
end
