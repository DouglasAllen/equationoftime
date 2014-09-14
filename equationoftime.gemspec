# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot/version.rb'

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
     spec.extensions    << "ext/eot/extconf.rb"
     spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
     spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
     spec.require_paths = ["lib"]
     spec.platform      = Gem::Platform::RUBY
# note: the last good build was with these development dependencies below
     spec.add_development_dependency "bundler", "~> 1.7"
     spec.add_development_dependency "rake", "~> 10.0"
     #spec. add_development_dependency 'rake-compiler', '~> 0.9.3'
     #spec.add_development_dependency "hoe", "~> 3.12.0"
     #spec.add_development_dependency "guard", "~> 2.6.1"
     #spec.add_development_dependency "guard-minitest", "~> 2.3.2"
     #spec.add_development_dependency "minitest", "~> 5.4.1"
     #spec.add_development_dependency "ZenTest", "~> 4.10.1" 
     #spec.add_development_dependency "rspec", "~> 3.1.0"
     #spec.add_development_dependency "yard", "~> 0.8.7.4"
     #spec.add_development_dependency "rdoc", "~> 4.1.2"

     spec.add_runtime_dependency "celes"
     #spec.add_runtime_dependency "astro-algo"
     #spec.add_runtime_dependency "multi_xml"
     spec.add_runtime_dependency "rest-client"
     #spec.add_runtime_dependency "safe_yaml"	 
     
end
