require 'eot';eot = Eot.new()
puts "My Local Apparent Sidereal Time"
     loop do
       eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
       puts "LST = #{ eot.string_time(((eot.tl_Aries() * Eot::R2D) + -88.75) / 15.0) }"
       sleep ( 1 - 0.00273790935/1.0027390935) / 1.00273790935
     end