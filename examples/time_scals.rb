# eot_methods_list.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require  'equation_of_time'
$DEBUG and set_trace_func proc { |event, file, line, id, binding, classname|
       printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
    }
eot = Equation_of_Time.new
# puts eot.public_methods(false).sort
# puts eot.nil?
loop do
p date = DateTime.now.to_time.utc.to_datetime
dt = Astro.delta_T(date) / 86400.0
ajd = date.ajd
ajd1 = ajd + dt
p date2 = DateTime.jd(ajd1 + 0.5)
sleep 0.7
puts
end
# puts Astro.solar_longitude(date)
# tjc = eot.time_julian_century( ajd)
# puts eot.tl_Sun(tjc)

# tjc = eot.time_julian_century( ajd + dt )
# puts eot.tl_Sun(tjc)

