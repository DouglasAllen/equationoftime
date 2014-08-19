# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'

lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_first = EqoT.new

describe 'Eot_first default, nil, 0' do
  it 'expected   -0.0015940313608572006 returned by delta_epsilon()' do
    assert_equal -0.0015940313608572006, Eot_first.delta_epsilon()
    assert_equal -0.0015940313608572006, Eot_first.delta_epsilon(nil)
    assert_equal -0.0015940313608572006, Eot_first.delta_epsilon(0)
  end
end