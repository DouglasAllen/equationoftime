# earth_rotation.rb

require 'bigdecimal'

factor = 1 / (1 - 1 / 366.0)
bd_factor = BigDecimal.new("#{1 / (1 - 1 / 366.0)}") * 1.0
puts "360 degrees x #{factor} = #{360 * factor} degrees"
puts "360 degrees x #{bd_factor} = #{360 * bd_factor} degrees"

sidereal_minutes = 4 / factor
# bd_sidereal_minutes = 4 / bd_factor
puts sidereal_minutes
puts sidereal_minutes

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
end

eot = Eot.new
# From angles.rb:<br>
# angle factor for daily sidereal time (experimental)
def factor(eot)
  eot.ajd = Date.parse('2000-01-01').jd
  tlaa    = eot.tl_Aries
  eot.ajd = eot.ajd + 1
  tlab    = eot.tl_Aries
  dif     = (tlab - tlaa) * Eot::R2D
  f1      = dif / 360.0 + 1
  1 / f1
end

p factor(eot) * 4
p factor(eot) * 4 * 360.0
p factor(eot) * 4 * 360.0 / 60.0
p factor(eot) * 4 * 360.0 / 60.0 * 366
shd = factor(eot) * 4 * 360.0 / 60.0
sdnl = shd * 366 * 4
p sdnl / (4 * 365 + 1)
