
# aliased_deltas_spec.rb

gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_deltas = Eot.new

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    aliased_deltas.jd = 2_456_885.0
    aliased_deltas.set_t
  end

  it 'expected from aliased_deltas.delta_epsilon \
                 -4.0697927e-05 ' do
    assert_equal(-4.0697927e-05,
                 aliased_deltas.delta_epsilon)
  end

  it 'expected from aliased_deltas.delta_oblique \
                 -0.041030825588 ' do
    assert_equal(-0.041030825588,
                 aliased_deltas.delta_oblique)
  end

  it 'expected from aliased_deltas.delta_t_ecliptic \
                 -0.041030825588' do
    assert_equal(-0.041030825588,
                 aliased_deltas.delta_t_ecliptic)
  end

  it 'expected from aliased_deltas.delta_t_elliptic \
                 0.021413249721 ' do
    assert_equal(0.021413249721,
                 aliased_deltas.delta_t_elliptic)
  end
end

describe 'tests jd of 2_456_885.0 ' do
  before(:each) do
    aliased_deltas.jd = 2_456_885.0
    aliased_deltas.set_t
  end

  it 'expected from aliased_deltas.delta_orbit \
                 0.021413249721 ' do
    assert_equal(0.021413249721,
                 aliased_deltas.delta_orbit)
  end

  it 'expected from aliased_deltas.delta_psi \
                 3.7512382e-05 ' do
    assert_equal(3.7512382e-05,
                 aliased_deltas.delta_psi)
  end

  it 'expected from aliased_deltas.eot \
                 -0.019617575867 ' do
    assert_equal(-0.019617575867,
                 aliased_deltas.eot)
  end
end

describe 'tests jd of 2_455_055.5 ' do
  before(:each) do
    aliased_deltas.jd = 2_455_055.5
    aliased_deltas.set_t
  end

  it 'expected from aliased_deltas.delta_epsilon \
                 2.2588891e-05 ' do
    assert_equal(2.2588891e-05,
                 aliased_deltas.delta_epsilon)
  end

  it 'expected from aliased_deltas.delta_oblique \
                 -0.042214797959 ' do
    assert_equal(-0.042214797959,
                 aliased_deltas.delta_oblique)
  end

  it 'expected from aliased_deltas.delta_t_ecliptic \
                 -0.042214797959 ' do
    assert_equal(-0.042214797959,
                 aliased_deltas.delta_t_ecliptic)
  end

  it 'expected from aliased_deltas.delta_t_elliptic \
                 0.01999553711 ' do
    assert_equal(0.01999553711,
                 aliased_deltas.delta_t_elliptic)
  end
end

describe 'tests jd of 2_455_055.5 ' do
  before(:each) do
    aliased_deltas.jd = 2_455_055.5
    aliased_deltas.set_t
  end

  it 'expected from aliased_deltas.delta_orbit \
                 0.01999553711 ' do
    assert_equal(0.01999553711,
                 aliased_deltas.delta_orbit)
  end

  it 'expected from aliased_deltas.delta_psi \
                 7.622895e-05 ' do
    assert_equal(7.622895e-05,
                 aliased_deltas.delta_psi)
  end

  it 'expected from aliased_deltas.eot \
                 -0.022219260849 ' do
    assert_equal(-0.022219260849,
                 aliased_deltas.eot)
  end
end
