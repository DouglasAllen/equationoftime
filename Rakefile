require "bundler/gem_tasks"
# require "bundler/install_tasks"
require 'hoe'
require 'rake/extensiontask'
require 'rake/testtask'
#require "rake/win32"
require 'rdoc/task'
require 'rspec/core/rake_task'
require 'yard'
# rake release VERSION=4.1.2
Hoe.spec 'equationoftime' do
  developer('Douglas Allen', 'kb9agt@gmail.com')
  license('MIT')
  self.version = '4.1.2'  
  self.readme_file   = 'README.rdoc'
  self.history_file  = 'CHANGELOG.rdoc'
  self.extra_rdoc_files  = FileList['*.rdoc']
  self.extra_dev_deps << ['rake-compiler', '~> 0.9', '>= 0.9.3']
  self.spec_extras = { :extensions => ["ext/eot/extconf.rb"] }

  Rake::ExtensionTask.new('eot', spec) do |ext|
    ext.lib_dir = File.join('lib', 'eot')
  end
end

Rake::Task[:test].prerequisites << :compile

task :default => [ :test ]

Rake::TestTask.new(:test) do |t|
    t.libs << "test"
    t.test_files = FileList['test/*_spec.rb']
    t.verbose = true
    t.options
end

RSpec::Core::RakeTask.new(:spec) do | t |
  t.pattern = "./test/*_spec.rb"
  t.rspec_opts = []
end

YARD::Rake::YardocTask.new(:yardoc) do |t|
  t.files = ['lib/**/*.rb']
#  puts t.methods
end

desc 'generate API documentation to rdocs/index.html'
Rake::RDocTask.new(:rdox) do |rd|

  rd.rdoc_dir = 'rdocs'

  rd.rdoc_files.include 'lib/**/*.rb', 'README.md', 'wiki.md'
 
  rd.options << '--line-numbers'
  
end

=begin
require 'thor'
require 'bundler'
require 'rbconfig'

module Bundler
  class GemHelper
    def self.install_tasks(opts = nil)
      
      # Determine the rakefile's location, don't use
      # Rake.application.rakefile_location since it's buggy
     # dir = File.dirname(Rake.application.rakefile_location)
      
      rakefile_loc = nil
      begin
        fail
      rescue RuntimeError => ex
        on_win = RbConfig::CONFIG["host_os"] =~ /mswin|mingw/
        ex.backtrace.each do |frame|
          if on_win
            # Typically, on Windows Rake.application.rakefile is lowercase
            # whereas the real file might not be, luckily case doesn't matter
            frame = frame.downcase
          end
          m = /^((:?.+\/)#{Rake.application.rakefile}):\d+(:?:.+)?$/.match(frame)
          if not m.nil?
            rakefile_loc = m[1]
          end
        end
      end

      dir = File.dirname(rakefile_loc)
      self.new(dir, opts && opts[:name]).install
    end
  end
end
=end


#require 'rake/extensiontask'
#spec = Gem::Specification.load('equationoftime.gemspec')
#Rake::ExtensionTask.new('ceot', spec)
#Rake::ExtensionTask.new "ceot" do |ext|
  #ext.lib_dir = "lib"
#end

# Rake::TestTask.new(:mine) do |t|

  # Rake::Win32.rake_system("echo rspec ./tests/spec/aliased_angles_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/aliased_angles_spec.rb")
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/aliased_displays_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/aliased_displays_spec.rb")  
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/aliased_utilities_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/aliased_utilities_spec.rb")  
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/angles_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/angles_spec.rb")  
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/constants_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/constants_spec.rb")
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/displays_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/displays_spec.rb") 
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/init_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/init_spec.rb") 
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/nutation_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/nutation_spec.rb") 
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/times_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/times_spec.rb")
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/utilities_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/utilities_spec.rb")
  
  # Rake::Win32.rake_system("echo rspec ./tests/spec/vars_spec.rb")
  # Rake::Win32.rake_system("rspec ./tests/spec/vars_spec.rb")
  
# end
