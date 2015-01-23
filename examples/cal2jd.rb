require 'celes'
require 'date'

p d = DateTime.now.to_time.utc.to_datetime
djm0, djm = Celes::cal2jd(d.year, d.month, d.day)
p djm0
p djm
p djm + djm0 + d.day_fraction.to_f
# compare to inverse
p DateTime.jd(0.5 + djm + djm0 + d.day_fraction.to_f)
