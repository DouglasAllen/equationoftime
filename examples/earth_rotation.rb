# earth_rotation.rb

require 'bigdecimal'

factor = 1 / (1 - 1 / 365.25)
bd_factor = BigDecimal.new("#{1 / (1 - 1 / 365.25)}") * 1.0
puts "360 degrees x #{factor} = #{360 * factor} degrees"
puts "360 degrees x #{bd_factor} = #{360 * bd_factor} degrees"

sidereal_minutes = 4 / factor
bd_sidereal_minutes = 4 / bd_factor
puts sidereal_minutes
puts sidereal_minutes