
# deltas_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

deltas = Eot.new

describe 'Tests jd of 2_456_885.0 ' do
  before(:each) do
    deltas.jd = 2_456_885.0
    deltas.set_t
  end

  it 'expected from deltas.angle_delta_epsilon \
                 -4.0697927e-05 ' do
    assert_equal(-4.0697927e-05,
                 deltas.angle_delta_epsilon)
  end

  it 'expected from deltas.angle_delta_oblique \
                 -0.041030825588 ' do
    assert_equal(-0.041030825588,
                 deltas.angle_delta_oblique)
  end

  it 'expected from deltas.angle_delta_orbit \
                 0.021413249721 ' do
    assert_equal(0.021413249721,
                 deltas.angle_delta_orbit)
  end

  it 'expected from deltas.angle_delta_psi \
                 3.7512382e-05 ' do
    assert_equal(3.7512382e-05,
                 deltas.angle_delta_psi)
  end
end

describe 'Tests ajd of 2_456_885.0 ' do
  before(:each) do
    deltas.jd = 2_456_885.0
    deltas.set_t
  end

  it 'expected from deltas.angle_equation_of_time \
                 -0.019617575867 ' do
    assert_equal(-0.019617575867,
                 deltas.angle_equation_of_time)
  end
end

describe 'Tests ajd of 2455055.5 ' do
  before(:each) do
    deltas.jd = 2_455_055.0
    deltas.set_t
  end

  it 'expected from deltas.angle_delta_epsilon \
                 2.2661507e-05 ' do
    assert_equal(2.2661507e-05,
                 deltas.angle_delta_epsilon)
  end

  it 'expected from deltas.angle_delta_oblique \
                 -0.042349048974 ' do
    assert_equal(-0.042349048974,
                 deltas.angle_delta_oblique)
  end

  it 'expected from deltas.angle_delta_orbit \
                 0.019768413457 ' do
    assert_equal(0.019768413457,
                 deltas.angle_delta_orbit)
  end

  it 'expected from deltas.angle_delta_psi \
                 7.6393415e-05 ' do
    assert_equal(7.6393415e-05,
                 deltas.angle_delta_psi)
  end
end

describe 'Tests ajd of 2455055.5 ' do
  before(:each) do
    deltas.jd = 2_455_055.0
    deltas.set_t
  end

  it 'expected from deltas.angle_equation_of_time \
                 -0.022580635517 ' do
    assert_equal(-0.022580635517,
                 deltas.angle_equation_of_time)
  end
end
