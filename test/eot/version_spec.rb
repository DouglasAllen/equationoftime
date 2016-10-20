# version_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

describe 'Tests the VERSION constant ' do
  it 'expected from Eot::VERSION \
                 4.1.8 ' do
    assert_equal('4.1.8',
                 Eot::VERSION)
  end
end
