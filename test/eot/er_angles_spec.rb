# er_angles_spec.rb (earth rotation)

require File.expand_path('../../test_helper', __FILE__)

angles = Eot.new

describe 'Tests date of "2014-08-15" ' do

  before(:each) do
    angles.new_date("2014-08-15")
  end

  it 'expected   2.5100898649874446 from \
      angles.mean_longitude_aries()' do
    assert_equal(2.5100898649874446, \
                 angles.mean_longitude_aries)
  end

  it 'expected   2.5101242776566672 from \
      angles.true_longitude_aries()' do
    assert_equal(2.5101242776566672, \
                 angles.true_longitude_aries)
  end

  it 'expected   2.5100898649874446 from \
      angles.ml_aries()' do
    assert_equal(2.5100898649874446, \
                 angles.ml_aries)
  end

  it 'expected   2.5101242776566672 from \
      angles.tl_aries()' do
    assert_equal(2.5101242776566672, \
                 angles.tl_aries)
  end
end

describe 'Tests date of "2009-08-11" ' do

  before(:each) do
    angles.new_date("2009-08-11")
  end

  it 'expected   2.4449073822678455 from \
      angles.mean_longitude_aries()' do
    assert_equal(2.4449073822678455, \
                 angles.mean_longitude_aries)
  end

  it 'expected   2.444977460790369 from \
      angles.true_longitude_aries()' do
    assert_equal(2.444977460790369, \
                 angles.true_longitude_aries)
  end

  it 'expected   2.4449073822678455 from \
      angles.ml_aries()' do
    assert_equal(2.4449073822678455, \
                 angles.ml_aries)
  end

  it 'expected   2.444977460790369 from \
      angles.tl_aries()' do
    assert_equal(2.444977460790369, \
                 angles.tl_aries)
  end

end

