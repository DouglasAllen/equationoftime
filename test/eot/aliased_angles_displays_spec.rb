# aliased_angles_displays_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_angles_displays = Eot.new

describe 'aliased_angles_displays using ajd of 2456885.0' do

  before(:each) do
    aliased_angles_displays.jd = 2_456_885.0
    aliased_angles_displays.set_t
  end

  it 'expected from aliased_angles_displays.apparent_longitude_string \
                  +142:35:33.356 ' do
    assert_equal '+142:35:33.356',
                 aliased_angles_displays.apparent_longitude_string
  end

  it 'expected from
      from aliased_angles_displays.declination_string \
                  +013:58:51.522 ' do
    assert_equal '+013:58:51.522',
                 aliased_angles_displays.declination_string
  end

  it 'expected from aliased_angles_displays.mean_anomaly_string \
                  +220:38:04.598 ' do
    assert_equal '+220:38:04.598',
                 aliased_angles_displays.mean_anomaly_string
  end

  it 'expected from aliased_angles_displays.mean_obliquity_string \
                  +023:26:14.558 ' do
    assert_equal '+023:26:14.558',
                 aliased_angles_displays.mean_obliquity_string
  end

  it 'expected from aliased_angles_displays.right_ascension_string \
                  +144:56:36.571 ' do
    assert_equal '+144:56:36.571',
                 aliased_angles_displays.right_ascension_string
  end

  it 'expected from aliased_angles_displays.true_anomaly_string \
                  +219:24:27.798 ' do
    assert_equal '+219:24:27.798',
                 aliased_angles_displays.true_anomaly_string
  end

  it 'expected from aliased_angles_displays.true_longitude_string \
                  +142:35:47.318 ' do
    assert_equal '+142:35:47.318',
                 aliased_angles_displays.true_longitude_string
  end

  it 'expected from aliased_angles_displays.true_obliquity_string \
                  +023:26:06.164 ' do
    assert_equal '+023:26:06.164',
                 aliased_angles_displays.true_obliquity_string
  end

end

describe 'Eot angles_displays using ajd of 2_455_055.5' do
  before(:each) do
    aliased_angles_displays.jd = 2_455_055.5
    ajd = aliased_angles_displays.ajd
    aliased_angles_displays.set_t
    # check date for this ajd when needed.
    aliased_angles_displays.date = aliased_angles_displays.ajd_to_datetime(ajd)
  end

  it 'expected from aliased_angles_displays.apparent_longitude_string \
                  +139:26:03.631 ' do
    assert_equal '+139:26:03.631',
                 aliased_angles_displays.apparent_longitude_string
  end

  it 'expected from
      from aliased_angles_displays.declination_string \
                  +014:59:30.817 ' do
    assert_equal '+014:59:30.817',
                 aliased_angles_displays.declination_string
  end

  it 'expected from aliased_angles_displays.mean_anomaly_string \
                  +217:28:44.029 ' do
    assert_equal '+217:28:44.029',
                 aliased_angles_displays.mean_anomaly_string
  end

  it 'expected from aliased_angles_displays.mean_obliquity_string \
                  +023:26:16.904 ' do
    assert_equal '+023:26:16.904',
                 aliased_angles_displays.mean_obliquity_string
  end

  it 'expected from aliased_angles_displays.right_ascension_string \
                  +141:51:11.058 ' do
    assert_equal '+141:51:11.058',
                 aliased_angles_displays.right_ascension_string
  end

  it 'expected from aliased_angles_displays.true_anomaly_string \
                  +216:19:59.653 ' do
    assert_equal '+216:19:59.653',
                 aliased_angles_displays.true_anomaly_string
  end

  it 'expected from aliased_angles_displays.true_longitude_string \
                  +139:26:09.086 ' do
    assert_equal '+139:26:09.086',
                 aliased_angles_displays.true_longitude_string
  end

  it 'expected from aliased_angles_displays.true_obliquity_string \
                  +023:26:21.564 ' do
    assert_equal '+023:26:21.564',
                 aliased_angles_displays.true_obliquity_string
  end


end
