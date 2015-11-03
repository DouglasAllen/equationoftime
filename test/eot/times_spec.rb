# times_spec.rb

require File.expand_path('../../test_helper', __FILE__)

times = Eot.new

describe 'tests date of "2014-08-15" ' do

  before(:each) do
    times.new_date('2014-08-15')
  end

  it 'expected   "2014-08-15" for \
                 times.date'.to_s do
    assert_equal '2014-08-15', \
                 times.date.to_s
  end

  it 'expected   2_456_885.0 for \
      times.jd'do
    assert_equal(2_456_885.0, \
                 times.jd)
  end

  it 'expected   2_456_884.5 for \
      times.ajd'do
    assert_equal(2_456_884.5, \
                 times.ajd)
  end

  it 'expected   0.1462012320328542 for \
                 times.ta'do
    assert_equal(0.1462012320328542, \
                 times.ta)
  end

  it 'expected   3.8508003966038915 for \
                 times.ma'do
    assert_equal(3.8508003966038915, \
                 times.ma)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" from \
      times.jd_to_datetime(times.jd).to_s' do
    assert_equal '2014-08-15T12:00:00+00:00',\
                 times.jd_to_datetime(times.jd).to_s
  end

  it 'expected   "2014-08-15T04:50:12+00:00" from \
      times.astronomical_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T04:50:12+00:00', \
                 times.astronomical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_884.7015324305 from \
      times.astronomical_twilight_start_jd' do
    assert_equal(2_456_884.7015324305, \
                 times.astronomical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T05:14:59+00:00" from \
      times.nautical_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T05:14:59+00:00', \
                 times.nautical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_884.7187468987 from \
      times.nautical_twilight_start_jd' do
    assert_equal(2_456_884.7187468987, \
                 times.nautical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T05:39:44+00:00" from \
      times.civil_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T05:39:44+00:00', \
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected   2_456_884.735936282 from \
      times.civil_twilight_start_jd()' do
    assert_equal(2_456_884.735936282, \
                 times.civil_twilight_start_jd)
  end

  it 'expected   "2014-08-15T06:01:02+00:00" from \
                 times.sunrise_dt()' do
    assert_equal '2014-08-15T06:01:02+00:00', \
                 times.sunrise_dt.to_s
  end

  it 'expected   2_456_884.750728318 from \
                 times.sunrise_jd()' do
    assert_equal(2_456_884.750728318, \
                 times.sunrise_jd)
  end

  it 'expected   -9.377898672541324 from \
                 times.time_delta_oblique()' do
    assert_equal(-9.377898672541324, \
                 times.time_delta_oblique)
  end

  it 'expected   4.894155584285298 from \
                 times.time_delta_orbit()' do
    assert_equal(4.894155584285298, \
                 times.time_delta_orbit)
  end

  it 'expected   -4.483743088256027 from \
                 times.time_eot()' do
    assert_equal(-4.483743088256027, \
                 times.time_eot)
  end

  it 'expected   -0.0031137104779555744 from \
                 times.eot_jd()' do
    assert_equal(-0.0031137104779555744, \
                 times.eot_jd)
  end

  it 'expected   "2014-08-15T12:04:29+00:00" \
      from times.solar_noon_dt().to_s' do
    assert_equal '2014-08-15T12:04:29+00:00', \
                 times.solar_noon_dt.to_s
  end

  it 'expected   2456885.0031137103 \
      from times.solar_noon_jd' do
    assert_equal 2456885.0031137103, \
                 times.solar_noon_jd
  end

  it 'expected   "2014-08-15T18:07:55+00:00" from \
                 times.sunset_dt()' do
    assert_equal '2014-08-15T18:07:55+00:00', \
                 times.sunset_dt.to_s
  end

  it 'expected   2_456_885.2554991026 from \
                 times.sunset_jd()' do
    assert_equal(2_456_885.2554991026, \
                 times.sunset_jd)
  end

  it 'expected   "2014-08-15T18:29:13+00:00" from \
      times.civil_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T18:29:13+00:00', \
                 times.civil_twilight_end_dt.to_s)
  end

  it 'expected   2_456_885.2702911384 from \
                 times.civil_twilight_end_jd()' do
    assert_equal(2_456_885.2702911384, \
                 times.civil_twilight_end_jd)
  end

  it 'expected   "2014-08-15T18:53:58+00:00" from \
     times.nautical_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T18:53:58+00:00', \
                 times.nautical_twilight_end_dt.to_s)
  end

  it 'expected   2_456_885.287480522 from \
      times.nautical_twilight_end_jd' do
    assert_equal(2_456_885.287480522, \
                 times.nautical_twilight_end_jd)
  end

  it 'expected   "2014-08-15T19:18:45+00:00" from \
      times.astronomical_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T19:18:45+00:00', \
                 times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected   2_456_885.30469499 from \
      times.astronomical_twilight_end_jd' do
    assert_equal(2_456_885.30469499, \
                 times.astronomical_twilight_end_jd)
  end

end

describe 'tests date of "2009-08-11" ' do

  before(:each) do
    times.new_date("2009-08-11")             
  end

  it 'expected   "2009-08-11" from \
                  times.date' do
    assert_equal '2009-08-11', \
                 times.date
  end

  it 'expected   2_455_055.0, from \
      times.jd' do
    assert_equal(2_455_055.0, \
                 times.jd)
  end

  it 'expected   2_455_054.5, from \
      times.ajd' do
    assert_equal(2_455_054.5, \
                 times.ajd)
  end

  it 'expected   0.09609856262833676 from \
      times.ta' do
    assert_equal(0.09609856262833676, \
                 times.ta)
  end

  it 'expected   3.7871218188949207 from \
      times.ma' do
    assert_equal(3.7871218188949207, \
                 times.ma)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
      times.jd_to_datetime(times.jd).to_s' do
    assert_equal '2009-08-11T12:00:00+00:00', \
                 times.jd_to_datetime(times.jd).to_s
  end

  it 'expected   -5.160972794578869 is from \
                 times.time_eot()' do
    assert_equal(-5.160972794578869, \
                 times.time_eot)
  end

  it 'expected   -0.0035840088851242144 from \
                 times.eot_jd()' do
    assert_equal(-0.0035840088851242144, \
                 times.eot_jd)
  end

  it 'expected   "2009-08-11T06:01:42+00:00" \
      from times.sunrise_dt().to_s' do
    assert_equal '2009-08-11T06:01:42+00:00', \
                  times.sunrise_dt.to_s
  end

  it 'expected   2_455_054.7511860314 from \
                 times.sunrise_jd()' do
    assert_equal(2_455_054.7511860314, \
                 times.sunrise_jd)
  end

  it 'expected   "2009-08-11T18:08:36+00:00" from 
                 times.sunset_dt()' do
    assert_equal '2009-08-11T18:08:36+00:00', \
                 times.sunset_dt.to_s
  end

  it 'expected   2_455_055.255981986 from \
                 times.sunset_jd()' do
    assert_equal(2_455_055.255981986, \
                 times.sunset_jd)
  end

end
