# times_spec.rb

require File.expand_path('../../test_helper', __FILE__)

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

  it 'expected   "2014-08-15T12:00:00+00:00" for \
                 times.date'.to_s do
    assert_equal '2014-08-15T12:00:00+00:00', \
                 times.date.to_s
  end

  it 'expected   3.8508003966038906 for \
                 times.ma'do
    assert_equal(3.8508003966038906, \
                 times.ma)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" from \
      times.ajd_to_datetime(times.ajd).to_s' do
    assert_equal '2014-08-15T12:00:00+00:00',\
                 times.ajd_to_datetime(times.ajd).to_s
  end

  it 'expected   "2014-08-15T19:18:45+00:00" from \
      times.astronomical_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T19:18:45+00:00', \
                 times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T04:50:12+00:00" from \
      times.astronomical_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T04:50:12+00:00', \
                 times.astronomical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.3046950083 from \
      times.astronomical_twilight_end_jd' do
    assert_equal(2_456_885.3046950083, \
                 times.astronomical_twilight_end_jd)
  end

  it 'expected   2_456_884.7015324384 from \
      times.astronomical_twilight_start_jd' do
    assert_equal(2_456_884.7015324384, \
                 times.astronomical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T18:29:13+00:00" from \
      times.civil_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T18:29:13+00:00', \
                 times.civil_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T05:39:44+00:00" from \
      times.civil_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T05:39:44+00:00', \
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.2702911533 from \
                 times.civil_twilight_end_jd()' do
    assert_equal(2_456_885.2702911533, \
                 times.civil_twilight_end_jd)
  end

  it 'expected   2_456_884.7359362934 from \
      times.civil_twilight_start_jd()' do
    assert_equal(2_456_884.7359362934, \
                 times.civil_twilight_start_jd)
  end

  it 'expected   -0.00311372324381113 from \
                 times.eot_jd()' do
    assert_equal(-0.00311372324381113, \
                 times.eot_jd)
  end

  it 'expected   "2014-08-15T12:04:29+00:00" \
      from times.local_noon_dt().to_s' do
    assert_equal '2014-08-15T12:04:29+00:00', \
                 times.local_noon_dt.to_s
  end

  it 'expected   "2014-08-15T18:53:58+00:00" from \
     times.nautical_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T18:53:58+00:00', \
                 times.nautical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T05:14:59+00:00" from \
      times.nautical_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T05:14:59+00:00', \
                 times.nautical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.2874805382 from \
      times.nautical_twilight_end_jd' do
    assert_equal(2_456_885.2874805382, \
                 times.nautical_twilight_end_jd)
  end

  it 'expected   2_456_884.7187469085 from \
      times.nautical_twilight_start_jd' do
    assert_equal(2_456_884.7187469085, \
                 times.nautical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T06:01:02+00:00" from \
                 times.sunrise_dt()' do
    assert_equal '2014-08-15T06:01:02+00:00', \
                 times.sunrise_dt.to_s
  end

  it 'expected   "2014-08-15T18:07:55+00:00" from \
                 times.sunset_dt()' do
    assert_equal '2014-08-15T18:07:55+00:00', \
                 times.sunset_dt.to_s
  end

  it 'expected   2_456_884.750728331 from \
                 times.sunrise_jd()' do
    assert_equal(2_456_884.750728331, \
                 times.sunrise_jd)
  end

  it 'expected   2_456_885.2554991157 from \
                 times.sunset_jd()' do
    assert_equal(2_456_885.2554991157, \
                 times.sunset_jd)
  end

  it 'expected   -9.377926906943959 from \
                 times.time_delta_oblique()' do
    assert_equal(-9.377926906943959, \
                 times.time_delta_oblique)
  end

  it 'expected   4.894165435855932 from \
                 times.time_delta_orbit()' do
    assert_equal(4.894165435855932, \
                 times.time_delta_orbit)
  end

  it 'expected   -4.483761471088027 from \
                 times.time_eot()' do
    assert_equal(-4.483761471088027, \
                 times.time_eot)
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

  it 'expected   2_455_055.0, from times.' do
    assert_equal(2_455_055.0, times.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
                  times.date.to_s' do
    assert_equal '2009-08-11T12:00:00+00:00', \
                 times.date.to_s
  end

  it 'expected   3.7871218188949243 from times.' do
    assert_equal(3.7871218188949243, times.ma)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
      times.ajd_to_datetime(times.ajd).to_s' do
    assert_equal '2009-08-11T12:00:00+00:00', \
                 times.ajd_to_datetime(times.ajd).to_s
  end

  it 'expected   -0.0035839456590805374 from \
                 times.eot_jd()' do
    assert_equal(-0.0035839456590805374, \
                 times.eot_jd)
  end

  it 'expected   "2009-08-11T06:01:42+00:00" \
      from times.sunrise_dt().to_s' do
    assert_equal '2009-08-11T06:01:42+00:00', \
                  times.sunrise_dt.to_s
  end

  it 'expected   2_455_054.7511859694 from \
                 times.sunrise_jd()' do
    assert_equal(2_455_054.7511859694, \
                 times.sunrise_jd)
  end

  it 'expected   "2009-08-11T18:08:36+00:00" from 
                 times.sunset_dt()' do
    assert_equal '2009-08-11T18:08:36+00:00', \
                 times.sunset_dt.to_s
  end

  it 'expected   2_455_055.255981922 from \
                 times.sunset_jd()' do
    assert_equal(2_455_055.255981922, \
                 times.sunset_jd)
  end

  it 'expected   -5.1608817490759735 is from \
                 times.time_eot()' do
    assert_equal(-5.1608817490759735, \
                 times.time_eot)
  end

end
