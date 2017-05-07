# string_formatters_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestEot < Minitest::Test
  describe 'Eot @main using ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   "12:00:00.000" from @main.time()' do
      assert_equal '12:00:00.000', @main.time
      assert_equal '12:00:00.000', @main.time(nil)
      assert_equal '12:00:00.000', @main.time(0)
    end

    it 'expected   "12:00:00.000" from \
      @main.time(@main.date)? ' do
      assert_equal '12:00:00.000', \
                   @main.time(@main.date)
    end

    it 'expected   "16:40:40.800" from @main.time(16.6780)' do
      assert_equal '16:40:40.800', @main.time(16.6780)
    end

    it 'expected   "17:59:16.800" from @main.time(17.988)' do
      assert_equal '17:59:16.800', @main.time(17.988)
    end
  end
end

#
class TestEot < Minitest::Test
  describe 'Eot @main using ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.format_time(17, 10, 3, 988)
                    17:10:03.988' do
      assert_equal '17:10:03.988', @main.format_time(17, 10, 3, 988)
    end

    it 'expected from @main.dt_parts(DateTime.new(
        2001, 2, 3, 4, 5, 6.988))
                   [4, 5, 6, 988]' do
      assert_equal [4, 5, 6, 988],
                   @main.dt_parts(DateTime.new(
                                    2001, 2, 3, 4, 5, 6.988
                   ))
    end

    it 'expected from @main.float_parts(17.988)
                   [17, 59, 16, 800]' do
      assert_equal [17, 59, 16, 800], @main.float_parts(17.988)
    end
  end
end

#
class TestEot < Minitest::Test
  describe 'Eot @main using ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected   "12:00:00" from @main.day_fraction()' do
      assert_equal '12:00:00', @main.day_fraction
      assert_equal '12:00:00', @main.day_fraction(nil)
      assert_equal '12:00:00', @main.day_fraction(0)
    end

    it 'expected   "+00:00.000" from @main.show_minutes()' do
      assert_equal '+00:00.000', @main.show_minutes
      assert_equal '+00:00.000', @main.show_minutes(nil)
      assert_equal '+00:00.000', @main.show_minutes(0)
      assert_equal '+32:52.800', @main.show_minutes(32.88)
      assert_equal '-32:52.800', @main.show_minutes(-32.88)
    end
  end
end

#
class TestEot < Minitest::Test
  describe 'Eot @main using ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected  +/-017:59:16.800 from @main.f_string()' do
      assert_equal '+017:59:16.800',
                   @main.f_string('+', '17', '59', '16', '800')
      assert_equal '-017:59:16.800',
                   @main.f_string('-', '17', '59', '16', '800')
    end

    it 'expected   "+" from @main.sign_min() ' do
      assert_equal '+', @main.sign_min
      assert_equal '+', @main.sign_min(nil)
      assert_equal '+', @main.sign_min(0)
      assert_equal '+', @main.sign_min(32.88)
      assert_equal '-', @main.sign_min(-32.88)
    end
  end
end

#
class TestEot < Minitest::Test
  describe 'Eot @main using ajd of 2_456_885.0' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected  +/-068:42:32.756 from @main.deg_to_time()' do
      assert_equal '+068:42:32.756', @main.deg_to_time(17.988)
      assert_equal '-068:42:32.756', @main.deg_to_time(-17.988)
    end

    it 'expected   "+04:54.453" from @main.show_delta_orbit' do
      assert_equal '+04:54.453', @main.show_delta_orbit
    end

    it 'expected   "-09:26.057" from @main.show_delta_oblique' do
      assert_equal '-09:26.057', @main.show_delta_oblique
    end

    it 'expected   "-04m, 31.60s" from @main.show_delta_total' do
      assert_equal '-04m, 31.60s', @main.show_delta_total
    end
  end
end
