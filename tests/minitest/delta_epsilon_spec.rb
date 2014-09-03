# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'

lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_first = Eot.new

describe 'Eot_first default, nil, 0' do

  # set ma attribute first as it gets tested anyway but a lot of methods
  # now rely on @ma so we don't have to keep calling it unless we change 
  # @ajd attribute. @ta gets set along the way too. 
  
  before(:each) do
    ajd           = 2456885.0
    Eot_first.ajd = ajd
    Eot_first.ma_Sun()    
  end

  it 'expected   2456885.0 for Eot_first.ajd' do
    assert_equal 2456885.0, Eot_first.ajd
  end
  
  it 'expected   220.63461047270602 for Eot_first.ma' do
    assert_equal 220.63461047270602, Eot_first.ma
  end
  
  it 'expected   -0.002309227633688354 returned by delta_epsilon()' do
    assert_equal -0.002309227633688354, Eot_first.delta_epsilon()
  end
end