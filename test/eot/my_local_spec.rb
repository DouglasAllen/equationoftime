require File.expand_path('../../test_helper', __FILE__)

times = Eot.new
# check yours with this http://aa.usno.navy.mil/data/docs/RS_OneDay.php
# this test ran on "2015-11-03"
describe "tests date of #{DateTime.now.to_time.utc.to_date}" do  

  before(:each) do
    times.latitude = 41.9333
    times.longitude = -88.75
    times.new_date("2015-11-03")
  end

  it 'expected   "2015-11-03" for \
                  times.date' do
    assert_equal "2015-11-03", \
                 times.date
  end

  it 'expected   2457330.0 for \
      times.jd'do
    assert_equal(2457330.0, \
                 times.jd)
  end

  it 'expected   2457329.5 for \
      times.ajd'do
    assert_equal(2457329.5, \
                 times.ajd)
  end

  it 'expected   "2015-11-03T12:00:38+00:00" from \
      times.civil_twilight_start_dt.to_s' do
    assert_equal('2015-11-03T12:00:38+00:00', \
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected   "2015-11-03T12:29:43+00:00" from \
                 times.sunrise_dt()' do
    assert_equal '2015-11-03T12:29:43+00:00', \
                 times.sunrise_dt.to_s
  end

  it 'expected   "2015-11-03T17:38:36+00:00" \
      from times.solar_noon_dt().to_s' do
    assert_equal '2015-11-03T17:38:36+00:00', \
                 times.solar_noon_dt.to_s
  end

  it 'expected   "2015-11-03T22:47:29+00:00" from \
                 times.sunset_dt()' do
    assert_equal '2015-11-03T22:47:29+00:00', \
                 times.sunset_dt.to_s
  end

  it 'expected   "2015-11-03T23:16:35+00:00" from \
      times.civil_twilight_end_dt.to_s' do
    assert_equal('2015-11-03T23:16:35+00:00', \
                 times.civil_twilight_end_dt.to_s)
  end

end