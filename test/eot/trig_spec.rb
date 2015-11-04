# trig_spec.rb

require File.expand_path('../../test_helper', __FILE__)

angles = Eot.new

describe 'Tests date of "2014-08-15" ' do

  before(:each) do
    angles.new_date("2014-08-15")
  end

  it 'expected   -0.7943361570447028 from \
      angles.cosine_apparent_longitude()' do
    assert_equal(-0.7943361570447028, \
                 angles.cosine_apparent_longitude)
  end

  it 'expected   -0.7943772759574919 from \
      angles.cosine_true_longitude()' do
    assert_equal(-0.7943772759574919, \
                 angles.cosine_true_longitude)
  end

  it 'expected   0.9175115346811911 from \
      angles.cosine_true_obliquity()' do
    assert_equal(0.9175115346811911, \
                 angles.cosine_true_obliquity)
  end

  it 'expected   -0.7943361570447028 from \
      angles.cosine_al_sun()' do
    assert_equal(-0.7943361570447028, \
                 angles.cosine_al_sun)
  end

  it 'expected   -0.7943772759574919 from \
      angles.cosine_tl_sun()' do
    assert_equal(-0.7943772759574919, \
                 angles.cosine_tl_sun)
  end

  it 'expected   0.9175115346811911 from \
      angles.cosine_to_earth()' do
    assert_equal(0.9175115346811911, \
                 angles.cosine_to_earth)
  end

  it 'expected   0.6074784519729512 from \
      angles.sine_apparent_longitude()' do
    assert_equal(0.6074784519729512, \
                 angles.sine_apparent_longitude)
  end

  it 'expected   0.6074246812917259 from \
      angles.sine_true_longitude()' do
    assert_equal(0.6074246812917259, \
                 angles.sine_true_longitude)
  end

  it 'expected   0.6074784519729512 from \
      angles.sine_al_sun()' do
    assert_equal(0.6074784519729512, \
                 angles.sine_al_sun)
  end

  it 'expected   0.6074246812917259 from \
      angles.sine_tl_sun()' do
    assert_equal(0.6074246812917259, \
                 angles.sine_tl_sun)
  end
end

describe 'Tests date of "2009-08-11" ' do

  before(:each) do
    angles.new_date("2009-08-11")
  end

  it 'expected   -0.7541886969975007 from \
      angles.cosine_apparent_longitude()' do
    assert_equal(-0.7541886969975007, \
                 angles.cosine_apparent_longitude)
  end

  it 'expected   -0.7542060769936684 from \
      angles.cosine_true_longitude()' do
    assert_equal(-0.7542060769936684, \
                 angles.cosine_true_longitude)
  end

  it 'expected   0.9174818088112336 from \
      angles.cosine_true_obliquity()' do
    assert_equal(0.9174818088112336, \
                 angles.cosine_true_obliquity)
  end

  it 'expected   -0.7541886969975007 from \
      angles.cosine_al_sun()' do
    assert_equal(-0.7541886969975007, \
                 angles.cosine_al_sun)
  end

  it 'expected   -0.7542060769936684 from \
      angles.cosine_tl_sun()' do
    assert_equal(-0.7542060769936684, \
                 angles.cosine_tl_sun)
  end

  it 'expected   0.9174818088112336 from \
      angles.cosine_to_earth()' do
    assert_equal(0.9174818088112336, \
                 angles.cosine_to_earth)
  end

  it 'expected   0.6566577566139093 from \
      angles.sine_apparent_longitude()' do
    assert_equal(0.6566577566139093, \
                 angles.sine_apparent_longitude)
  end

  it 'expected   0.6566377946979757 from \
      angles.sine_true_longitude()' do
    assert_equal(0.6566377946979757, \
                 angles.sine_true_longitude)
  end

  it 'expected   0.6566577566139093 from \
      angles.sine_al_sun()' do
    assert_equal(0.6566577566139093, \
                 angles.sine_al_sun)
  end

  it 'expected   0.6566377946979757 from \
      angles.sine_tl_sun()' do
    assert_equal(0.6566377946979757, \
                 angles.sine_tl_sun)
  end
end