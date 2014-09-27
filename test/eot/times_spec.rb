# times_spec.rb

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

Eot_times = Eot.new

describe 'tests ajd of 2456885.0' do

  before(:each) do
    Eot_times.ajd                =   2_456_885.0
    ajd = Eot_times.ajd
    # check date for this ajd when needed.
    Eot_times.date = Eot_times.ajd_to_datetime(ajd)
  end

  it 'expected   2456885.0 for Eot_times.ajd'do
    assert_equal(2_456_885.0, Eot_times.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" for Eot_times.date'.to_s do
    assert_equal '2014-08-15T12:00:00+00:00', Eot_times.date.to_s
  end

  it 'expected   3.8508003966038915 for Eot_times.ma'do
    assert_equal(3.8508003966038915, Eot_times.ma)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" from \
      Eot_times.ajd_to_datetime(Eot_times.ajd).to_s ' do
    assert_equal '2014-08-15T12:00:00+00:00',\
                 Eot_times.ajd_to_datetime(Eot_times.ajd).to_s
  end

  it 'expected   -0.003113709117457967 from Eot_times.eot_jd() ' do
    assert_equal(-0.003113709117457967, Eot_times.eot_jd)
  end

  it 'expected   "2014-08-15T12:04:29+00:00" \
      from Eot_times.local_noon_dt().to_s ' do
    assert_equal '2014-08-15T12:04:29+00:00', Eot_times.local_noon_dt.to_s
  end

  it 'expected   "2014-08-15T04:45:45+00:00" from Eot_times.sunrise_dt() ' do
    assert_equal '2014-08-15T04:45:45+00:00', Eot_times.sunrise_dt.to_s
  end

  it 'expected   "2014-08-15T19:23:12+00:00" from Eot_times.sunset_dt() ' do
    assert_equal '2014-08-15T19:23:12+00:00', Eot_times.sunset_dt.to_s
  end

  it 'expected   2456884.6984398644 from Eot_times.sunrise_jd() ' do
    assert_equal(2_456_884.6984398644, Eot_times.sunrise_jd)
  end

  it 'expected   2456885.307787787 from Eot_times.sunset_jd() ' do
    assert_equal(2_456_885.307787787, Eot_times.sunset_jd)
  end

  it 'expected   -9.37789671342477 from Eot_times.time_delta_oblique() ' do
    assert_equal(-9.37789671342477, Eot_times.time_delta_oblique)
  end

  it 'expected   4.894155584285298 from Eot_times.time_delta_orbit() ' do
    assert_equal(4.894155584285298, Eot_times.time_delta_orbit)
  end

  it 'expected   -4.483741129139473 from Eot_times.time_eot() ' do
    assert_equal(-4.483741129139473, Eot_times.time_eot)
  end

end

describe 'tests ajd of 2455055.0' do

  before(:each) do
    Eot_times.ajd                     = 2_455_055.0
    ajd = Eot_times.ajd
    # check date for this ajd when needed.
    Eot_times.date = Eot_times.ajd_to_datetime(ajd)
  end

  it 'expected   2455055.0, from Eot_times.' do
    assert_equal(2_455_055.0, Eot_times.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from Eot_times.date.to_s' do
    assert_equal '2009-08-11T12:00:00+00:00', Eot_times.date.to_s
  end

  it 'expected   3.7871218188949207 from Eot_times.' do
    assert_equal(3.7871218188949207, Eot_times.ma)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
      Eot_times.ajd_to_datetime(Eot_times.ajd).to_s' do
    assert_equal '2009-08-11T12:00:00+00:00', \
                 Eot_times.ajd_to_datetime(Eot_times.ajd).to_s
  end

  it 'expected   -0.003584007074372416 from Eot_times.eot_jd()' do
    assert_equal(-0.003584007074372416, Eot_times.eot_jd)
  end

  it 'expected   "2009-08-11T04:39:45+00:00" \
      from Eot_times.sunrise_dt().to_s' do
    assert_equal '2009-08-11T04:39:45+00:00', Eot_times.sunrise_dt.to_s
  end

  it 'expected   2455054.6942728516 from Eot_times.sunrise_jd()' do
    assert_equal(2_455_054.6942728516, Eot_times.sunrise_jd)
  end

  it 'expected   "2009-08-11T19:30:34+00:00" from Eot_times.sunset_dt()' do
    assert_equal '2009-08-11T19:30:34+00:00', Eot_times.sunset_dt.to_s
  end

  it 'expected   2455055.3128953967 from Eot_times.sunset_jd() ' do
    assert_equal(2_455_055.3128953967, Eot_times.sunset_jd)
  end

  it 'expected   -5.160970187096279 is from Eot_times.time_eot() ' do
    assert_equal(-5.160970187096279, Eot_times.time_eot)
  end

end
