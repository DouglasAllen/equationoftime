# deltas_spec.rb

require File.expand_path('../../test_helper', __FILE__)

angles = Eot.new

describe 'Tests date of "2014-08-15" ' do

  before(:each) do
    angles.new_date("2014-08-15")
  end

  it 'expected   -0.04103082558803539 from \
      angles.delta_t_ecliptic()' do
    assert_equal(-0.04103082558803539, \
                 angles.delta_t_ecliptic)
  end

  it 'expected   0.021413249720702462 from \
      angles.delta_t_elliptic()' do
    assert_equal(0.021413249720702462, \
                 angles.delta_t_elliptic)
  end

  it 'expected   -4.069792718159396e-05 from \
      angles.delta_epsilon()' do
    assert_equal(-4.069792718159396e-05, \
                 angles.delta_epsilon)
  end

  it 'expected   -0.04103082558803539 from \
      angles.delta_oblique()' do
    assert_equal(-0.04103082558803539, \
                 angles.delta_oblique)
  end

  it 'expected   0.021413249720702462 from \
      angles.delta_orbit()' do
    assert_equal(0.021413249720702462, \
                 angles.delta_orbit)
  end

  it 'expected   3.75123821843003e-05 from \
      angles.delta_psi()' do
    assert_equal(3.75123821843003e-05, \
                 angles.delta_psi)
  end

  it 'expected   3.4412912434333975e-05 from \
      angles.eq_of_equinox()' do
    assert_equal(3.4412912434333975e-05, \
                 angles.eq_of_equinox)
  end

  it 'expected   -0.01961757586733293 from \
      angles.eot()' do
    assert_equal(-0.01961757586733293, \
                 angles.eot)
  end

end

describe 'Tests date of "2009-08-11" ' do

  before(:each) do
    angles.new_date("2009-08-11")
  end

  it 'expected   -0.04234904897476355 from \
      angles.delta_t_ecliptic()' do
    assert_equal(-0.04234904897476355, \
                 angles.delta_t_ecliptic)
  end

  it 'expected   0.019768413456709915  from \
      angles.delta_t_elliptic()' do
    assert_equal(0.019768413456709915, \
                 angles.delta_t_elliptic)
  end

  it 'expected   2.2661506700250296e-05 from \
      angles.delta_epsilon()' do
    assert_equal(2.2661506700250296e-05, \
                 angles.delta_epsilon)
  end

  it 'expected   -0.04234904897476355 from \
      angles.delta_oblique()' do
    assert_equal(-0.04234904897476355, \
                 angles.delta_oblique)
  end

  it 'expected   0.019768413456709915 from \
      angles.delta_orbit()' do
    assert_equal(0.019768413456709915, \
                 angles.delta_orbit)
  end

  it 'expected   7.639341522992976e-05 from \
      angles.delta_psi()' do
    assert_equal(7.639341522992976e-05, \
                 angles.delta_psi)
  end

  it 'expected   7.007879585074761e-05 from \
      angles.eq_of_equinox()' do
    assert_equal(7.007879585074761e-05, \
                 angles.eq_of_equinox)
  end

  it 'expected   -0.022580635518053633 from \
      angles.eot()' do
    assert_equal(-0.022580635518053633, \
                 angles.eot)
  end
end