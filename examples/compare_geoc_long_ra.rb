# compare_geoc_long_ra.rb

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = Eot.new()

start  = "2014-6-21"
finish = "2014-6-21"

start_date  = Date.parse(start)
finish_date = Date.parse(finish)

puts "start julian date  = #{start_date.jd} date  = #{start}"
puts "finish julian date = #{finish_date.jd} date = #{finish}"
puts

ajd = start_date.ajd * 1.0

for psec in 630..631
  h       = 10 / 24.0
  fd      = h + 45 / 1440.0 + 31 / 86400.0 + 691 / 86400.0 / 1e3 + 244 / 86400.0 / 1e6 + 989 / 86400.0 / 1e9 + psec / 86400.0 / 1e12 
  eot.ajd = ajd + fd
  ml      = eot.geometric_mean_longitude()
  tl      = eot.true_longitude()
  da      = ml - tl
  al      = eot.apparent_longitude()
  ra      = eot.right_ascension()
  db      = al - ra
#  puts "time\t\t\tmean longitude\t\t\ttrue_longitude\t\t\tdifference"
#  puts "10:45:31.691_#{usec}\t\t\t#{ml}\t\t#{tl}\t\t#{da}"
#  puts
  puts "time\t\t\tapparent longitude\t\tright ascension\t\t\tdifference"
	puts "10:45:31.691_244_989_#{psec}\t\t\t#{al}\t\t#{ra}\t\t#{db}"
	puts
end
#~ end