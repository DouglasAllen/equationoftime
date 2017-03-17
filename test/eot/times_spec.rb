
# @times_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    @times = Eot.new
    @times.jd = 2_456_885.0
    @times.set_t
  end

  it 'expected from @times.jd \
                 2_456_885.0 ' do
    assert_equal(2_456_885.0,
                 @times.jd)
  end

  it 'expected from @times.date.to_s \
                  2014-08-15T12:00:00+00:00 ' do
    assert_equal '2014-08-15T12:00:00+00:00',
                 @times.date_dt.to_s
  end

  it 'expected from @times.ma \
                 3.850800396604 ' do
    assert_equal(3.850800396604,
                 @times.ma)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    @times = Eot.new
    @times.jd = 2_456_885.0
    @times.set_t
  end

  it 'expected from @times.ajd_to_datetime(@times.jd).to_s \
                  2014-08-15T12:00:00+00:00 ' do
    assert_equal '2014-08-15T12:00:00+00:00',
                 @times.ajd_to_datetime(@times.jd).to_s
  end

  it 'expected from @times.astronomical_twilight_end_dt.to_s \
                  2014-08-15T19:18:46+00:00 ' do
    assert_equal('2014-08-15T19:18:46+00:00',
                 @times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected from @times.astronomical_twilight_start_dt.to_s \
                  2014-08-15T04:50:13+00:00 ' do
    assert_equal('2014-08-15T04:50:13+00:00',
                 @times.astronomical_twilight_start_dt.to_s)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    @times = Eot.new
    @times.jd = 2_456_885.0
    @times.set_t
  end

  it 'expected from @times.astronomical_twilight_end_jd \
                 2_456_885.304703514 ' do
    assert_equal(2_456_885.304703514,
                 @times.astronomical_twilight_end_jd)
  end

  it 'expected from @times.astronomical_twilight_start_jd \
                 2_456_884.7015409544 ' do
    assert_equal(2_456_884.7015409544,
                 @times.astronomical_twilight_start_jd)
  end

  it 'expected from @times.civil_twilight_end_dt.to_s \
                  2014-08-15T18:29:13+00:00 ' do
    assert_equal('2014-08-15T18:29:13+00:00',
                 @times.civil_twilight_end_dt.to_s)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    @times = Eot.new
    @times.jd = 2_456_885.0
    @times.set_t
  end

  it 'expected from @times.civil_twilight_start_dt.to_s \
                  2014-08-15T05:39:45+00:00 ' do
    assert_equal('2014-08-15T05:39:45+00:00',
                 @times.civil_twilight_start_dt.to_s)
  end

  it 'expected from @times.civil_twilight_end_jd \
                 2_456_885.2702996624 ' do
    assert_equal(2_456_885.2702996624,
                 @times.civil_twilight_end_jd)
  end

  it 'expected from @times.civil_twilight_start_jd \
                 2_456_884.735944806 ' do
    assert_equal(2_456_884.735944806,
                 @times.civil_twilight_start_jd)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    @times = Eot.new
    @times.jd = 2_456_885.0
    @times.set_t
  end

  it 'expected from @times.eot_jd \
                 -0.003122234171 ' do
    assert_equal(-0.003122234171,
                 @times.eot_jd)
  end

  it 'expected from @times.local_noon_dt().to_s \
                  2014-08-15T12:04:29+00:00 ' do
    assert_equal '2014-08-15T12:04:29+00:00',
                 @times.local_noon_dt.to_s
  end

  it 'expected  from @times.nautical_twilight_end_dt.to_s \
                  2014-08-15T18:53:59+00:00 ' do
    assert_equal('2014-08-15T18:53:59+00:00',
                 @times.nautical_twilight_end_dt.to_s)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    @times = Eot.new
    @times.jd = 2_456_885.0
    @times.set_t
  end

  it 'expected from @times.nautical_twilight_start_dt.to_s \
                  2014-08-15T05:15:00+00:00 ' do
    assert_equal('2014-08-15T05:15:00+00:00',
                 @times.nautical_twilight_start_dt.to_s)
  end

  it 'expected from @times.nautical_twilight_end_jd \
                 2_456_885.287489046  ' do
    assert_equal(2_456_885.287489046,
                 @times.nautical_twilight_end_jd)
  end

  it 'expected from @times.nautical_twilight_start_jd \
                 2_456_884.7187554226 ' do
    assert_equal(2_456_884.7187554226,
                 @times.nautical_twilight_start_jd)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    @times = Eot.new
    @times.jd = 2_456_885.0
    @times.set_t
  end

  it 'expected from @times.sunrise_dt \
                  2014-08-15T06:01:03+00:00 ' do
    assert_equal '2014-08-15T06:01:03+00:00',
                 @times.sunrise_dt.to_s
  end

  it 'expected from @times.sunset_dt \
                  2014-08-15T18:07:55+00:00 ' do
    assert_equal '2014-08-15T18:07:55+00:00',
                 @times.sunset_dt.to_s
  end

  it 'expected from @times.sunrise_jd \
                 2_456_884.750736842 ' do
    assert_equal(2_456_884.750736842,
                 @times.sunrise_jd)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    @times = Eot.new
    @times.jd = 2_456_885.0
    @times.set_t
  end

  it 'expected from @times.sunset_jd \
                 2_456_885.2555076266 ' do
    assert_equal(2_456_885.2555076266,
                 @times.sunset_jd)
  end

  it 'expected from @times.time_delta_oblique \
                 -9.403572544519 ' do
    assert_equal(-9.403572544519,
                 @times.time_delta_oblique)
  end

  it 'expected from @times.time_delta_orbit \
                 4.907555338692 ' do
    assert_equal(4.907555338692,
                 @times.time_delta_orbit)
  end

  it 'expected from @times.time_eot \
                 -4.496017205827 ' do
    assert_equal(-4.496017205827,
                 @times.time_eot)
  end
end

describe 'tests jd of 2_455_055.0 ' do
  before(:all) do
    @times = Eot.new
    @times.jd = 2_455_055.0
    @times.set_t
  end

  it 'expected from @times.jd \
                 2_455_055.0 ' do
    assert_equal(2_455_055.0,
                 @times.jd)
  end

  it 'expected from @times.date.to_s \
                  2009-08-11T12:00:00+00:00 ' do
    assert_equal '2009-08-11T12:00:00+00:00',
                 @times.date_dt.to_s
  end

  it 'expected from @times.ma \
                 3.787121818895 ' do
    assert_equal(3.787121818895,
                 @times.ma)
  end
end

describe 'tests jd of 2_455_055.0 ' do
  before(:all) do
    @times = Eot.new
    @times.jd = 2_455_055.0
    @times.set_t
  end

  it 'expected from @times.ajd_to_datetime(@times.jd).to_s \
                  2009-08-11T12:00:00+00:00 ' do
    assert_equal '2009-08-11T12:00:00+00:00',
                 @times.ajd_to_datetime(@times.jd).to_s
  end

  it 'expected from @times.eot_jd \
                 -0.003593819761' do
    assert_equal(-0.003593819761,
                 @times.eot_jd)
  end

  it 'expected from @times.sunrise_dt().to_s \
                  2009-08-11T06:01:43+00:00 ' do
    assert_equal '2009-08-11T06:01:43+00:00',
                 @times.sunrise_dt.to_s
  end
end

describe 'tests jd of 2_455_055.0 ' do
  before(:all) do
    @times = Eot.new
    @times.jd = 2_455_055.0
    @times.set_t
  end

  it 'expected from @times.sunrise_jd \
                 2_455_054.7511958424 ' do
    assert_equal(2_455_054.7511958424,
                 @times.sunrise_jd)
  end

  it 'expected from @times.sunset_dt \
                  2009-08-11T18:08:37+00:00 ' do
    assert_equal '2009-08-11T18:08:37+00:00',
                 @times.sunset_dt.to_s
  end

  it 'expected from @times.sunset_jd \
                 2_455_055.255991797 ' do
    assert_equal(2_455_055.255991797,
                 @times.sunset_jd)
  end

  it 'expected from @times.time_eot \
                 -5.175100455389 ' do
    assert_equal(-5.175100455389,
                 @times.time_eot)
  end
end
