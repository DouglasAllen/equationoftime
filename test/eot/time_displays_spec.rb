# time_displays_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'Eot @time_displays using ajd of 2456885.0' do

    before(:each) do
      @time_displays = Eot.new
      @time_displays.jd               =   2_456_885.0
      @time_displays.ajd = @time_displays.jd
      @time_displays.set_t_ma

      ajd   = @time_displays.jd
      # check date for this ajd when needed.
      @time_displays.date = @time_displays.ajd_to_datetime(ajd)
    end

    it 'expected   2456885.0 for @time_displays.ajd'do
      assert_equal 2_456_885.0, @time_displays.ajd
    end

    it 'expected   "2014-08-15T12:00:00+00:00", from @time_displays.date.to_s' do
      assert_equal '2014-08-15T12:00:00+00:00', @time_displays.date.to_s
    end


    it 'expected   "-04:29.761" from @time_displays.show_now(@time_displays.time_delta_total) ' do
      assert_equal "-04:29.761", @time_displays.show_now(@time_displays.time_delta_total)
    end

    it 'expected   "2014-08-15" from @time_displays.jd_to_date() ' do
      # Note: set a new @jd if you want a new conversion.
      assert_equal "2014-08-15", @time_displays.jd_to_date
    end

  end
end
