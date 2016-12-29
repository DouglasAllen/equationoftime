# time_displays_spec.rb

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

    it 'expected   2_456_885.0 for @main.jd' do
      assert_equal 2_456_885.0, @main.jd
    end

    it 'expected   2_456_885.0 for @main.ajd' do
      assert_equal 2_456_885.0, @main.ajd
    end

    it 'expected   "2014-08-15T12:00:00+00:00" from @main.date.to_s' do
      assert_equal '2014-08-15T12:00:00+00:00', @main.date.to_s
    end

    it 'expected from
       @main.show_now(@main.time_delta_total)
                    -04:31.603' do
      assert_equal '-04:31.603',
                   @main.show_now(@main.time_delta_total)
    end

    it 'expected   "2014-08-15" from @main.jd_to_date' do
      assert_equal '2014-08-15', @main.jd_to_date
    end
  end
end
