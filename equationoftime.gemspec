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
  # spec.homepage      = "http://equationoftime.herokuapp.com"
  spec.homepage      = 'https://github.com/DouglasAllen/gem-equationoftime'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.has_rdoc      = true
  spec.rdoc_options <<
     '--title' <<  'Equation of Time -- Solar Position Calculator in Ruby' <<
     '--line-numbers'
  
  spec.add_runtime_dependency 'addressable'
  spec.add_runtime_dependency 'rest-client'
  
  # note: the last good build was with these development dependencies below
  spec.add_development_dependency 'bundler'
  

end
