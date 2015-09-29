# eot_methods_list.rb

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = Eot.new
list = eot.public_methods(false).sort
list.each { |i| puts i.to_sym }
puts Time.now
