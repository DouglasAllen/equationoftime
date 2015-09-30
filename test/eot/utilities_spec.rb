# utilities_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

utilities = Eot.new

describe 'tests ajd of 2456885.0' do

  before(:each) do
    utilities.ajd  = 2_456_885.0
    ajd = utilities.ajd
    utilities.set_t_ma
    # check date for this ajd when needed.
    utilities.date = utilities.ajd_to_datetime(ajd)
  end

  it 'expected   2456885.0 for utilities.ajd'do
    assert_equal 2_456_885.0, utilities.ajd
  end

  it 'expected   3.8508003966038915 for utilities.ma'do
    assert_equal 3.8508003966038915, utilities.ma
  end

  it 'expected   0.0 returned by utilities.truncate() ' do
    assert_equal 0.0, utilities.truncate
    assert_equal 0.0, utilities.truncate(nil)
    assert_equal 0.0, utilities.truncate(0)
  end

end
