# trigonometric__spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'Tests ajd of 2456885.0 ' do

    before(:each) do
      @trigonometric = Eot.new
      @trigonometric.ajd  =   2_456_885.0
      ajd = @trigonometric.ajd
      @trigonometric.set_t_ma
      # check date for this ajd when needed.
      @trigonometric.date = @trigonometric.ajd_to_datetime(ajd)
    end

    it 'expected   2456885.0 for @trigonometric.ajd'do
      assert_equal(2_456_885.0, @trigonometric.ajd)
    end

    it 'expected   "2014-08-15T12:00:00+00:00" for @trigonometric.date'.to_s do
      assert_equal('2014-08-15T12:00:00+00:00', @trigonometric.date.to_s)
    end


    it 'expected   -0.7943361570447028 from @trigonometric.cosine_apparent_longitude()? ' do
      assert_equal(-0.7943361570447028, @trigonometric.cosine_apparent_longitude)
    end

    it 'expected   -0.7943772759574919 from  @trigonometric.cosine_true_longitude()? ' do
      assert_equal(-0.7943772759574919, @trigonometric.cosine_true_longitude)
    end

    it 'expected   0.9175115346746185 from  @trigonometric.cosine_true_obliquity()? ' do
      assert_equal(0.9175115346746185, @trigonometric.cosine_true_obliquity)
    end

    it 'expected   0.6074784519729512 from  @trigonometric.sine_apparent_longitude()? ' do
      assert_equal(0.6074784519729512, @trigonometric.sine_apparent_longitude)
    end

    it 'expected   0.6074246812917259 from  @trigonometric.sine_true_longitude()? ' do
      assert_equal(0.6074246812917259, @trigonometric.sine_true_longitude)
    end

  end

  describe 'Tests ajd of 2455055.5 ' do

    before(:each) do
      @trigonometric = Eot.new
      @trigonometric.ajd             = 2_455_055.0
      ajd = @trigonometric.ajd
      @trigonometric.set_t_ma
      # check date for this ajd when needed.
      @trigonometric.date = @trigonometric.ajd_to_datetime(ajd)
    end

    it 'expected   2455055.0, from @trigonometric.' do
      assert_equal(2_455_055.0, @trigonometric.ajd)
    end

    it 'expected   "2009-08-11T12:00:00+00:00", from @trigonometric.date.to_s' do
      assert_equal('2009-08-11T12:00:00+00:00', @trigonometric.date.to_s)
    end

    it 'expected   -0.7541886969975007 from @trigonometric.cosine_apparent_longitude()? ' do
      assert_equal(-0.7541886969975007, @trigonometric.cosine_apparent_longitude)
    end

    it 'expected   -0.7542060769936684 from @trigonometric.cosine_true_longitude()? ' do
      assert_equal(-0.7542060769936684, @trigonometric.cosine_true_longitude)
    end

    it 'expected   0.9174818088136396 from @trigonometric.cosine_true_obliquity()? ' do
      assert_equal(0.9174818088136396, @trigonometric.cosine_true_obliquity)
    end

    it 'expected   0.6566577566139093 from @trigonometric.sine_apparent_longitude()? ' do
      assert_equal(0.6566577566139093, @trigonometric.sine_apparent_longitude)
    end

    it 'expected   0.6566377946979757 from @trigonometric.sine_true_longitude()? ' do
      assert_equal(0.6566377946979757, @trigonometric.sine_true_longitude)
    end

  end
end