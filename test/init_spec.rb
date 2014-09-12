# init_spec.rb
#

# require_relative 'spec_config'


lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'


describe 'Eot_initialize using today matchers' do

  it 'expected DateTime.now.to_time.utc.to_datetime.jd.to_f' do    
    @test1 = Eot.new()
    assert_equal DateTime.now.to_time.utc.to_datetime.jd.to_f, @test1.ajd
  end
  
  it 'expected   0.0' do   
    @test2 = Eot.new()
    assert_equal 51.4769388, @test2.latitude
   end

  it 'expected   0.0' do
    @test3 = Eot.new()  
    assert_equal -4.2e-05, @test3.longitude
  end

  it 'expected   @test4.ma_Sun()' do
    @test4 = Eot.new()
    assert_equal @test4.ma_Sun(), @test4.ma
  end

  it 'expected   (@test5.ajd - Eot::DJ00) / Eot::DJC' do
    @test5 = Eot.new()    
    assert_equal (@test5.ajd - Eot::DJ00) / Eot::DJC, @test5.ta
  end  

  it 'expected   0.0 returned by Eot_initialize.new() ' do
    @test6 = Eot.new()
    assert_equal "Blackheath Ave, London SE10 8XJ, UK",  @test6.addr
  end    
  
end
