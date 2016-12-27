# main_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'
#
class TestMain < Minitest::Test
  describe 'Eot_initialize has set attributes ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
    end

    it 'expected   2456885.0 from @main.jd' do
      assert_equal(2_456_885.0, @main.jd)
    end

    it 'expected   2456885.0 from @main.ajd' do
      assert_equal(2_456_885.0, @main.ajd)
    end

    it "expected   '2014-08-15T12:00:00+00:00' from @main.date.to_s" do
      assert_equal('2014-08-15T12:00:00+00:00', @main.date.to_s)
    end

    it 'expected   0.0 from @main.latitude' do
      assert_equal(0.0, @main.latitude)
    end

    it 'expected   0.0 from @main.longitude' do
      assert_equal(0.0, @main.longitude)
    end
  end
end

#
class TestMainSetter < Minitest::Test
  describe 'Eot_initialize has set attributes ' do
    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.set_t_ma
    end

    it 'expected   3.850800396604 from @main.ma' do
      assert_equal(3.850800396604, @main.ma.round(12))
    end

    it 'expected   0.146201232033 from @main.t' do
      assert_equal(0.146201232033, @main.t.round(12))
    end
  end
end
