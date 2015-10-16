require 'celes'
require 'date'

d = DateTime.now.to_time.utc.to_datetime
puts " d = DateTime.now.to_time.utc.to_datetime     = #{d}"
puts ' djm0, djm = Celes::cal2jd(d.year, d.month, d.day + d.day_fraction)'
djm0, djm = Celes.cal2jd(d.year, d.month, d.day + d.day_fraction)
puts " double julian modified base returned djm0    = #{djm0}"
puts " double julian modified djm  returned         = #{djm}"
puts " djm + djm0 is full day start ajd             = #{djm + djm0}"
puts " use Ruby's ajd method d.ajd.to_f             = #{d.ajd.to_f}"
puts " use Ruby's day_fraction method               = #{d.day_fraction.to_f}"
puts " remove time (d.ajd - d.day_fraction).to_f    =
 #{(d.ajd - d.day_fraction).to_f}"
puts " compare Celes::cal2jd and DateTime values    =
 #{(djm + djm0) == (d.ajd - d.day_fraction).to_f}"
puts " The differnce? celes is Float not Rational   =
 #{(djm + djm0).class == Float}"
