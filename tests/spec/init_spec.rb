# init_spec.rb
#
# uncomment below for minitest
#gem 'minitest'
#require 'minitest/autorun'
require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_initialize = EqoT.new 

describe 'Equation of Time methods for init.rb' do   

  it 'is         nil returned by Eot_initialize() ?' do    
    assert_equal nil, Eot_initialize.ajd
    data = Time.now.utc.to_date.to_s
    refute_nil Eot_initialize.data
    assert_equal data, Eot_initialize.date    
    assert_equal nil, Eot_initialize.jd        
    assert_equal nil, Eot_initialize.latitude
    assert_equal nil, Eot_initialize.longitude
  end  
  
  it 'is         50.0 returned by Eot_init.initialize(latitude, nil) ' do
    @test3 = EqoT.new(50.0, nil)
    assert_equal 50.0, @test3.latitude    
  end 

  it 'is         75.0 returned by Eot_init.initialize(nil, longitude) ' do
    @test4 = EqoT.new(nil, 75.0)
    assert_equal 75.0, @test4.longitude
  end 

  it 'is         50.0 and 75.0 returned by Eot_init.initialize(latitude, longitude) ' do
    @test5 = EqoT.new(50.0, 75.0)
    assert_equal 50.0, @test5.latitude
    assert_equal 75.0, @test5.longitude
  end 

  it 'is         50.0, 75.0, and "2000-01-01" returned by Eot_init.initialize(latitude, longitude, date) ' do
    @test6 = EqoT.new(50.0, 75.0, '2000-01-01')
    assert_equal 50.0, @test6.latitude
    assert_equal 75.0, @test6.longitude
    assert_equal "2000-01-01", @test6.date
  end    
  
end
