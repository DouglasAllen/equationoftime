# page 183 AA by JM

require 'date'

@d = DateTime.now.to_time.utc.to_date.ajd - 2451545.0
 
@t = @d / 36525.0

# the terms in reverse order form for the arrays fot @d and @t

@l0_ad = [1.0/-38710000,
          0.00387933,
          36_000.770053608,
          100.46061837]

@l0_at = [1.0 / -2403846.153846154,
          1.0 / -152998.776009792,
          1.0 /  499251.123315027,
          0.000303203,
          36000.769827652,
          280.4664567]

# make enumerators
@l0_ed = @l0_ad.each
@l0_et = @l0_at.each

# make a lambda to pass the enumerator to.
def my_lambda
 ->(x, t) {x.reduce {|acc, el| acc * t + el} % 360}
end

puts  (my_lambda.(@l0_ed, @t) % 360) / 15
puts  ((my_lambda.(@l0_et, @t) + 180) % 360) / 15
