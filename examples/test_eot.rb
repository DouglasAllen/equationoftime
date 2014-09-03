require_relative 'eot'

eot = EOT.new

p eot.ma(0.14)

require 'benchmark'

n = 500_000
Benchmark.bm do |x|
  x.report("eot")  { n.times { eot.ma(0.14) } }
  x.report("ruby")  { n.times { Time.now } }
end
