# angles_display_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

angles_displays = Eot.new

describe 'Eot angles_displays using ajd of 2456885.0' do
  before(:each) do
    angles_displays.ajd = 2_456_885.0
    ajd = angles_displays.ajd
    angles_displays.ma_ta_set
    # check date for this ajd when needed.
    angles_displays.date = angles_displays.ajd_to_datetime(ajd)
  end

  it 'expected from angles_displays.degrees_to_s \
                  +000:00:00.000 ' do
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(nil)
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(0)
  end

  it 'expected from angles_displays.string_al_sun \
                  +142:35:33.356 ' do
    assert_equal '+142:35:33.356', angles_displays.string_al_sun
  end

  it 'expected from angles_displays.string_dec_sun \
                  +013:58:51.522 ' do
    assert_equal '+013:58:51.522', angles_displays.string_dec_sun
  end

  it 'expected   "+220:38:04.598" from angles_displays.string_ma_sun() ' do
    assert_equal '+220:38:04.598', angles_displays.string_ma_sun
  end

  it 'expected   "+144:56:36.571" from angles_displays.string_ra_sun() ' do
    assert_equal '+144:56:36.571', angles_displays.string_ra_sun
  end

  it 'expected   "+219:24:27.798" from angles_displays.string_ta_sun() ' do
    assert_equal '+219:24:27.798', angles_displays.string_ta_sun
  end

  it 'expected from angles_displays.string_tl_sun \
                  +142:35:47.318 ' do
    assert_equal '+142:35:47.318', angles_displays.string_tl_sun
  end

  it 'expected from angles_displays.string_to_earth \
                  +023:26:06.164 ' do
    assert_equal '+023:26:06.164', angles_displays.string_to_earth
  end
end

describe 'Eot angles_displays using ajd of 2_455_055.5' do
  before(:each) do
    angles_displays.ajd = 2_455_055.5
    ajd = angles_displays.ajd
    angles_displays.ma_ta_set
    # check date for this ajd when needed.
    angles_displays.date = angles_displays.ajd_to_datetime(ajd)
  end

  it 'expected from angles_displays.degrees_to_s \
                  +000:00:00.000 ' do
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(nil)
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(0)
  end

  it 'expected from angles_displays.string_al_sun \
                  +142:35:33.356 ' do
    assert_equal '+142:35:33.356', angles_displays.string_al_sun
  end

 it 'expected from angles_displays.string_dec_sun \
                  +013:58:51.522 ' do
    assert_equal '+013:58:51.522', angles_displays.string_dec_sun
  end

  it 'expected   "-04m, 29.2s" from angles_displays.string_eot() ' do
    assert_equal '-04m, 29.2s', angles_displays.string_eot
  end

  it 'expected   "2000-01-01" from angles_displays.string_jd_to_date() ' do
    assert_equal '2000-01-01', angles_displays.string_jd_to_date
    assert_equal '2000-01-01', angles_displays.string_jd_to_date(nil)
    assert_equal '2000-01-01', angles_displays.string_jd_to_date(0)
  end

  it 'expected  "2014-08-15" from \
      angles_displays.jd_to_date_string(angles_displays.ajd)? ' do
    assert_equal '2014-08-15', angles_displays.jd_to_date_string(angles_displays.ajd)
  end

  it 'expected   "+220:38:04.598" from angles_displays.string_ma_sun() ' do
    assert_equal '+220:38:04.598', angles_displays.string_ma_sun
  end

  it 'expected   "+144:56:36.571" from angles_displays.string_ra_sun() ' do
    assert_equal '+144:56:36.571', angles_displays.string_ra_sun
  end

  it 'expected   "+219:24:27.798" from angles_displays.string_ta_sun() ' do
    assert_equal '+219:24:27.798', angles_displays.string_ta_sun
  end

  it 'expected   "12:00:00.000" from angles_displays.string_time() ' do
    assert_equal '12:00:00.000', angles_displays.string_time
    assert_equal '12:00:00.000', angles_displays.string_time(nil)
    assert_equal '12:00:00.000', angles_displays.string_time(0)
  end

  it 'expected   "12:00:00.000" from \
      angles_displays.display_time_string(Eot_aangles_displays.date)? ' do
    assert_equal '12:00:00.000', \
                 angles_displays.display_time_string(angles_displays.date)
  end

  it 'expected   "+142:35:47.318" from \
      angles_displays.string_tl_sun() ' do
    assert_equal '+142:35:47.318', angles_displays.string_tl_sun
  end

  it 'expected   "+023:26:06.164" from angles_displays.string_to_earth() ' do
    assert_equal '+023:26:06.164', angles_displays.string_to_earth
  end
end

describe 'Eot angles_displays explicit values' do
  it 'expected   "16:40:40.800" from angles_displays.string_time(16.6780) ' do
    assert_equal '16:40:40.800', angles_displays.string_time(16.6780)
  end

  it 'expected   "17:59:16.800" from angles_displays.string_time(17988) ' do
    angles_displays.date = Date.today.to_s
    assert_equal '17:59:16.800', angles_displays.string_time(17.988)
  end
end
