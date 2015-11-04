# moon_angles_spec.rb

require File.expand_path('../../test_helper', __FILE__)

angles = Eot.new

describe 'Tests date of "2014-08-15" ' do

  before(:each) do
    angles.new_date("2014-08-15")
  end

  it 'expected   -2.7528817371494685 from \
      angles.omega()' do
    assert_equal(-2.7528817371494685, \
                 angles.omega)
  end
end

describe 'Tests date of "2009-08-11" ' do

  before(:each) do
    angles.new_date("2009-08-11")
  end

  it 'expected   -1.0615640635268548 from \
      angles.omega()' do
    assert_equal(-1.0615640635268548, \
                 angles.omega)
  end

end