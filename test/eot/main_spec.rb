# main_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

class TestEot < Minitest::Test

  describe 'Eot_initialize has set attributes ' do

    before(:each) do
      @main = Eot.new
      @main.ajd  =   2_456_885.0
      ajd = @main.ajd
      @main.set_t_ma
      # check date for this ajd when needed.
      @main.date = @main.ajd_to_datetime(ajd)
    end

    it "expected   2456885.0 from @main.jd" do
      assert_equal(2456885.0, @main.jd)
    end

    it "expected   2456885.0 from @main.ajd" do
      assert_equal(2456885.0, @main.ajd)
    end

    it "expected   '2014-08-15T12:00:00+00:00' from @main.date.to_s" do
      assert_equal("2014-08-15T12:00:00+00:00", @main.date.to_s)
    end

    it "expected   0.0 from @main.latitude" do
      assert_equal(0.0, @main.latitude)
    end

    it "expected   0.0 from @main.longitude" do
      assert_equal(0.0, @main.longitude)
    end

    it "expected   3.8508003966038915 from @main.ma" do
      assert_equal(3.8508003966038915, @main.ma)
    end

    it "expected   0.1462012320328542 from @main.t" do
      assert_equal(0.1462012320328542, @main.t)
    end

    it "expected   nil from @main.addr" do
      assert_equal(nil,  @main.addr)
    end

  end
end