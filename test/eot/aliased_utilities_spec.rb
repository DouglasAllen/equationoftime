
# aliased_utilities_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_utilities = Eot.new

describe 'tests jd of 2_456_885.0' do
  before(:each) do
    aliased_utilities.jd = 2_456_885.0
    aliased_utilities.ma_ta_set
  end

  it 'expected from aliased_utilities.jd \
                 2_456_885.0 ' do
    assert_equal 2_456_885.0,
                 aliased_utilities.jd
  end

  it 'expected from aliased_utilities.ma \
                 3.850800396604 ' do
    assert_equal 3.850800396604,
                 aliased_utilities.ma
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
