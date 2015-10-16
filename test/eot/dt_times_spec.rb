# dt_times_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'tests jd of 2456885.0 ' do

    before(:each) do
      @dt_times = Eot.new
      # set our current object attributes
      @dt_times.jd                =   2_456_885.0
      @dt_times.ajd = @dt_times.jd
      @dt_times.set_t_ma

      ajd = @dt_times.jd
      # check date for this ajd when needed.
      @dt_times.date = @dt_times.ajd_to_datetime(ajd)
    end

    it 'expected   "2014-08-15T12:00:00+00:00" for @dt_times.date'.to_s do
      assert_equal '2014-08-15T12:00:00+00:00', @dt_times.date.to_s
    end

    it 'expected   "2014-08-15T12:00:00+00:00" from \
      @dt_times.ajd_to_datetime(@dt_times.ajd).to_s ' do
      assert_equal '2014-08-15T12:00:00+00:00',\
        @dt_times.ajd_to_datetime(@dt_times.ajd).to_s
    end

    it 'expected   "2014-08-15T19:14:16+00:00" from \
      @dt_times.astronomical_twilight_end_dt.to_s ' do
      assert_equal("2014-08-15T19:14:16+00:00", \
          @dt_times.astronomical_twilight_end_dt.to_s)
    end

    it 'expected   "2014-08-15T04:45:43+00:00" from \
      @dt_times.astronomical_twilight_start_dt.to_s ' do
      assert_equal("2014-08-15T04:45:43+00:00", \
          @dt_times.astronomical_twilight_start_dt.to_s)
    end 

    it 'expected   "2014-08-15T18:24:44+00:00" from \
      @dt_times.civil_twilight_end_dt.to_s ' do
      assert_equal("2014-08-15T18:24:44+00:00", \
          @dt_times.civil_twilight_end_dt.to_s)
    end

    it 'expected   "2014-08-15T05:35:15+00:00" from \
      @dt_times.civil_twilight_start_dt.to_s ' do
      assert_equal("2014-08-15T05:35:15+00:00", \
          @dt_times.civil_twilight_start_dt.to_s)
    end

    it 'expected   "2014-08-15T12:04:29+00:00" \
      from @dt_times.local_noon_dt().to_s ' do
      assert_equal '2014-08-15T12:04:29+00:00', @dt_times.local_noon_dt.to_s
    end

    it 'expected   "2014-08-15T18:49:29+00:00" from \
     @dt_times.nautical_twilight_end_dt.to_s ' do
      assert_equal("2014-08-15T18:49:29+00:00", \
          @dt_times.nautical_twilight_end_dt.to_s)
    end

    it 'expected   "2014-08-15T05:10:30+00:00" from \
      @dt_times.nautical_twilight_start_dt.to_s ' do
      assert_equal("2014-08-15T05:10:30+00:00", \
          @dt_times.nautical_twilight_start_dt.to_s)
    end

    it 'expected   "2014-08-15T05:56:33+00:00" from @dt_times.sunrise_dt() ' do
      assert_equal "2014-08-15T05:56:33+00:00", @dt_times.sunrise_dt.to_s
    end

    it 'expected   "2014-08-15T18:03:26+00:00" from @dt_times.sunset_dt() ' do
      assert_equal "2014-08-15T18:03:26+00:00", @dt_times.sunset_dt.to_s
    end

  end

  describe 'tests ajd of 2455055.0 ' do

    before(:each) do
      @dt_times = Eot.new
      # set our current object attributes
      @dt_times.jd                     = 2_455_055.0
      @dt_times.ajd = @dt_times.jd    
      @dt_times.set_t_ma

      ajd = @dt_times.jd   # for use here
      # check date for this ajd when needed.
      @dt_times.date = @dt_times.ajd_to_datetime(ajd)
    end

    it 'expected   "2009-08-11T12:00:00+00:00" from @dt_times.date.to_s ' do
      assert_equal '2009-08-11T12:00:00+00:00', @dt_times.date.to_s
    end

    it 'expected   "2009-08-11T12:00:00+00:00" from \
      @dt_times.ajd_to_datetime(@dt_times.ajd).to_s ' do
      assert_equal '2009-08-11T12:00:00+00:00', \
        @dt_times.ajd_to_datetime(@dt_times.ajd).to_s
    end

    it 'expected   "2009-08-11T05:56:32+00:00" \
      from @dt_times.sunrise_dt().to_s ' do
      assert_equal "2009-08-11T05:56:32+00:00", @dt_times.sunrise_dt.to_s
    end

    it 'expected   "2009-08-11T18:03:27+00:00" from @dt_times.sunset_dt() ' do
      assert_equal "2009-08-11T18:03:27+00:00", @dt_times.sunset_dt.to_s
    end 

  end
end