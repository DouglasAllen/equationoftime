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
     spec.description   = %q{Calculate Sunrise and Sunset, GMST, and GAST for just about any date and location.
	                     Lots of examples to play with included.}
     spec.homepage      = "http://equationoftime.herokuapp.com"
     #spec.source        = "https://github.com/DouglasAllen/equationoftime-3.0.0"
     spec.license       = "MIT"
	

     # Manifest
     #spec.files         = Dir.glob("{examples, lib}/**/*") + %w(LICENSE README}
     spec.files         = `git ls-files -z`.split("\x0")
     spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
     spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
     spec.require_paths = ["lib"]
     spec.platform      = Gem::Platform::RUBY
     spec.add_development_dependency "bundler", "~> 1.5"
     spec.add_development_dependency "rake"
     spec.add_development_dependency "minitest"	 
     spec.add_development_dependency "rspec"    
     spec.add_runtime_dependency "astro-algo"
     spec.add_runtime_dependency "multi_xml"
     spec.add_runtime_dependency "rest-client"
     spec.add_runtime_dependency "safe_yaml"	 
     
end
