# utilities_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

utilities = Eot.new
DT2000 = Eot::DT2000

describe 'tests ajd of 2456885.0' do
  before(:each) do
    utilities.ajd = 2_456_885.0
    ajd = utilities.ajd
    utilities.ma_ta_set
    # check date for this ajd when needed.
    utilities.date = utilities.ajd_to_datetime(ajd)    
  end

  it 'expected from utilities.check_t_zero \
                 0.0 ' do
    assert_equal 0.0,
                 utilities.check_t_zero
    assert_equal 0.0,
                 utilities.check_t_zero(nil)
    assert_equal 0.0,
                 utilities.check_t_zero(0)
  end

  it 'expected from utilities.mod_360 \
                 0.0 ' do
    assert_equal 0.0,
                 utilities.mod_360
    assert_equal 0.0,
                 utilities.mod_360(nil)
    assert_equal 0.0,
                 utilities.mod_360(0)
  end

  it 'expected from utilities.f_string(' + ', 145, 55, 3, 222) \
                  +145:55:03.222 ' do
    assert_equal '+145:55:03.222',
                 utilities.f_string('+', 145, 55, 3, 222)
  end
end
