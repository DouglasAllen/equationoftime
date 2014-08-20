# nutation_spec.rb
#
# uncomment below for minitest
gem 'minitest'
require 'minitest/autorun'
# require_relative '../spec_config'
lib = File.expand_path('../../../lib', __FILE__)
# puts "Loading gem from #{lib}/eot.rb"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_nutation = Eot.new

describe "Eot_nutation default" do    

  it "expected   [-0.0015940313608572006, -0.0038550497869660255] from Eot_nutation.delta_equinox() for default" do
    assert_equal [-0.0015940313608572006, -0.0038550497869660255], Eot_nutation.delta_equinox()[0..1]
    assert_equal [-0.0015940313608572006, -0.0038550497869660255], Eot_nutation.delta_equinox(nil)[0..1]
    assert_equal [-0.0015940313608572006, -0.0038550497869660255], Eot_nutation.delta_equinox(0)[0..1]
  end

end
