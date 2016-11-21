
# deltas_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

deltas = Eot.new

describe 'Tests ajd of 2_456_885.0 ' do
  before(:each) do
    deltas.jd = 2_456_885.0
    deltas.set_t
  end

  it 'expected from deltas.angle_delta_epsilon.round(10) \
                 -4.06979e-05 ' do
    assert_equal(-4.06979e-05,
                 deltas.angle_delta_epsilon.round(10))
  end

  it 'expected from deltas.angle_delta_oblique.round(10) \
                 -0.0410308256 ' do
    assert_equal(-0.0410308256,
                 deltas.angle_delta_oblique.round(10))
  end

  it 'expected from deltas.angle_delta_orbit.round(10) \
                 0.0214132497 ' do
    assert_equal(0.0214132497,
                 deltas.angle_delta_orbit.round(10))
  end

  it 'expected from deltas.angle_delta_psi.round(10) \
                 3.75124e-05 ' do
    assert_equal(3.75124e-05,
                 deltas.angle_delta_psi.round(10))
  end

  it 'expected from deltas.angle_equation_of_time.round(10) \
                 -0.0196175759 ' do
    assert_equal(-0.0196175759,
                 deltas.angle_equation_of_time.round(10))
  end
end

describe 'Tests ajd of 2455055.5 ' do
  before(:each) do
    deltas.jd = 2_455_055.0
    deltas.set_t
  end

  it 'expected from deltas.angle_delta_epsilon.round(10) \
                 2.26615e-05 ' do
    assert_equal(2.26615e-05,
                 deltas.angle_delta_epsilon.round(10))
  end

  it 'expected from deltas.angle_delta_oblique.round(10) \
                 -0.042349049 ' do
    assert_equal(-0.042349049,
                 deltas.angle_delta_oblique.round(10))
  end

  it 'expected from deltas.angle_delta_orbit.round(10) \
                 0.0197684135 ' do
    assert_equal(0.0197684135,
                 deltas.angle_delta_orbit.round(10))
  end

  it 'expected from deltas.angle_delta_psi.round(10) \
                 7.63934e-05 ' do
    assert_equal(7.63934e-05,
                 deltas.angle_delta_psi.round(10))
  end

  it 'expected from deltas.angle_equation_of_time.round(10) \
                 -0.0225806355 ' do
    assert_equal(-0.0225806355,
                 deltas.angle_equation_of_time.round(10))
  end
end
