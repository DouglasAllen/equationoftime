
require 'rspec/core/rake_task'


task :default => [ :test ]

RSpec::Core::RakeTask.new(:spec) do | t |
  t.pattern = "./tests/spec/*_spec.rb"
  t.rspec_opts = []
end

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
    t.libs << "test"
    t.test_files = FileList['tests/minitest/*_spec.rb']
    t.verbose = true
    t.options
end

require "bundler/gem_tasks"

require "rake/win32"

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

require 'yard'

YARD::Rake::YardocTask.new(:yardoc) do |t|
  t.files = ['lib/**/*.rb']
#  puts t.methods
end

require 'rdoc/task'

desc 'generate API documentation to rdocs/index.html'
Rake::RDocTask.new(:rdox) do |rd|

  rd.rdoc_dir = 'rdocs'

  rd.rdoc_files.include 'lib/**/*.rb', 'README.md', 'README.txt', 'wiki.md'
 
  rd.options << '--line-numbers'
  
end