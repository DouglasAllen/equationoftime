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
    p angles_displays.date = angles_displays.ajd_to_datetime(ajd)
  end

  it 'expected from angles_displays.degrees_to_s \
                  +000:00:00.000 ' do
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(nil)
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(0)
  end

  it 'expected from angles_displays.string_al_sun \
                  +142:35:33.356 ' do
    assert_equal '+142:35:33.356',
                 angles_displays.string_al_sun
  end

  it 'expected from angles_displays.string_arc_secs(5.023) \
                  5.023\" ' do
    assert_equal "5.023\"",
                 angles_displays.string_arc_secs(5.023)
  end

  it 'expected from angles_displays.string_dec_sun \
                  +013:58:51.522 ' do
    assert_equal '+013:58:51.522',
                 angles_displays.string_dec_sun
  end

  it 'expected from angles_displays.string_delta_oblique \
                  -00:02.461 ' do
    assert_equal '-00:02.461',
                 angles_displays.string_delta_oblique
  end

  it 'expected from angles_displays.string_delta_orbit \
                  +00:01.284 ' do
    assert_equal '+00:01.284',
                 angles_displays.string_delta_orbit
  end

  it 'expected from angles_displays.string_eqc \
                  -001:13:36.800 ' do
    assert_equal '-001:13:36.800',
                 angles_displays.string_eqc
  end

  it 'expected from angles_displays.string_eot \
                  -04m, 29.2s ' do
    assert_equal '-04m, 29.2s',
                 angles_displays.string_eot
  end

  it 'expected from angles_displays.string_gha(angles_displays.gha_sun) \
                  356° 28\' 13.761" ' do
    assert_equal "356\u00B0 28' 13.761\"",
                 angles_displays.string_gha(angles_displays.gha_sun)
  end

  it 'expected from angles_displays.string_gha(angles_displays.tl_aries) \
                  356° 28\' 13.761" ' do
    assert_equal "356\u00B0 28' 13.761\"",
                 angles_displays.string_gha(angles_displays.tl_aries)
  end

  it 'expected from angles_displays.string_ma_sun \
                  +220:38:04.598 ' do
    assert_equal '+220:38:04.598',
                 angles_displays.string_ma_sun
  end

  it 'expected from angles_displays.string_ra_sun \
                  +144:56:36.571 ' do
    assert_equal '+144:56:36.571',
                 angles_displays.string_ra_sun
  end

  it 'expected from angles_displays.string_ta_sun \
                  +219:24:27.798 ' do
    assert_equal '+219:24:27.798',
                 angles_displays.string_ta_sun
  end

  it 'expected from angles_displays.string_tl_sun \
                  +142:35:47.318 ' do
    assert_equal '+142:35:47.318',
                 angles_displays.string_tl_sun
  end

  it 'expected from angles_displays.string_to_earth \
                  +023:26:06.164 ' do
    assert_equal '+023:26:06.164',
                 angles_displays.string_to_earth
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
                  +139:26:03.631 ' do
    assert_equal '+139:26:03.631',
                 angles_displays.string_al_sun
  end

  it 'expected from angles_displays.string_dec_sun \
                  +014:59:30.817 ' do
    assert_equal '+014:59:30.817',
                 angles_displays.string_dec_sun
  end

  it 'expected from angles_displays.string_delta_oblique \
                  -00:02.532 ' do
    assert_equal '-00:02.532',
                 angles_displays.string_delta_oblique
  end

  it 'expected from angles_displays.string_delta_orbit \
                  +00:01.199 ' do
    assert_equal '+00:01.199',
                 angles_displays.string_delta_orbit
  end

  it 'expected from angles_displays.string_eqc \
                  -001:08:44.376 ' do
    assert_equal '-001:08:44.376',
                 angles_displays.string_eqc
  end

  it 'expected from angles_displays.string_eot \
                  -05m, 04.70s ' do
    assert_equal '-05m, 04.70s',
                 angles_displays.string_eot
  end

  it 'expected from angles_displays.string_ma_sun \
                  +217:28:44.029 ' do
    assert_equal '+217:28:44.029',
                 angles_displays.string_ma_sun
  end

  it 'expected from angles_displays.string_mo_earth \
                  +023:26:16.904 ' do
    assert_equal '+023:26:16.904',
                 angles_displays.string_mo_earth
  end

  it 'expected from angles_displays.string_ra_sun \
                  +141:51:11.058 ' do
    assert_equal '+141:51:11.058',
                 angles_displays.string_ra_sun
  end

  it 'expected from angles_displays.string_ta_sun \
                  +216:19:59.653 ' do
    assert_equal '+216:19:59.653',
                 angles_displays.string_ta_sun
  end

  it 'expected from angles_displays.string_tl_sun \
                  +139:26:09.086 ' do
    assert_equal '+139:26:09.086',
                 angles_displays.string_tl_sun
  end

  it 'expected from angles_displays.string_to_earth \
                  +023:26:21.564 ' do
    assert_equal '+023:26:21.564',
                 angles_displays.string_to_earth
  end

end
