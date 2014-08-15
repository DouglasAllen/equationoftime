# vars_spec.rb
#
# uncomment below for minitest
#gem 'minitest'
#require 'minitest/autorun'
require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'


describe 'Equation of Time methods for vars.rb ' do

  # Initialize before each test to set attributes to nil
  # because getters use them.  
  
  Eot_vars = EqoT.new
  
  
  it 'is         678 returned by Eot_vars.data.size ' do
    @test_01 = EqoT.new
    assert_equal 678, @test_01.data.size
  end

  it 'is         nil returned by Eot.get_ajd() if @ajd not set?' do
    @test_02 = EqoT.new
    assert_equal nil, @test_02.get_ajd
  end  

  it 'is @date today returned by Eot.get_date date not set?' do
    @test_03 = EqoT.new
    data = Time.now.utc.to_date.to_s
    assert_equal data, @test_03.get_date
  end  

  it 'Eot.get_jd() returns nil if jd not set' do
    @test_04 = EqoT.new
    assert_equal nil, @test_04.get_jd
  end
  
  it 'Eot.get_latitude() returns nil if not set' do
    @test_05 = EqoT.new
    assert_equal nil, @test_05.get_latitude
  end
  
  it 'Eot.get_longitude() returns nil if not set' do
    @test_06 = EqoT.new
    assert_equal nil, @test_06.get_longitude
  end 
  
  it 'Eot.get_ajd() returns the same ajd as :ajd=() was set to' do
    Eot_vars.ajd=(Date.today.ajd)
    assert_equal Date.today.ajd, Eot_vars.get_ajd 
  end
  
  it 'Eot.get_date should return the same date as :date=() attribute was set to' do
    Eot_vars.date=(Date.today.to_s)
    assert_equal Date.today.to_s, Eot_vars.get_date.to_s
  end

  it 'Eot.get_jd() returns the same jd as :jd=() was set to' do
    Eot_vars.jd=(Date.today.jd)
    assert_equal Date.today.jd, Eot_vars.get_jd
  end

  it 'Eot.get_latitude() returns the same latitude as :latitude=() was set to' do
    Eot_vars.latitude=(45)
    assert_equal 45, Eot_vars.get_latitude
  end

  it 'Eot.get_longitude() returns the same longitude as :longitude=() was set to' do
    Eot_vars.longitude=(180)
    assert_equal 180, Eot_vars.get_longitude
  end  

end
