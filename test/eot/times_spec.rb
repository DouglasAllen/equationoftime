# times_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

times = Eot.new

describe 'tests ajd of 2456885.0 ' do
  before(:each) do
    times.ajd = 2_456_885.0
    ajd = times.ajd
    times.ma_ta_set
    # check date for this ajd when needed.
    times.date = times.ajd_to_datetime(ajd)
  end

  it 'expected from times.ajd \
                 2_456_885.0 ' do
    assert_equal(2_456_885.0,
                 times.ajd)
  end

  it 'expected from times.date.to_s \
                  2014-08-15T12:00:00+00:00 ' do
    assert_equal '2014-08-15T12:00:00+00:00',
                 times.date.to_s
  end

  it 'expected from times.ma.round(10) \
                 3.8508003966 ' do
    assert_equal(3.8508003966,
                 times.ma.round(10))
  end

  it 'expected from times.ajd_to_datetime(times.ajd).to_s \
                  2014-08-15T12:00:00+00:00 ' do
    assert_equal '2014-08-15T12:00:00+00:00',
                 times.ajd_to_datetime(times.ajd).to_s
  end

  it 'expected from times.astronomical_twilight_end_dt.to_s \
                  2014-08-15T19:18:45+00:00 ' do
    assert_equal('2014-08-15T19:18:45+00:00',
                 times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected from times.astronomical_twilight_start_dt.to_s \
                  2014-08-15T04:50:12+00:00 ' do
    assert_equal('2014-08-15T04:50:12+00:00',
                 times.astronomical_twilight_start_dt.to_s)
  end

  it 'expected from times.astronomical_twilight_end_jd \
                 2_456_885.3046949888 ' do
    assert_equal(2_456_885.3046949888,
                 times.astronomical_twilight_end_jd)
  end

  it 'expected from times.astronomical_twilight_start_jd \
                 2_456_884.701532429 ' do
    assert_equal(2_456_884.701532429,
                 times.astronomical_twilight_start_jd)
  end

  it 'expected from times.civil_twilight_end_dt.to_s \
                  2014-08-15T18:29:13+00:00 ' do
    assert_equal('2014-08-15T18:29:13+00:00',
                 times.civil_twilight_end_dt.to_s)
  end

  it 'expected from times.civil_twilight_start_dt.to_s \
                  2014-08-15T05:39:44+00:00 ' do
    assert_equal('2014-08-15T05:39:44+00:00',
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected from times.civil_twilight_end_jd \
                 2_456_885.270291137 ' do
    assert_equal(2_456_885.270291137,
                 times.civil_twilight_end_jd)
  end

  it 'expected from times.civil_twilight_start_jd \
                 2_456_884.735936281 ' do
    assert_equal(2_456_884.735936281,
                 times.civil_twilight_start_jd)
  end

  it 'expected from times.eot_jd.round(10) \
                 -0.0031137091 ' do
    assert_equal(-0.0031137091,
                 times.eot_jd.round(10))
  end

  it 'expected from times.local_noon_dt().to_s \
                  2014-08-15T12:04:29+00:00 ' do
    assert_equal '2014-08-15T12:04:29+00:00',
                 times.local_noon_dt.to_s
  end

  it 'expected  from times.nautical_twilight_end_dt.to_s \
                  2014-08-15T18:53:58+00:00 ' do
    assert_equal('2014-08-15T18:53:58+00:00',
                 times.nautical_twilight_end_dt.to_s)
  end

  it 'expected from times.nautical_twilight_start_dt.to_s \
                  2014-08-15T05:14:59+00:00 ' do
    assert_equal('2014-08-15T05:14:59+00:00',
                 times.nautical_twilight_start_dt.to_s)
  end

  it 'expected from times.nautical_twilight_end_jd \ 
                 2_456_885.2874805206  ' do
    assert_equal(2_456_885.2874805206,
                 times.nautical_twilight_end_jd)
  end

  it 'expected from times.nautical_twilight_start_jd \ 
                 2_456_884.7187468973 ' do
    assert_equal(2_456_884.7187468973,
                 times.nautical_twilight_start_jd)
  end

  it 'expected from times.sunrise_dt \
                  2014-08-15T06:01:02+00:00 ' do
    assert_equal '2014-08-15T06:01:02+00:00',
                 times.sunrise_dt.to_s
  end

  it 'expected from times.sunset_dt \
                  2014-08-15T18:07:55+00:00 ' do
    assert_equal '2014-08-15T18:07:55+00:00',
                 times.sunset_dt.to_s
  end

  it 'expected from times.sunrise_jd \
                 2_456_884.7507283166 ' do
    assert_equal(2_456_884.7507283166,
                 times.sunrise_jd)
  end

  it 'expected from times.sunset_jd \
                 2_456_885.2554991012 ' do
    assert_equal(2_456_885.2554991012,
                 times.sunset_jd)
  end

  it 'expected from times.time_delta_oblique.round(10) \
                 -9.3778967134 ' do
    assert_equal(-9.3778967134,
                 times.time_delta_oblique.round(10))
  end

  it 'expected from times.time_delta_orbit.round(10) \
                 4.8941555843 ' do
    assert_equal(4.8941555843,
                 times.time_delta_orbit.round(10))
  end

  it 'expected from times.time_eot.round(10) \
                 -4.4837411291 ' do
    assert_equal(-4.4837411291,
                 times.time_eot.round(10))
  end
end

describe 'tests ajd of 2455055.0 ' do
  before(:each) do
    times.ajd = 2_455_055.0
    ajd = times.ajd
    times.ma_ta_set
    # check date for this ajd when needed.
    times.date = times.ajd_to_datetime(ajd)
  end

  it 'expected from times.ajd \
                 2_455_055.0 ' do
    assert_equal(2_455_055.0,
                 times.ajd)
  end

  it 'expected from times.date.to_s \
                  2009-08-11T12:00:00+00:00 ' do
    assert_equal '2009-08-11T12:00:00+00:00',
                 times.date.to_s
  end

  it 'expected from times.ma.round(10) \
                 3.7871218189 ' do
    assert_equal(3.7871218189,
                 times.ma.round(10))
  end

  it 'expected from times.ajd_to_datetime(times.ajd).to_s \
                  2009-08-11T12:00:00+00:00 ' do
    assert_equal '2009-08-11T12:00:00+00:00',
                 times.ajd_to_datetime(times.ajd).to_s
  end

  it 'expected from times.eot_jd.round(10) \
                 -0.0035840071' do
    assert_equal(-0.0035840071,
                 times.eot_jd.round(10))
  end

  it 'expected from times.sunrise_dt().to_s \
                  2009-08-11T06:01:42+00:00 ' do
    assert_equal '2009-08-11T06:01:42+00:00',
                 times.sunrise_dt.to_s
  end

  it 'expected from times.sunrise_jd \
                 2_455_054.75118603 ' do
    assert_equal(2_455_054.75118603,
                 times.sunrise_jd)
  end

  it 'expected from times.sunset_dt \
                  2009-08-11T18:08:36+00:00 ' do
    assert_equal '2009-08-11T18:08:36+00:00',
                 times.sunset_dt.to_s
  end

  it 'expected from times.sunset_jd \
                 2_455_055.2559819845 ' do
    assert_equal(2_455_055.2559819845,
                 times.sunset_jd)
  end

  it 'expected from times.time_eot.round(10) \
                 -5.1609701871 ' do
    assert_equal(-5.1609701871,
                 times.time_eot.round(10))
  end
end
