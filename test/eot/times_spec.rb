# times_spec.rb

require 'eot'
t_times = Eot.new

describe 'tests ajd of 2456885.0 ' do

  before(:each) do
    t_times.jd                =   2_456_885.0
    t_times.ajd = t_times.jd
    t_times.ma_ta_set
    # check date for this jd when needed.
    t_times.date = t_times.ajd_to_datetime(t_times.jd)
  end

  it 'expected   2456885.0 for t_times.ajd'do
    assert_equal(2_456_885.0, t_times.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" for t_times.date'.to_s do
    assert_equal '2014-08-15T12:00:00+00:00', t_times.date.to_s
  end

  it 'expected   3.8508003966 for t_times.ma'do
    assert_equal(3.8508003966, \
                 t_times.ma.round(10))
  end

  it 'expected   "2014-08-15T12:00:00+00:00" from \
      t_times.ajd_to_datetime(t_times.ajd).to_s ' do
    assert_equal '2014-08-15T12:00:00+00:00',\
                 t_times.ajd_to_datetime(t_times.ajd).to_s
  end

  it 'expected   "2014-08-15T19:18:45+00:00" from \
      t_times.astronomical_twilight_end_dt.to_s ' do
    assert_equal('2014-08-15T19:18:45+00:00', \
                 t_times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T04:50:12+00:00" from \
      t_times.astronomical_twilight_start_dt.to_s ' do
    assert_equal('2014-08-15T04:50:12+00:00', \
                 t_times.astronomical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.3046949888 from \
      t_times.astronomical_twilight_end_jd ' do
    assert_equal(2_456_885.3046949888, \
                 t_times.astronomical_twilight_end_jd)
  end

  it 'expected   2_456_884.701532429 from \
      t_times.astronomical_twilight_start_jd ' do
    assert_equal(2_456_884.701532429, \
                 t_times.astronomical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T18:29:13+00:00" from \
      t_times.civil_twilight_end_dt.to_s ' do
    assert_equal('2014-08-15T18:29:13+00:00', \
                 t_times.civil_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T05:39:44+00:00" from \
      t_times.civil_twilight_start_dt.to_s ' do
    assert_equal('2014-08-15T05:39:44+00:00', \
                 t_times.civil_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.270291137 from t_times.civil_twilight_end_jd() ' do
    assert_equal(2_456_885.270291137, t_times.civil_twilight_end_jd)
  end

  it 'expected   2_456_884.735936281 from \
      t_times.civil_twilight_start_jd() ' do
    assert_equal(2_456_884.735936281, t_times.civil_twilight_start_jd)
  end

  it 'expected   -0.0031137091 from t_times.eot_jd() ' do
    assert_equal(-0.0031137091, \
                 t_times.eot_jd.round(10))
  end

  it 'expected   "2014-08-15T12:04:29+00:00" \
      from t_times.local_noon_dt().to_s ' do
    assert_equal '2014-08-15T12:04:29+00:00', t_times.local_noon_dt.to_s
  end

  it 'expected   "2014-08-15T18:53:58+00:00" from \
     t_times.nautical_twilight_end_dt.to_s ' do
    assert_equal('2014-08-15T18:53:58+00:00', \
                 t_times.nautical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T05:14:59+00:00" from \
      t_times.nautical_twilight_start_dt.to_s ' do
    assert_equal('2014-08-15T05:14:59+00:00', \
                 t_times.nautical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.2874805206 from \
      t_times.nautical_twilight_end_jd ' do
    assert_equal(2_456_885.2874805206, \
                 t_times.nautical_twilight_end_jd)
  end

  it 'expected   2_456_884.7187468973 from \
      t_times.nautical_twilight_start_jd ' do
    assert_equal(2_456_884.7187468973, \
                 t_times.nautical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T06:01:02+00:00" from t_times.sunrise_dt() ' do
    assert_equal '2014-08-15T06:01:02+00:00', t_times.sunrise_dt.to_s
  end

  it 'expected   "2014-08-15T18:07:55+00:00" from t_times.sunset_dt() ' do
    assert_equal '2014-08-15T18:07:55+00:00', t_times.sunset_dt.to_s
  end

  it 'expected   2_456_884.7507283166 from t_times.sunrise_jd() ' do
    assert_equal(2_456_884.7507283166, t_times.sunrise_jd)
  end

  it 'expected   2_456_885.2554991012 from t_times.sunset_jd() ' do
    assert_equal(2_456_885.2554991012, t_times.sunset_jd)
  end

  it 'expected   -9.377896713 from t_times.time_delta_oblique() ' do
    assert_equal(-9.377896713, \
                 t_times.time_delta_oblique.round(9))
  end

  it 'expected   4.894155584 from t_times.time_delta_orbit() ' do
    assert_equal(4.894155584, \
                 t_times.time_delta_orbit.round(9))
  end

  it 'expected   -4.483741129 from t_times.time_eot() ' do
    assert_equal(-4.483741129, \
                 t_times.time_eot.round(9))
  end

end

describe 'tests ajd of 2455055.0 ' do

  before(:each) do
    t_times.jd                     = 2_455_055.0
    t_times.ajd = t_times.jd
    t_times.ma_ta_set
    # check date for this ajd when needed.
    t_times.date = t_times.ajd_to_datetime(t_times.jd)
  end

  it 'expected   2_455_055.0, from t_times. ' do
    assert_equal(2_455_055.0, t_times.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from t_times.date.to_s ' do
    assert_equal '2009-08-11T12:00:00+00:00', t_times.date.to_s
  end

  it 'expected   3.7871218189 from t_times. ' do
    assert_equal(3.7871218189, \
                 t_times.ma.round(10))
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
      t_times.ajd_to_datetime(t_times.ajd).to_s ' do
    assert_equal '2009-08-11T12:00:00+00:00', \
                 t_times.ajd_to_datetime(t_times.ajd).to_s
  end

  it 'expected   -0.0035840071 from t_times.eot_jd() ' do
    assert_equal(-0.0035840071, \
                 t_times.eot_jd.round(10))
  end

  it 'expected   "2009-08-11T06:01:42+00:00" \
      from t_times.sunrise_dt().to_s ' do
    assert_equal '2009-08-11T06:01:42+00:00', t_times.sunrise_dt.to_s
  end

  it 'expected   2_455_054.75118603 from t_times.sunrise_jd()' do
    assert_equal(2_455_054.75118603, t_times.sunrise_jd)
  end

  it 'expected   "2009-08-11T18:08:36+00:00" from t_times.sunset_dt() ' do
    assert_equal '2009-08-11T18:08:36+00:00', t_times.sunset_dt.to_s
  end

  it 'expected   2_455_055.2559819845 from t_times.sunset_jd() ' do
    assert_equal(2_455_055.2559819845, t_times.sunset_jd)
  end

  it 'expected   -5.1609701871 is from t_times.time_eot() ' do
    assert_equal(-5.1609701871, \
                 t_times.time_eot.round(10))
  end

end
