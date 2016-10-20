# aliased_aliase_time_displays_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliase_time_displays = Eot.new

describe 'Eot aliase_time_displays using ajd of 2456885.0' do
  before(:each) do
    aliase_time_displays.ajd = 2_456_885.0
    ajd = aliase_time_displays.ajd
    aliase_time_displays.ma_ta_set
    # check date for this ajd when needed.
    aliase_time_displays.date = aliase_time_displays.ajd_to_datetime(ajd)
  end

  it 'expected from aliase_time_displays.display_time_string(aliase_time_displays.date) \
                  12:00:00.000 ' do
    assert_equal '12:00:00.000',
                 aliase_time_displays.display_time_string(aliase_time_displays.date)
  end
end

describe 'Eot aliase_time_displays using ajd of 2_455_055.5' do
  before(:each) do
    aliase_time_displays.ajd = 2_455_055.5
    ajd = aliase_time_displays.ajd
    aliase_time_displays.ma_ta_set
    # check date for this ajd when needed.
    aliase_time_displays.date = aliase_time_displays.ajd_to_datetime(ajd)
  end

  it 'expected from aliase_time_displays.display_time_string(aliase_time_displays.date) \
                  00:00:00.000 ' do
    assert_equal '00:00:00.000',
                 aliase_time_displays.display_time_string(aliase_time_displays.date)
  end
end