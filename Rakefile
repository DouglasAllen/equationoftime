<<<<<<< HEAD
require 'mini_portile'
require 'bundler/gem_tasks'
#require "bundler/install_tasks"

require 'rake/extensiontask'
#require 'rake/testtask'
# require "rake/win32"

=======
require 'bundler/gem_tasks'
# require "bundler/install_tasks"
require 'hoe'
require 'rake/extensiontask'
require 'rake/testtask'
# require "rake/win32"
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
require 'rdoc/task'

#require 'rspec/core/rake_task'

require 'yard'

require 'hoe'

# begin
#   require 'rubygems/gempackagetask'
# rescue LoadError
# end
# require 'rake/clean'
# require 'rbconfig'
# include RbConfig

# Hoe.plugins.delete :newb
# Hoe.plugins.delete :test
# Hoe.plugins.delete :signing
# Hoe.plugins.delete :publish
# Hoe.plugins.delete :clean
# Hoe.plugins.delete :package
# Hoe.plugins.delete :compiler
# Hoe.plugins.delete :debug
# Hoe.plugins.delete :rcov
# Hoe.plugins.delete :gemcutter
# Hoe.plugins.delete :racc
# Hoe.plugins.delete :inline
# Hoe.plugins.delete :gem_prelude_sucks
# Hoe.plugins.delete :flog
# Hoe.plugins.delete :flay
# Hoe.plugins.delete :deps
# Hoe.plugins.delete :minitest
# Hoe.plugins.delete :rdoc
# Hoe.plugins.delete :travis

# Hoe.plugin :newb
# Hoe.plugin :test
# Hoe.plugin :signing
# Hoe.plugin :publish
# Hoe.plugin :clean
# Hoe.plugin :package
# Hoe.plugin :compiler
# Hoe.plugin :debug
# Hoe.plugin :rcov
# Hoe.plugin :gemcutter
# Hoe.plugin :racc
# Hoe.plugin :inline
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :flog
# Hoe.plugin :flay
# Hoe.plugin :deps
# Hoe.plugin :minitest
# Hoe.plugin :rdoc
# Hoe.plugin :travis

Hoe.spec 'equationoftime' do
  developer('Douglas Allen', 'kb9agt@gmail.com')
  license('MIT')
<<<<<<< HEAD
  
  self.readme_file   = 'README.rdoc'
  self.history_file  = 'CHANGELOG.rdoc'
  self.extra_rdoc_files  = FileList[]
  extra_dev_deps << ['rake-compiler', '~> 0.9', '>= 0.9.3']
  #self.spec_extras = { extensions: ['ext/helio/extconf.rb'] }
=======
  self.version = '4.1.2'
  self.readme_file   = 'README.rdoc'
  self.history_file  = 'CHANGELOG.rdoc'
  self.extra_rdoc_files  = FileList['*.rdoc']
  extra_dev_deps << ['rake-compiler', '~> 0.9', '>= 0.9.3']
  self.spec_extras = { extensions: ['ext/eot/extconf.rb'] }
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e

  Rake::ExtensionTask.new('helio', spec) do |ext|
    ext.lib_dir = File.join('lib', 'eot/helio')
  end
end

Rake::Task[:install].prerequisites << :libsofa_c << :compile

<<<<<<< HEAD
task :libsofa_c do
  recipe = MiniPortile.new("libsofa_c", "1.0")
  recipe.files = ["https://github.com/DouglasAllen/libsofa_c-1.0/raw/master/libsofa_c-1.0.tar"]
  checkpoint = ".#{recipe.name}-#{recipe.version}.installed"

  unless File.exist?(checkpoint)
    recipe.download
    recipe.extract
    recipe.compile
    recipe.install unless recipe.installed?
    
    touch checkpoint
  end

  recipe.activate
=======
task default: [:test]

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.test_files = FileList['test/*_spec.rb']
  t.verbose = true
  t.options
end

RSpec::Core::RakeTask.new(:spec) do | t |
  t.pattern = './test/*_spec.rb'
  t.rspec_opts = []
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
end

#task default: [:test]

#Rake::TestTask.new(:test) do |t|
  #t.libs << 'test'
  #t.test_files = FileList['test/eot/*.rb']
  #t.verbose = true
  #t.options
#end

#RSpec::Core::RakeTask.new(:spec) do | t |
  #t.libs << 'test'
  #t.pattern = './test/eot/*.rb'
  #t.rspec_opts = []
#end

YARD::Rake::YardocTask.new(:yardoc) do |t|
<<<<<<< HEAD
  t.files = ['lib/eot/*.rb']
=======
  t.files = ['lib/**/*.rb']
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
  #  puts t.methods
end

desc 'generate API documentation to rdocs/index.html'
Rake::RDocTask.new(:docs) do |rd|

  rd.rdoc_dir = 'rdocs'

<<<<<<< HEAD
  rd.rdoc_files.include 'lib/eot/*.rb', 'README.rdoc', 'wiki.md'
=======
  rd.rdoc_files.include 'lib/**/*.rb', 'README.md', 'wiki.md'
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e

  rd.options << '--line-numbers'

end

<<<<<<< HEAD
=======
# require 'thor'
# require 'bundler'
# require 'rbconfig'
#
# module Bundler
#   class GemHelper
#     def self.install_tasks(opts = nil)
#
#       # Determine the rakefile's location, don't use
#       # Rake.application.rakefile_location since it's buggy
#      # dir = File.dirname(Rake.application.rakefile_location)
#
#       rakefile_loc = nil
#       begin
#         fail
#       rescue RuntimeError => ex
#         on_win = RbConfig::CONFIG["host_os"] =~ /mswin|mingw/
#         ex.backtrace.each do |frame|
#           if on_win
#             # Typically, on Windows Rake.application.rakefile is lowercase
#             # whereas the real file might not be, luckily case doesn't matter
#             frame = frame.downcase
#           end
#           m = /^((:?.+\/)#{Rake.application.rakefile}):\d+(:?:.+)?$/.match(frame)
#           if not m.nil?
#             rakefile_loc = m[1]
#           end
#         end
#       end
#
#       dir = File.dirname(rakefile_loc)
#       self.new(dir, opts && opts[:name]).install
#     end
#   end
# end

>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
# require 'rake/extensiontask'
# spec = Gem::Specification.load('equationoftime.gemspec')
# Rake::ExtensionTask.new('ceot', spec)
# Rake::ExtensionTask.new "ceot" do |ext|
# ext.lib_dir = "lib"
# end

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
