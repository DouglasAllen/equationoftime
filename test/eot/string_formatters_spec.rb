# string_formatters_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'Eot @string_formatters using ajd of 2456885.0' do

    before(:each) do
      @string_formatters = Eot.new
      @string_formatters.jd               =   2_456_885.0
      @string_formatters.ajd = @string_formatters.jd
      @string_formatters.set_t_ma

      ajd   = @string_formatters.jd
      # check date for this ajd when needed.
      @string_formatters.date = @string_formatters.ajd_to_datetime(ajd)
    end

    it 'expected   "12:00:00.000" from @string_formatters.time() ' do
      assert_equal '12:00:00.000', @string_formatters.time
      assert_equal '12:00:00.000', @string_formatters.time(nil)
      assert_equal '12:00:00.000', @string_formatters.time(0)
    end

    it 'expected   "12:00:00.000" from \
      @string_formatters.time(@string_formatters.date)? ' do
      assert_equal '12:00:00.000', \
        @string_formatters.time(@string_formatters.date)
    end

    it 'expected   "16:40:40.800" from @string_formatters.time(16.6780) ' do
      assert_equal '16:40:40.800', @string_formatters.time(16.6780)
    end

    it 'expected   "17:59:16.800" from @string_formatters.time(17.988) ' do
      assert_equal '17:59:16.800', @string_formatters.time(17.988)
    end

    it 'expected   "17:10:03.988" from @string_formatters.format_time(17, 10, 3, 988) ' do
      assert_equal '17:10:03.988', @string_formatters.format_time(17, 10, 3, 988)
    end

    it 'expected   [4, 5, 6, 988] from @string_formatters.dt_parts(DateTime.new(2001,2,3,4,5,6.988)) ' do
      assert_equal [4, 5, 6, 988], @string_formatters.dt_parts(DateTime.new(2001,2,3,4,5,6.988))
    end

    it 'expected   [17, 59, 16, 800] from @string_formatters.float_parts(17.988) ' do
      assert_equal [17, 59, 16, 800], @string_formatters.float_parts(17.988)
    end

    it 'expected   "12:00:00" from @string_formatters.day_fraction() ' do
      assert_equal "12:00:00", @string_formatters.day_fraction()
      assert_equal "12:00:00", @string_formatters.day_fraction(nil)
      assert_equal "12:00:00", @string_formatters.day_fraction(0)
    end

    it 'expected   "+00:00.000" from @string_formatters.show_minutes() ' do
      assert_equal "+00:00.000", @string_formatters.show_minutes()
      assert_equal "+00:00.000", @string_formatters.show_minutes(nil)
      assert_equal "+00:00.000", @string_formatters.show_minutes(0)
      assert_equal "+32:52.800", @string_formatters.show_minutes(32.88)
      assert_equal "-32:52.800", @string_formatters.show_minutes(-32.88)
    end

    it 'expected   "+" from @string_formatters.sign_min() ' do
      assert_equal "+", @string_formatters.sign_min()
      assert_equal "+", @string_formatters.sign_min(nil)
      assert_equal "+", @string_formatters.sign_min(0)
      assert_equal "+", @string_formatters.sign_min(32.88)
      assert_equal "-", @string_formatters.sign_min(-32.88)
    end

    it 'expected   "+/-017:59:16.800" from @string_formatters.f_string() ' do
      assert_equal "+017:59:16.800", @string_formatters.f_string('+','17','59','16','800')
      assert_equal "-017:59:16.800", @string_formatters.f_string('-','17','59','16','800')
    end

    it 'expected   "+/-068:42:32.756" from @string_formatters.deg_to_time() ' do
      assert_equal "+068:42:32.756", @string_formatters.deg_to_time(17.988)
      assert_equal "-068:42:32.756", @string_formatters.deg_to_time(-17.988)
    end

    it 'expected   "+04:54.453" from @string_formatters.show_delta_orbit ' do
      assert_equal "+04:54.453", @string_formatters.show_delta_orbit
    end

    it 'expected   "-09:24.214" from @string_formatters.show_delta_oblique ' do
      assert_equal "-09:24.214", @string_formatters.show_delta_oblique
    end

    it 'expected   "-04m, 29.76s" from @string_formatters.show_delta_total ' do
      assert_equal "-04m, 29.76s", @string_formatters.show_delta_total
    end
  end
end