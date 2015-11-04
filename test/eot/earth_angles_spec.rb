# earth_angles_spec.rb

require File.expand_path('../../test_helper', __FILE__)

angles = Eot.new

describe 'Tests date of "2014-08-15" ' do

  before(:each) do
    angles.new_date("2014-08-15")
  end

  it 'expected   0.016702468499021204 from \
      angles.eccentricity_earth_orbit()' do
    assert_equal(0.016702468499021204, \
                 angles.eccentricity_earth_orbit)
  end

  it 'expected   0.016702468499021204 from  \
      angles.eccentricity_earth()' do
    assert_equal(0.016702468499021204, \
                 angles.eccentricity_earth)
  end

  it 'expected   1.5857841877939605 from \
      angles.horizon_angle(1)' do
    assert_equal(1.5857841877939605, \
                 angles.horizon_angle(1))
  end

  it 'expected   1.5857841877939605 from \
      angles.ha_sun(1)' do
    assert_equal(1.5857841877939605, \
                 angles.ha_sun(1))
  end

  it 'expected   0.40905940254265843 from \
      angles.mean_obliquity()' do
    assert_equal(0.40905940254265843, \
                 angles.mean_obliquity)
  end

  it 'expected   0.40905940254265843 from \
      angles.mean_obliquity_of_ecliptic()' do
    assert_equal(0.40905940254265843, \
                 angles.mean_obliquity_of_ecliptic)
  end

  it 'expected   0.40901870461547685 from \
      angles.obliquity_correction()' do
    assert_equal(0.40901870461547685, \
                 angles.obliquity_correction)
  end

  it 'expected   0.40905940254265843 from \
      angles.mo_earth()' do
    assert_equal(0.40905940254265843, \
                 angles.mo_earth)
  end

  it 'expected   0.40901870461547685 from \
      angles.true_obliquity()' do
    assert_equal(0.40901870461547685, \
                 angles.true_obliquity)
  end

  it 'expected   0.40901870461547685 from \
      angles.to_earth()' do
    assert_equal(0.40901870461547685, \
                 angles.to_earth)
  end
end

describe 'Tests date of "2009-08-11" ' do

  before(:each) do
    angles.new_date("2009-08-11")
  end

  it 'expected   0.016704576164208475 from \
      angles.eccentricity_earth_orbit()' do
    assert_equal(0.016704576164208475, \
                 angles.eccentricity_earth_orbit)
  end

  it 'expected   0.016704576164208475 from \
      angles.eccentricity_earth()' do
    assert_equal(0.016704576164208475, \
                 angles.eccentricity_earth)
  end

  it 'expected   1.585863261753274 from \
      angles.horizon_angle()' do
    assert_equal(1.585863261753274, \
                 angles.horizon_angle(1))
  end

  it 'expected   1.585863261753274 from \
      angles.ha_sun(1)' do
    assert_equal(1.585863261753274, \
                 angles.ha_sun(1))
  end

  it 'expected   0.4090707793981491 from \
      angles.mean_obliquity()' do
    assert_equal(0.4090707793981491, \
                 angles.mean_obliquity)
  end

  it 'expected   0.4090934409048494 from \
      angles.obliquity_correction()' do
    assert_equal(0.4090934409048494, \
                 angles.obliquity_correction)
  end

  it 'expected   0.4090707793981491 from \
      angles.mo_earth()' do
    assert_equal(0.4090707793981491, \
                 angles.mo_earth)
  end

  it 'expected   0.4090934409048494 from \
      angles.true_obliquity()' do
    assert_equal(0.4090934409048494, \
                 angles.true_obliquity)
  end

  it 'expected   0.4090934409048494 from \
      angles.to_earth()' do
    assert_equal(0.4090934409048494, \
                 angles.to_earth)
  end
end