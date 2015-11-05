# page 183 AA by JM

require 'date'

num = DateTime.now.ajd - 2451545.0
@t = num / 36525.0

# the terms in reverse order form for the array
@l0_a = [1.0/-19880000.0,
         1.0/-152990.0,
         1.0/499310.0,
         0.0003032028,
         36000.76982779,
         280.4664567]

# make an enumerator
@l0_e = @l0_a.each

# make a lambda to pass the enumerator to.
def my_lambda
 ->(x) {x.reduce {|acc, el| acc * @t + el} % 360}
end

puts  my_lambda.call(@l0_e)