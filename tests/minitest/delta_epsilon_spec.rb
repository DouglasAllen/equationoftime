# delta_epsilon_spec.rb
#
# comment out next two lines and uncomment below for rpec tests.
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_first = Eot.new

describe 'set ajd to 2456885.0' do
  
  before(:each) do
    ajd           = 2456885.0
    Eot_first.ajd = ajd       
  end

  it 'expected   2456885.0 for Eot_first.ajd' do
    assert_equal 2456885.0, Eot_first.ajd
  end
  
  it 'expected   220.63461047270653 for Eot_first.ma' do
    assert_equal 220.63461047270653, Eot_first.ma * Eot::R2D
  end
  
  it 'expected   -0.0023318194624360874 returned by delta_epsilon()' do
    assert_equal -0.0023318194624360874, Eot_first.delta_epsilon() * Eot::R2D
  end
end