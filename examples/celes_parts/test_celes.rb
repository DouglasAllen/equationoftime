#require_relative 'celes_core'
require 'celes'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'
eot = Eot.new

# Celes.methods.sort.each {|m| p m }

dt = DateTime.now.to_time.utc.to_datetime
jd = Celes.cal2jd(dt.year, dt.month, dt.day)

ajd = jd[0] + jd[1] + dt.day_fraction

p eot.ajd = ajd

p eot.delta_equinox()[0]
p Celes.nut06a(ajd,0)[0]

p eot.delta_equinox()[1]
p Celes.nut06a(ajd,0)[1]

p eot.delta_equinox()[2]
p Celes.falp03(eot.ta)

p eot.delta_equinox()[3]
p Celes.faom03(eot.ta)


require 'benchmark'

n = 500_000
Benchmark.bm do |x|
  #~ x.report("celes")  { n.times { Celes.cal2jd(dt.year, dt.month, dt.day) } }
  #~ x.report("ruby")  { n.times { DateTime.new(dt.year, dt.month, dt.day).jd } }
  x.report("celes")  { n.times { Celes.nut06a(ajd,0)[0] }}
  x.report("celes")  { n.times { Celes.nut06a(ajd,0)[1] }}   
  x.report("celes")  { n.times { Celes.falp03(eot.ta) }}
  x.report("celes")  { n.times { Celes.faom03(eot.ta) }}
        
  x.report("ruby")  { n.times { eot.delta_equinox()[0] }}  
  x.report("ruby")  { n.times { eot.delta_equinox()[1] }}  
  x.report("ruby")  { n.times { eot.delta_equinox()[2] }}  
  x.report("ruby")  { n.times { eot.delta_equinox()[3] }}
end









