# times_spec.rb

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

times = Eot.new

describe 'tests ajd of 2456885.0' do

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

  it 'expected   "2014-08-15T21:46:27+00:00" from \
      times.astronomical_twilight_end_dt.to_s ' do
    assert_equal('2014-08-15T21:46:27+00:00', \
                 times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T02:22:31+00:00" from \
      times.astronomical_twilight_start_dt.to_s ' do
    assert_equal('2014-08-15T02:22:31+00:00', \
                 times.astronomical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.4072572137 from \
      times.astronomical_twilight_end_jd ' do
    assert_equal(2_456_885.4072572137, \
                 times.astronomical_twilight_end_jd)
  end

  it 'expected   2_456_884.598970438 from \
      times.astronomical_twilight_start_jd ' do
    assert_equal(2_456_884.598970438, \
                 times.astronomical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T20:00:43+00:00" from \
      times.civil_twilight_end_dt.to_s ' do
    assert_equal('2014-08-15T20:00:43+00:00', \
                 times.civil_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T04:08:15+00:00" from \
      times.civil_twilight_start_dt.to_s ' do
    assert_equal('2014-08-15T04:08:15+00:00', \
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.333831158 from times.civil_twilight_end_jd() ' do
    assert_equal(2_456_885.333831158, times.civil_twilight_end_jd)
  end

  it 'expected   2_456_884.6723964936 from \
      times.civil_twilight_start_jd() ' do
    assert_equal(2_456_884.6723964936, times.civil_twilight_start_jd)
  end

  it 'expected   -0.003113709117457967 from times.eot_jd() ' do
    assert_equal(-0.003113709117457967, times.eot_jd)
  end

  it 'expected   "2014-08-15T12:04:29+00:00" \
      from times.local_noon_dt().to_s ' do
    assert_equal '2014-08-15T12:04:29+00:00', times.local_noon_dt.to_s
  end

  it 'expected   "2014-08-15T20:48:41+00:00" from \
     times.nautical_twilight_end_dt.to_s ' do
    assert_equal('2014-08-15T20:48:41+00:00', \
                 times.nautical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T03:20:16+00:00" from \
      times.nautical_twilight_start_dt.to_s ' do
    assert_equal('2014-08-15T03:20:16+00:00', \
                 times.nautical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.367149622 from \
      times.nautical_twilight_end_jd ' do
    assert_equal(2_456_885.367149622, \
                 times.nautical_twilight_end_jd)
  end

  it 'expected   2_456_884.6390780294 from \
      times.nautical_twilight_start_jd ' do
    assert_equal(2_456_884.6390780294, \
                 times.nautical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T04:45:45+00:00" from times.sunrise_dt() ' do
    assert_equal '2014-08-15T04:45:45+00:00', times.sunrise_dt.to_s
  end

  it 'expected   "2014-08-15T19:23:12+00:00" from times.sunset_dt() ' do
    assert_equal '2014-08-15T19:23:12+00:00', times.sunset_dt.to_s
  end

  it 'expected   2_456_884.6984398644 from times.sunrise_jd() ' do
    assert_equal(2_456_884.6984398644, times.sunrise_jd)
  end

  it 'expected   2_456_885.307787787 from times.sunset_jd() ' do
    assert_equal(2_456_885.307787787, times.sunset_jd)
  end

  it 'expected   -9.37789671342477 from times.time_delta_oblique() ' do
    assert_equal(-9.37789671342477, times.time_delta_oblique)
  end

  it 'expected   4.894155584285298 from times.time_delta_orbit() ' do
    assert_equal(4.894155584285298, times.time_delta_orbit)
  end

  it 'expected   -4.483741129139473 from times.time_eot() ' do
    assert_equal(-4.483741129139473, times.time_eot)
  end

end

describe 'tests ajd of 2455055.0' do

  before(:each) do
    times.ajd                     = 2_455_055.0
    ajd = times.ajd
    times.ma_ta_set
    # check date for this ajd when needed.
    times.date = times.ajd_to_datetime(ajd)
  end

  it 'expected   2_455_055.0, from times.' do
    assert_equal(2_455_055.0, times.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from times.date.to_s' do
    assert_equal '2009-08-11T12:00:00+00:00', times.date.to_s
  end

  it 'expected   3.7871218188949207 from times.' do
    assert_equal(3.7871218188949207, times.ma)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
      times.ajd_to_datetime(times.ajd).to_s' do
    assert_equal '2009-08-11T12:00:00+00:00', \
                 times.ajd_to_datetime(times.ajd).to_s
  end

  it 'expected   -0.003584007074372416 from times.eot_jd()' do
    assert_equal(-0.003584007074372416, times.eot_jd)
  end

  it 'expected   "2009-08-11T04:39:45+00:00" \
      from times.sunrise_dt().to_s' do
    assert_equal '2009-08-11T04:39:45+00:00', times.sunrise_dt.to_s
  end

  it 'expected   2_455_054.6942728516 from times.sunrise_jd()' do
    assert_equal(2_455_054.6942728516, times.sunrise_jd)
  end

  it 'expected   "2009-08-11T19:30:34+00:00" from times.sunset_dt()' do
    assert_equal '2009-08-11T19:30:34+00:00', times.sunset_dt.to_s
  end

  it 'expected   2_455_055.3128953967 from times.sunset_jd() ' do
    assert_equal(2_455_055.3128953967, times.sunset_jd)
  end

  it 'expected   -5.160970187096279 is from times.time_eot() ' do
    assert_equal(-5.160970187096279, times.time_eot)
  end

end
