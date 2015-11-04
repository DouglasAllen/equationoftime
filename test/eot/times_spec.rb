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

  it 'expected   2_456_884.701532429 from \
      times.astronomical_twilight_start_jd' do
    assert_equal(2_456_884.701532429, \
                 times.astronomical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T05:14:59+00:00" from \
      times.nautical_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T05:14:59+00:00', \
                 times.nautical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_884.7187468973 from \
      times.nautical_twilight_start_jd' do
    assert_equal(2_456_884.7187468973, \
                 times.nautical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T05:39:44+00:00" from \
      times.civil_twilight_start_dt.to_s' do
    assert_equal('2014-08-15T05:39:44+00:00', \
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected   2_456_884.735936281 from \
      times.civil_twilight_start_jd()' do
    assert_equal(2_456_884.735936281, \
                 times.civil_twilight_start_jd)
  end

  it 'expected   "2014-08-15T06:01:02+00:00" from \
                 times.sunrise_dt()' do
    assert_equal '2014-08-15T06:01:02+00:00', \
                 times.sunrise_dt.to_s
  end

  it 'expected   2_456_884.7507283166 from \
                 times.sunrise_jd()' do
    assert_equal(2_456_884.7507283166, \
                 times.sunrise_jd)
  end

  it 'expected   -9.37789671342477 from \
                 times.time_delta_oblique()' do
    assert_equal(-9.37789671342477, \
                 times.time_delta_oblique)
  end

  it 'expected   4.894155584285298 from \
                 times.time_delta_orbit()' do
    assert_equal(4.894155584285298, \
                 times.time_delta_orbit)
  end

  it 'expected   -4.483741129139473 from \
                 times.time_eot()' do
    assert_equal(-4.483741129139473, \
                 times.time_eot)
  end

  it 'expected   -0.003113709117457967 from \
                 times.eot_jd()' do
    assert_equal(-0.003113709117457967, \
                 times.eot_jd)
  end

  it 'expected   "2014-08-15T12:04:29+00:00" \
      from times.solar_noon_dt().to_s' do
    assert_equal '2014-08-15T12:04:29+00:00', \
                 times.solar_noon_dt.to_s
  end

  it 'expected   2456885.003113709 \
      from times.solar_noon_jd' do
    assert_equal 2456885.003113709, \
                 times.solar_noon_jd
  end

  it 'expected   "2014-08-15T18:07:55+00:00" from \
                 times.sunset_dt()' do
    assert_equal '2014-08-15T18:07:55+00:00', \
                 times.sunset_dt.to_s
  end

  it 'expected   2_456_885.2554991012 from \
                 times.sunset_jd()' do
    assert_equal(2_456_885.2554991012, \
                 times.sunset_jd)
  end

  it 'expected   "2014-08-15T18:29:13+00:00" from \
      times.civil_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T18:29:13+00:00', \
                 times.civil_twilight_end_dt.to_s)
  end

  it 'expected   2_456_885.270291137 from \
                 times.civil_twilight_end_jd()' do
    assert_equal(2_456_885.270291137, \
                 times.civil_twilight_end_jd)
  end

  it 'expected   "2014-08-15T18:53:58+00:00" from \
     times.nautical_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T18:53:58+00:00', \
                 times.nautical_twilight_end_dt.to_s)
  end

  it 'expected   2_456_885.2874805206 from \
      times.nautical_twilight_end_jd' do
    assert_equal(2_456_885.2874805206, \
                 times.nautical_twilight_end_jd)
  end

  it 'expected   "2014-08-15T19:18:45+00:00" from \
      times.astronomical_twilight_end_dt.to_s' do
    assert_equal('2014-08-15T19:18:45+00:00', \
                 times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected   2_456_885.3046949888 from \
      times.astronomical_twilight_end_jd' do
    assert_equal(2_456_885.3046949888, \
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

  it 'expected   -5.160970187096279 is from \
                 times.time_eot()' do
    assert_equal(-5.160970187096279, \
                 times.time_eot)
  end

  it 'expected   -0.003584007074372416 from \
                 times.eot_jd()' do
    assert_equal(-0.003584007074372416, \
                 times.eot_jd)
  end

  it 'expected   "2009-08-11T06:01:42+00:00" \
      from times.sunrise_dt().to_s' do
    assert_equal '2009-08-11T06:01:42+00:00', \
                  times.sunrise_dt.to_s
  end

  it 'expected   2_455_054.75118603 from \
                 times.sunrise_jd()' do
    assert_equal(2_455_054.75118603, \
                 times.sunrise_jd)
  end

  it 'expected   "2009-08-11T18:08:36+00:00" from 
                 times.sunset_dt()' do
    assert_equal '2009-08-11T18:08:36+00:00', \
                 times.sunset_dt.to_s
  end

  it 'expected   2_455_055.2559819845 from \
                 times.sunset_jd()' do
    assert_equal(2_455_055.2559819845, \
                 times.sunset_jd)
  end

end
