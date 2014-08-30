# compare_geoc_long_ra.rb

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = Eot.new()

start  = "2013-3-20"
finish = "2013-3-20"

start_date  = Date.parse(start)
finish_date = Date.parse(finish)

puts "start julian date  = #{start_date.jd} date  = #{start}"
puts "finish julian date = #{finish_date.jd} date = #{finish}"

ajd = start_date.ajd * 1.0

for min in 0..59
  h      = 10 / 24.0
  fd     = h + min / 1440.0
  timejc = eot.time_julian_century() 
  ml     = eot.geometric_mean_longitude()
  tl     = eot.true_longitude()
  ra     = eot.right_ascension()
  puts "time\t\t\tmean longitude\t\tright ascension"
	puts "10:#{min}\t\t\t#{ml}\t\t#{ra}\t\t#{}"
end
#~ end