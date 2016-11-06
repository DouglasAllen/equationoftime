
# delta_displays_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

delta_displays = Eot.new

describe 'Eot delta_displays using ajd of 2_455_055.5' do
  before(:each) do
    delta_displays.ajd = 2_456_885.0
    ajd = delta_displays.ajd
    delta_displays.ma_ta_set
    # check date for this ajd when needed.
    delta_displays.date = delta_displays.ajd_to_datetime(ajd)
  end

  it 'expected from delta_displays.string_delta_epsilon \
                  -8.395" ' do
    assert_equal '-8.395"',
                 delta_displays.string_delta_epsilon
  end

  it 'expected from delta_displays.string_delta_psi \
                  7.737" ' do
    assert_equal '7.737"',
                 delta_displays.string_delta_psi
  end
end

describe 'Eot delta_displays using ajd of 2_455_055.5' do
  before(:each) do
    delta_displays.ajd = 2_455_055.5
    ajd = delta_displays.ajd
    delta_displays.ma_ta_set
    # check date for this ajd when needed.
    delta_displays.date = delta_displays.ajd_to_datetime(ajd)
  end

  it 'expected from delta_displays.string_delta_epsilon \
                  4.659" ' do
    assert_equal '4.659"',
                 delta_displays.string_delta_epsilon
  end

  it 'expected from delta_displays.string_delta_psi \
                  15.723"' do
    assert_equal '15.723"',
                 delta_displays.string_delta_psi
  end
end
