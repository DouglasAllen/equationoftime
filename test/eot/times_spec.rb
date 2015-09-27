# times_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

times = Eot.new

describe 'tests ajd of 2456885.0 ' do

  before(:each) do
    times.ajd                =   2_456_885.0
    ajd = times.ajd
    times.ma_ta_set
    # check date for this ajd when needed.
    times.date = times.ajd_to_datetime(ajd)
  end

  it 'expected   2456885.0 for times.ajd'do
    assert_equal(2_456_885.0, times.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" for times.date'.to_s do
    assert_equal '2014-08-15T12:00:00+00:00', times.date.to_s
  end

  it 'expected   3.8508003966038915 for times.ma'do
    assert_equal(3.8508003966038915, times.ma)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" from \
      times.ajd_to_datetime(times.ajd).to_s ' do
    assert_equal '2014-08-15T12:00:00+00:00',\
                 times.ajd_to_datetime(times.ajd).to_s
  end

  it 'expected   "2014-08-15T19:18:45+00:00" from \
      times.astronomical_twilight_end_dt.to_s ' do
    assert_equal("2014-08-15T19:18:45+00:00", \
                 times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T04:50:12+00:00" from \
      times.astronomical_twilight_start_dt.to_s ' do
    assert_equal("2014-08-15T04:50:12+00:00", \
                 times.astronomical_twilight_start_dt.to_s)
  end

  it 'expected   2456885.304698244 from \
      times.astronomical_twilight_end_jd ' do
    assert_equal(2456885.304698244, \
                 times.astronomical_twilight_end_jd)
  end

  it 'expected   2456884.7015344403 from \
      times.astronomical_twilight_start_jd ' do
    assert_equal(2456884.7015344403, \
                 times.astronomical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T18:29:13+00:00" from \
      times.civil_twilight_end_dt.to_s ' do
    assert_equal("2014-08-15T18:29:13+00:00", \
                 times.civil_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T05:39:45+00:00" from \
      times.civil_twilight_start_dt.to_s ' do
    assert_equal("2014-08-15T05:39:45+00:00", \
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected   2456885.270293971 from times.civil_twilight_end_jd() ' do
    assert_equal(2456885.270293971, times.civil_twilight_end_jd)
  end

  it 'expected   2456884.7359387134 from \
      times.civil_twilight_start_jd() ' do
    assert_equal(2456884.7359387134, times.civil_twilight_start_jd)
  end

  it 'expected   -0.0031163424252885516 from times.eot_jd() ' do
    assert_equal(-0.0031163424252885516, times.eot_jd)
  end

  it 'expected   "2014-08-15T12:04:29+00:00" \
      from times.local_noon_dt().to_s ' do
    assert_equal '2014-08-15T12:04:29+00:00', times.local_noon_dt.to_s
  end

  it 'expected   "2014-08-15T18:53:58+00:00" from \
     times.nautical_twilight_end_dt.to_s ' do
    assert_equal("2014-08-15T18:53:58+00:00", \
                 times.nautical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T05:14:59+00:00" from \
      times.nautical_twilight_start_dt.to_s ' do
    assert_equal("2014-08-15T05:14:59+00:00", \
                 times.nautical_twilight_start_dt.to_s)
  end

  it 'expected   2456885.2874835604 from \
      times.nautical_twilight_end_jd ' do
    assert_equal(2456885.2874835604, \
                 times.nautical_twilight_end_jd)
  end

  it 'expected   2456884.718749124 from \
      times.nautical_twilight_start_jd ' do
    assert_equal(2456884.718749124, \
                 times.nautical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T06:01:03+00:00" from times.sunrise_dt() ' do
    assert_equal "2014-08-15T06:01:03+00:00", times.sunrise_dt.to_s
  end

  it 'expected   "2014-08-15T18:07:55+00:00" from times.sunset_dt() ' do
    assert_equal "2014-08-15T18:07:55+00:00", times.sunset_dt.to_s
  end

  it 'expected   2456884.7507309224 from times.sunrise_jd() ' do
    assert_equal(2456884.7507309224, times.sunrise_jd)
  end

  it 'expected   2456885.255501762 from times.sunset_jd() ' do
    assert_equal(2456885.255501762, times.sunset_jd)
  end

  it 'expected   -9.381688676700811 from times.time_delta_oblique() ' do
    assert_equal(-9.381688676700811, times.time_delta_oblique)
  end

  it 'expected   4.894155584285298 from times.time_delta_orbit() ' do
    assert_equal(4.894155584285298, times.time_delta_orbit)
  end

  it 'expected   -4.487533092415514 from times.time_eot() ' do
    assert_equal(-4.487533092415514, times.time_eot)
  end

end

describe 'tests ajd of 2455055.0 ' do

  before(:each) do
    times.ajd                     = 2_455_055.0
    ajd = times.ajd
    times.ma_ta_set
    # check date for this ajd when needed.
    times.date = times.ajd_to_datetime(ajd)
  end

  it 'expected   2_455_055.0, from times. ' do
    assert_equal(2_455_055.0, times.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from times.date.to_s ' do
    assert_equal '2009-08-11T12:00:00+00:00', times.date.to_s
  end

  it 'expected   3.7871218188949207 from times. ' do
    assert_equal(3.7871218188949207, times.ma)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
      times.ajd_to_datetime(times.ajd).to_s ' do
    assert_equal '2009-08-11T12:00:00+00:00', \
                 times.ajd_to_datetime(times.ajd).to_s
  end

  it 'expected   -0.0035824862636448895 from times.eot_jd() ' do
    assert_equal(-0.0035824862636448895, times.eot_jd)
  end

  it 'expected   "2009-08-11T06:01:42+00:00" \
      from times.sunrise_dt().to_s ' do
    assert_equal "2009-08-11T06:01:42+00:00", times.sunrise_dt.to_s
  end

  it 'expected   2455054.7511845278 from times.sunrise_jd()' do
    assert_equal(2455054.7511845278, times.sunrise_jd)
  end

  it 'expected   "2009-08-11T18:08:36+00:00" from times.sunset_dt() ' do
    assert_equal "2009-08-11T18:08:36+00:00", times.sunset_dt.to_s
  end

  it 'expected   2455055.255980445 from times.sunset_jd() ' do
    assert_equal(2455055.255980445, times.sunset_jd)
  end

  it 'expected   -5.158780219648641 is from times.time_eot() ' do
    assert_equal(-5.158780219648641, times.time_eot)
  end

end
