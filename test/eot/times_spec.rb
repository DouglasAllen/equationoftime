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

  it 'expected   3.8508003966038906 for \
                 times.ma'do
    assert_equal(3.8508003966038906, \
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

  it 'expected   2_456_884.7015324384 from \
      times.astronomical_twilight_start_jd' do
    assert_equal(2_456_884.7015324384, \
                 times.astronomical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T05:14:59+00:00" from \
      times.nautical_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T05:14:59+00:00', \
                 times.nautical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_884.7187469085 from \
      times.nautical_twilight_start_jd' do
    assert_equal(2_456_884.7187469085, \
                 times.nautical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T05:39:44+00:00" from \
      times.civil_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T05:39:44+00:00', \
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected   2_456_884.7359362934 from \
      times.civil_twilight_start_jd()' do
    assert_equal(2_456_884.7359362934, \
                 times.civil_twilight_start_jd)
  end

  it 'expected   "2014-08-15T06:01:02+00:00" from \
                 times.sunrise_dt()' do
    assert_equal '2014-08-15T06:01:02+00:00', \
                 times.sunrise_dt.to_s
  end

  it 'expected   2_456_884.750728331 from \
                 times.sunrise_jd()' do
    assert_equal(2_456_884.750728331, \
                 times.sunrise_jd)
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

  it 'expected   -0.00311372324381113 from \
                 times.eot_jd()' do
    assert_equal(-0.00311372324381113, \
                 times.eot_jd)
  end

  it 'expected   "2014-08-15T12:04:29+00:00" \
      from times.solar_noon_dt().to_s' do
    assert_equal '2014-08-15T12:04:29+00:00', \
                 times.solar_noon_dt.to_s
  end

  it 'expected   2456885.0031137234 \
      from times.solar_noon_jd' do
    assert_equal 2456885.0031137234, \
                 times.solar_noon_jd
  end

  it 'expected   "2014-08-15T18:07:55+00:00" from \
                 times.sunset_dt()' do
    assert_equal '2014-08-15T18:07:55+00:00', \
                 times.sunset_dt.to_s
  end

  it 'expected   2_456_885.2554991157 from \
                 times.sunset_jd()' do
    assert_equal(2_456_885.2554991157, \
                 times.sunset_jd)
  end

  it 'expected   "2014-08-15T18:29:13+00:00" from \
      times.civil_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T18:29:13+00:00', \
                 times.civil_twilight_end_dt.to_s)
  end

  it 'expected   2_456_885.2702911533 from \
                 times.civil_twilight_end_jd()' do
    assert_equal(2_456_885.2702911533, \
                 times.civil_twilight_end_jd)
  end

  it 'expected   "2014-08-15T18:53:58+00:00" from \
     times.nautical_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T18:53:58+00:00', \
                 times.nautical_twilight_end_dt.to_s)
  end

  it 'expected   2_456_885.2874805382 from \
      times.nautical_twilight_end_jd' do
    assert_equal(2_456_885.2874805382, \
                 times.nautical_twilight_end_jd)
  end

  it 'expected   "2014-08-15T19:18:45+00:00" from \
      times.astronomical_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T19:18:45+00:00', \
                 times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected   2_456_885.3046950083 from \
      times.astronomical_twilight_end_jd' do
    assert_equal(2_456_885.3046950083, \
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

  it 'expected   3.7871218188949243 from \
      times.ma' do
    assert_equal(3.7871218188949243, \
                 times.ma)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
      times.jd_to_datetime(times.jd).to_s' do
    assert_equal '2009-08-11T12:00:00+00:00', \
                 times.jd_to_datetime(times.jd).to_s
  end

  it 'expected   -5.1608817490759735 is from \
                 times.time_eot()' do
    assert_equal(-5.1608817490759735, \
                 times.time_eot)
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

end
