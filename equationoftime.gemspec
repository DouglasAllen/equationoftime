# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot/version'

Gem::Specification.new do |spec|
     # Metadata
     spec.name          = "equationoftime"
     spec.version       = Eot::VERSION
     spec.authors       = ["DouglasAllen"]
     spec.email         = ["kb9agt@gmail.com"]
     spec.summary       = %q{Equation of Time calculates time of solar transition.}
     spec.description   = %q{Calculate Sunrise and Sunset. Now uses native C wrappers.
	                     Lots of examples to play with for learning.}
     #spec.homepage      = "http://equationoftime.herokuapp.com"
     spec.homepage      = "https://github.com/DouglasAllen/equationoftime"
     spec.license       = "MIT"
	

     # Manifest
     spec.files         = Dir.glob("ext/**/*.{c,h,rb, so}") + Dir.glob("**") +
                          Dir.glob("lib/**/*.rb") + Dir.glob(".*")
     #spec.files         = `git ls-files -z`.split($/)#split("\x0")
     spec.extensions    << "ext/ceot/extconf.rb"
     spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
     spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
     spec.require_paths = ["lib"]
     spec.platform      = Gem::Platform::RUBY
     spec.add_development_dependency "bundler", "~> 1.5"
     spec.add_development_dependency "rake"
     spec.add_development_dependency "rake-compiler"
     spec.add_development_dependency "hoe"
     spec.add_development_dependency "minitest"	 
     spec.add_development_dependency "rspec"
     spec.add_development_dependency "yard"
     spec.add_runtime_dependency "celes"
     #spec.add_runtime_dependency "astro-algo"
     spec.add_runtime_dependency "multi_xml"
     spec.add_runtime_dependency "rest-client"
     #spec.add_runtime_dependency "safe_yaml"	 
     
end
