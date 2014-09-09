require_relative 'rbeot'
require_relative '../lib/eot'

rbeot = EOT.new
eot = Eot.new

p eot.ta
p rbeot.ma(eot.ta)
#~ p eot.ma_Sun

require 'benchmark'

n = 5_000
Benchmark.bm do |x|
  x.report("eot")  { n.times { rbeot.ma(eot.ta) } }
  #~ x.report("ruby")  { n.times {eot.ma_Sun() } }
end
