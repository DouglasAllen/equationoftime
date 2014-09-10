require 'benchmark'

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = Eot.new
eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
eot.ajd_to_datetime(eot.ajd)

p eot.eccentricity_Earth()
p eot.eoe(eot.ta)

n = 500_000
Benchmark.bm do |x|
  x.report("reot")  { n.times {eot.eccentricity_Earth()} }
  x.report("ceot")  { n.times {eot.eoe(eot.ta)} }  
end
puts

p eot.center() * Eot::R2D 
p eot.eqc(eot.ma, eot.ta) * Eot::R2D

Benchmark.bm do |x|
  x.report("reot") {n.times {eot.center()}}
  x.report("ceot") {n.times {eot.eqc(eot.ma, eot.ta)}}
end
puts 

p eot.tl_Sun()
p eot.tl(eot.ma, eot.ta)

n = 500_000
Benchmark.bm do |x|
  x.report("reot")  { n.times {eot.tl_Sun()} }
  x.report("ceot")  { n.times {eot.tl(eot.ma, eot.ta)} }  
end
puts

p eot.al_Sun()
p eot.al(eot.ma, eot.ta, eot.omega())

n = 500_000
Benchmark.bm do |x|
  x.report("reot")  { n.times {eot.al_Sun()} }
  x.report("ceot")  { n.times {eot.al(eot.ma, eot.ta, eot.omega())} }  
end
puts

