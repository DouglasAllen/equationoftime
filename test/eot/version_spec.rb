gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

class TestEot < Minitest::Test

  describe 'tests for version' do
  
    it 'expected   "5.0.0" for Version::VERSION'do
      assert_equal "5.0.0", Version::VERSION
    end

  end
end