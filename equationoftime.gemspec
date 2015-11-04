# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot/version.rb'

Gem::Specification.new do |spec|
  # Metadata
  spec.name          = 'equationoftime'
  spec.version       = Eot::VERSION
  spec.authors       = ['DouglasAllen']
  spec.email         = ['kb9agt@gmail.com']
  spec.summary       = 'Equation of Time calculates time of solar transition.'
  spec.description   = 'Calculate Sunrise and Sunset. Uses native C wrappers.
                        Use the patch "gem install eot" to install it.'
  #spec.website       = "http://equationoftime.herokuapp.com"
  spec.homepage      = 'https://github.com/DouglasAllen/equationoftime'
  spec.license       = 'MIT'

  # Manifest
  # spec.files         = Dir.glob('ext/**/*.{c,h,rb, so}') + Dir.glob('**') +
  #                      Dir.glob('lib/**/*.rb') + Dir.glob('.*')
  # spec.files         = `git ls-files -z`.split($/)#split("\x0")
  # spec.files         = `git ls-files -z`.split("\x0")
  spec.files         = `git ls-files`.split($/)
  spec.extensions    << 'ext/eot/extconf.rb'
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.has_rdoc      = true
  spec.rdoc_options <<
     '--title' <<  'Equation of Time -- Solar Position Calculator in Ruby' <<
     '--line-numbers'
  spec.platform      = Gem::Platform::RUBY
  spec.add_runtime_dependency 'addressable', '~> 2.3.6'
  spec.add_runtime_dependency 'rest-client'
  spec.add_runtime_dependency 'celes', '~> 0.0.1'

  # note: the last good build was with these development dependencies below
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
