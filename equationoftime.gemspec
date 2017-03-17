# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot/version.rb'

Gem::Specification.new do |spec|
  # Metadata
  spec.name          = 'equationoftime'
  spec.version       = Eot::VERSION
  spec.author        = 'DouglasAllen'
  spec.authors       = ['DouglasAllen']
  spec.email         = ['kb9agt@gmail.com']
  spec.summary       = 'Equation of Time calculates time of solar transition.'
  spec.description   = 'Calculate Sunrise and Sunset. Uses native C wrappers.
                        Use the patch "gem install eot" to install it.'
  spec.rubygems_version = '2.6.7'
  # spec.homepage      = "http://equationoftime.herokuapp.com"
  spec.homepage      = 'https://github.com/DouglasAllen/equationoftime'
  spec.license       = 'MIT'

  # Manifest
  # spec.files         = Dir.glob('ext/**/*.{c,h,rb, so}') + Dir.glob('**') +
  #                      Dir.glob('lib/**/*.rb') + Dir.glob('.*')
  # spec.files         = `git ls-files -z`.split($/)#split("\x0")
  # spec.files         = `git ls-files -z`.split("\x0")
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.extensions << 'ext/eot/extconf.rb'
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.has_rdoc      = true
  spec.rdoc_options <<
    '--title' << 'Equation of Time -- Solar Position Calculator in Ruby' \
    '--line-numbers'
  spec.platform = Gem::Platform::RUBY
  spec.add_runtime_dependency 'addressable'
  spec.add_runtime_dependency 'rest-client'
  spec.add_runtime_dependency 'celes'
  # note: the last good build was with these development dependencies below
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rake-compiler'
  spec.add_development_dependency 'hoe'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-minitest'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'ZenTest'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'rdoc'
end
