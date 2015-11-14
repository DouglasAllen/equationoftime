gem "minitest"
require "minitest/autorun"
require "blah"

class TestBlah < Minitest::Test
  def test_sanity
    flunk "write tests or I will kneecap you"
  end
end
