# aliased_utilities_spec.rb

require File.expand_path('../../test_helper', __FILE__)

aliased_utilities = Eot.new

describe 'tests date of "2014-08-15"' do

  before(:each) do
    aliased_utilities.new_date("2014-08-15")  
  end

  it 'expected   "2014-08-15" for \
      aliased_utilities.date'do
    assert_equal "2014-08-15", \
                 aliased_utilities.date
  end

  it 'expected   2_456_884.5 for \
      aliased_utilities.ajd'do
    assert_equal 2_456_884.5, \
                 aliased_utilities.ajd
  end

  it 'expected   2_456_885.0 for \
      aliased_utilities.jd'do
    assert_equal 2_456_885.0, \
                 aliased_utilities.jd
  end

  it 'expected   3.8508003966038915 for \
      aliased_utilities.ma'do
    assert_equal 3.8508003966038915, \
                 aliased_utilities.ma
  end

  it 'expected   0.0 returned by \
      aliased_utilities.truncate() ' do
    assert_equal 0.0, aliased_utilities.truncate
    assert_equal 0.0, aliased_utilities.truncate(nil)
    assert_equal 0.0, aliased_utilities.truncate(0)
  end

end
