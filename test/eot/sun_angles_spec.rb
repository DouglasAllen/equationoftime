# angles_spec.rb

require File.expand_path('../../test_helper', __FILE__)

angles = Eot.new

describe 'Tests date of "2014-08-15" ' do

  before(:each) do
    angles.new_date("2014-08-15")
  end

  it 'expected   2.4887103398436143 from \
      angles.apparent_longitude()' do
    assert_equal(2.4887103398436143, \
                 angles.apparent_longitude)
  end

  it 'expected   2.4887103398436143 from \
      angles.al_sun()' do
    assert_equal(2.4887103398436143, \
                 angles.al_sun)
  end

  it 'expected   0.24401410218543554 from \
      angles.declination()' do
    assert_equal(0.24401410218543554, \
                 angles.declination)
  end

  it 'expected   -0.021413249720702462 from \
      angles.equation_of_center()' do
    assert_equal(-0.021413249720702462, \
                 angles.equation_of_center)
  end

  it 'expected   2.5101912804141424 from \
      angles.geometric_mean_longitude()' do
    assert_equal(2.5101912804141424, \
                 angles.geometric_mean_longitude)
  end

  it 'expected   3.8508003966038915 from \
      angles.mean_anomaly()' do
    assert_equal(3.8508003966038915, \
                 angles.mean_anomaly)
  end

  it 'expected   -0.021413249720702462 from \
      angles.centre()' do
    assert_equal(-0.021413249720702462, \
                 angles.center)
  end

  it 'expected   0.24401410218543554 from \
      angles.dec_sun()' do
    assert_equal(0.24401410218543554, \
                 angles.dec_sun)
  end

  it 'expected   2.5101912804141424 from \
      angles.gml_sun()' do
    assert_equal(2.5101912804141424, \
                 angles.gml_sun)
  end

  it 'expected   3.8508003966038915 from \
      angles.ma_sun()' do
    assert_equal(3.8508003966038915, \
                 angles.ma_sun)
  end

  it 'expected   2.5297411654316497 from \
      angles.right_ascension()' do
    assert_equal(2.5297411654316497, \
                 angles.right_ascension)
  end

  it 'expected   3.8293871468831893 from \
      angles.true_anomaly()' do
    assert_equal(3.8293871468831893, \
                 angles.true_anomaly)
  end

  it 'expected   2.48877803069344 from \
      angles.true_longitude()' do
    assert_equal(2.48877803069344, \
                 angles.true_longitude)
  end

  it 'expected   2.5297411654316497 from \
      angles.ra_sun()' do
    assert_equal(2.5297411654316497, \
                 angles.ra_sun)
  end

  it 'expected   3.8293871468831893 from \
      angles.ta_sun()' do
    assert_equal(3.8293871468831893, \
                 angles.ta_sun)
  end

  it 'expected   2.48877803069344 from \
      angles.tl_sun()' do
    assert_equal(2.48877803069344, \
                 angles.tl_sun)
  end
end


describe 'Tests date of "2009-08-11" ' do

  before(:each) do
    angles.new_date("2009-08-11")
  end

  it 'expected   3.7871218188949207 from \
      angles.ma' do
    assert_equal(3.7871218188949207, \
                 angles.mean_anomaly)
  end

  it 'expected   2.4252140645725033 from \
      angles.apparent_longitude()' do
    assert_equal(2.4252140645725033, \
                 angles.apparent_longitude)
  end

  it 'expected   0.2642691272294404 from \
      angles.declination()' do
    assert_equal(0.2642691272294404, \
                 angles.declination)
  end

  it 'expected   -0.019768413456709915 from \
      angles.equation_of_center()' do
    assert_equal(-0.019768413456709915, \
                 angles.equation_of_center)
  end

  it 'expected   2.445008945789877 from \
      angles.geometric_mean_longitude()' do
    assert_equal(2.445008945789877, \
                 angles.geometric_mean_longitude)
  end

  it 'expected   3.7871218188949207 from \
      angles.mean_anomaly()' do
    assert_equal(3.7871218188949207, \
                 angles.mean_anomaly)
  end

  it 'expected   2.4252140645725033 from \
      angles.al_sun()' do
    assert_equal(2.4252140645725033, \
                 angles.al_sun)
  end

  it 'expected   -0.019768413456709915 from \
      angles.center()' do
    assert_equal(-0.019768413456709915, \
                 angles.center)
  end

  it 'expected   0.2642691272294404 from \
      angles.dec_sun()' do
    assert_equal(0.2642691272294404, \
                 angles.dec_sun)
  end

  it 'expected   2.445008945789877 from \
      angles.gml_sun()' do
    assert_equal(2.445008945789877, \
                 angles.gml_sun)
  end

  it 'expected   3.7871218188949207 from \
      angles.ma_sun()' do
    assert_equal(3.7871218188949207, \
                 angles.ma_sun)
  end

  it 'expected   2.467563113547267 from \
      angles.right_ascension()' do
    assert_equal(2.467563113547267, \
                 angles.right_ascension)
  end

  it 'expected   3.767353405438211 from \
      angles.true_anomaly()' do
    assert_equal(3.767353405438211, \
                 angles.true_anomaly)
  end

  it 'expected   2.4252405323331674 from \
      angles.true_longitude()' do
    assert_equal(2.4252405323331674, \
                 angles.true_longitude)
  end

  it 'expected   2.467563113547267 from \
      angles.ra_sun()' do
    assert_equal(2.467563113547267, \
                 angles.ra_sun)
  end

  it 'expected   3.767353405438211 from \
      angles.ta_sun()' do
    assert_equal(3.767353405438211, \
                 angles.ta_sun)
  end

  it 'expected   2.4252405323331674 from \
      angles.tl_sun()' do
    assert_equal(2.4252405323331674, \
                 angles.tl_sun)
  end
end

