# eot_methods_list.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require  'eot'
$DEBUG and set_trace_func proc { |event, file, line, id, binding, classname|
       printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
    }
eot = EqoT.new
puts eot.public_methods(false).sort
# puts eot.nil?

date = DateTime.now.to_time.utc.to_datetime
puts date

