require File.expand_path('../../test_helper', __FILE__)

times = Eot.new
# check yours with this http://aa.usno.navy.mil/data/docs/RS_OneDay.php
# this test ran on "2015-10-28"
describe "tests date of #{Date.today}" do  

  it 'expected   "#{Date.today.to_s}" for \
                 times.date' do
    assert_equal Date.today.to_s, \
                 times.date
  end

  it 'expected "#{Date.today.jd.to_f}" for \
      times.jd'do
    assert_equal(Date.today.jd.to_f, \
                 times.jd)
  end

  it 'expected "#{Date.today.ajd.to_f}" for \
      times.ajd'do
    assert_equal(Date.today.ajd.to_f, \
                 times.ajd)
  end

  before(:each) do
    times.latitude = 41.9333
    times.longitude = -88.75
    times.new_date(Date.today.to_s)
  end

  it 'expected   "2015-10-28T11:53:43+00:00" from \
      times.civil_twilight_start_dt.to_s' do
    assert_equal('2015-10-28T11:53:43+00:00', \
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected   "2015-10-28T12:22:26+00:00" from \
                 times.sunrise_dt()' do
    assert_equal '2015-10-28T12:22:26+00:00', \
                 times.sunrise_dt.to_s
  end

  it 'expected   "2015-10-28T17:38:51+00:00" \
      from times.solar_noon_dt().to_s' do
    assert_equal '2015-10-28T17:38:51+00:00', \
                 times.solar_noon_dt.to_s
  end

  it 'expected   "2015-10-28T22:55:17+00:00" from \
                 times.sunset_dt()' do
    assert_equal '2015-10-28T22:55:17+00:00', \
                 times.sunset_dt.to_s
  end

  it 'expected   "2015-10-28T23:24:00+00:00" from \
      times.civil_twilight_end_dt.to_s' do
    assert_equal('2015-10-28T23:24:00+00:00', \
                 times.civil_twilight_end_dt.to_s)
  end

end