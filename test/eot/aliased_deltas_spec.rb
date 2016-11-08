
# aliased_deltas_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_deltas = Eot.new

describe 'tests ajd of 2456885.0 ' do
  before(:each) do
    aliased_deltas.jd = 2_456_885.0
    aliased_deltas.set_t
  end

  it 'expected from aliased_deltas.delta_epsilon.round(10) \
                 -4.06979e-05 ' do
    assert_equal(-4.06979e-05,
                 aliased_deltas.delta_epsilon.round(10))
  end

  it 'expected from aliased_deltas.delta_oblique.round(10) \
                 -0.0410308256 ' do
    assert_equal(-0.0410308256,
                 aliased_deltas.delta_oblique.round(10))
  end

  it 'expected from aliased_deltas.delta_t_ecliptic.round(10) \
                 -0.0410308256' do
    assert_equal(-0.0410308256,
                 aliased_deltas.delta_t_ecliptic.round(10))
  end

  it 'expected from aliased_deltas.delta_t_elliptic.round(10) \
                 0.0214132497 ' do
    assert_equal(0.0214132497,
                 aliased_deltas.delta_t_elliptic.round(10))
  end

  it 'expected from aliased_deltas.delta_orbit.round(10) \
                 0.0214132497 ' do
    assert_equal(0.0214132497,
                 aliased_deltas.delta_orbit.round(10))
  end

  it 'expected from aliased_deltas.delta_psi.round(10) \
                 3.75124e-05 ' do
    assert_equal(3.75124e-05,
                 aliased_deltas.delta_psi.round(10))
  end

  it 'expected from aliased_deltas.eot.round(10) \
                 -0.0196175759 ' do
    assert_equal(-0.0196175759,
                 aliased_deltas.eot.round(10))
  end
end

describe 'tests ajd of 2455055.5 ' do
  before(:each) do
    aliased_deltas.jd = 2_455_055.0
    aliased_deltas.set_t
  end

  it 'expected from aliased_deltas.delta_epsilon.round(10) \
                 2.26615e-05 ' do
    assert_equal(2.26615e-05,
                 aliased_deltas.delta_epsilon.round(10))
  end

  it 'expected from aliased_deltas.delta_oblique.round(10) \
                 -0.042349049 ' do
    assert_equal(-0.042349049,
                 aliased_deltas.delta_oblique.round(10))
  end

  it 'expected from aliased_deltas.delta_t_ecliptic.round(10) \
                 -0.042349049 ' do
    assert_equal(-0.042349049,
                 aliased_deltas.delta_t_ecliptic.round(10))
  end

  it 'expected from aliased_deltas.delta_t_elliptic.round(10) \
                 0.0197684135 ' do
    assert_equal(0.0197684135,
                 aliased_deltas.delta_t_elliptic.round(10))
  end

  it 'expected from aliased_deltas.delta_orbit.round(10) \
                 0.0197684135 ' do
    assert_equal(0.0197684135,
                 aliased_deltas.delta_orbit.round(10))
  end

  it 'expected from aliased_deltas.delta_psi.round(10) \
                 7.63934e-05 ' do
    assert_equal(7.63934e-05,
                 aliased_deltas.delta_psi.round(10))
  end

  it 'expected from aliased_deltas.eot.round(10) \
                 -0.0225806355 ' do
    assert_equal(-0.0225806355,
                 aliased_deltas.eot.round(10))
  end
end


