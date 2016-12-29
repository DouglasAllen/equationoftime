# trigonometric__spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
#
class TestMain < Minitest::Test
  describe 'Tests jd of 2_456_885.0 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.jd
                   2_456_885.0' do
      assert_equal(2_456_885.0,
                   @main.jd)
    end

    it 'expected from @main.ajd
                   2_456_885.0' do
      assert_equal(2_456_885.0,
                   @main.ajd)
    end

    it 'expected from @main.date.to_s
                   "2014-08-15T12:00:00+00:00"' do
      assert_equal('2014-08-15T12:00:00+00:00',
                   @main.date.to_s)
    end
  end
end

#
class TestTrigAL < Minitest::Test
  describe 'Tests jd of 2_456_885.0 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end


    it 'expected from @main.cosine_apparent_longitude.round(12)
                   -0.794336157045' do
      assert_equal(-0.794336157045,
                   @main.cosine_apparent_longitude.round(12))
    end

    it 'expected from  @main.sine_apparent_longitude.round(12)
                   0.607478451973' do
      assert_equal(0.607478451973,
                   @main.sine_apparent_longitude.round(12))
    end
  end
end

#
class TestTrigTL < Minitest::Test
  describe 'Tests jd of 2_456_885.0 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.cosine_true_longitude.round(12)
                   -0.794377275957' do
      assert_equal(-0.794377275957,
                   @main.cosine_true_longitude.round(12))
    end

    it 'expected from  @main.sine_true_longitude.round(12)
                   0.607424681292' do
      assert_equal(0.607424681292,
                   @main.sine_true_longitude.round(12))
    end
  end
end

#
class TestTrigMO < Minitest::Test
  describe 'Tests jd of 2_456_885.0 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_456_885.0
      @main.ajd = 2_456_885.0
      @main.date = DateTime.jd(2_456_885.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.cosine_mean_obliquity.round(12)
                   0.917482143427' do
      assert_equal(0.917482143427,
                   @main.cosine_mean_obliquity.round(12))
    end

    it 'expected from @main.sine_mean_obliquity.round(12)
                   0.397776968279' do
      assert_equal(0.397776968279,
                   @main.sine_mean_obliquity.round(12))
    end
  end
end

#
class TestMain < Minitest::Test
  describe 'Tests jd of 2_455_055.5 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.jd
                   2_455_055.0' do
      assert_equal(2_455_055.0,
                   @main.jd)
    end

    it 'expected from @main.ajd
                   2_455_055.0' do
      assert_equal(2_455_055.0,
                   @main.ajd)
    end

    it 'expected from @main.date.to_s
                   "2009-08-11T12:00:00+00:00"' do
      assert_equal('2009-08-11T12:00:00+00:00',
                   @main.date.to_s)
    end
  end
end

#
class TestTrigAL < Minitest::Test
  describe 'Tests ajd of 2_455_055.5 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.cosine_apparent_longitude.round(12)
                   -0.754188696997' do
      assert_equal(-0.754188696997,
                   @main.cosine_apparent_longitude.round(12))
    end

    it 'expected from @main.sine_apparent_longitude.round(12)
                   0.656657756614' do
      assert_equal(0.656657756614,
                   @main.sine_apparent_longitude.round(12))
    end
  end
end

#
class TestTrigTL < Minitest::Test
  describe 'Tests ajd of 2_455_055.5 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.cosine_true_longitude.round(12)
                   -0.754206076994' do
      assert_equal(-0.754206076994,
                   @main.cosine_true_longitude.round(12))
    end

    it 'expected from @main.sine_true_longitude.round(12)
                   0.656637794698' do
      assert_equal(0.656637794698,
                   @main.sine_true_longitude.round(12))
    end
  end
end

#
class TestTrigMO < Minitest::Test
  describe 'Tests ajd of 2_455_055.5 ' do

    before(:each) do
      @main = Main.new
      @main.jd = 2_455_055.0
      @main.ajd = 2_455_055.0
      @main.date = DateTime.jd(2_455_055.0 + 0.5)
      @main.set_t_ma
    end

    it 'expected from @main.cosine_mean_obliquity.round(12)
                   0.917482143303' do
      assert_equal(0.917482143303,
                   @main.cosine_mean_obliquity.round(12))
    end

    it 'expected from @main.sine_mean_obliquity.round(12)
                   0.397776968565' do
      assert_equal(0.397776968565,
                   @main.sine_mean_obliquity.round(12))
    end
  end
end
