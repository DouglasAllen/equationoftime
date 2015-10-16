# eot_methods_list.rb

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
end
$DEBUG && set_trace_func(proc do |event, file, line, id, _binding, classname|
                           printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
                         end)
eot = Eot.new
# puts eot.public_methods(false).sort
# puts eot.nil?
loop do
  puts DateTime.now.to_time.utc.nsec.inspect
  puts DateTime.jd(DateTime.now.to_time.utc.to_datetime.ajd + 0.5).to_time.nsec.inspect
  sleep 0.7
  puts
end

# puts Astro.solar_longitude(date)
# tjc = eot.time_julian_century( ajd)
# puts eot.tl_Sun(tjc)

# tjc = eot.time_julian_century( ajd + dt )
# puts eot.tl_Sun(tjc)
