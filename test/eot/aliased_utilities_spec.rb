
# aliased_utilities_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_utilities = Eot.new

describe 'tests ajd of 2456885.0' do
  before(:each) do
    aliased_utilities.jd = 2_456_885.0
    ajd = aliased_utilities.ajd
    aliased_utilities.ma_ta_set
    # check date for this ajd when needed.
    aliased_utilities.date = aliased_utilities.ajd_to_datetime(ajd)
  end

  it 'expected from aliased_utilities.ajd \
                 2_456_885.0 ' do
    assert_equal 2_456_885.0,
                 aliased_utilities.ajd
  end

  it 'expected from aliased_utilities.ma.round(10) \
                 3.8508003966 ' do
    assert_equal 3.8508003966,
                 aliased_utilities.ma.round(10)
  end

  it 'expected from aliased_utilities.truncate \
                 0.0 ' do
    assert_equal 0.0,
                 aliased_utilities.truncate
    assert_equal 0.0,
                 aliased_utilities.truncate(nil)
    assert_equal 0.0,
                 aliased_utilities.truncate(0)
  end
end
