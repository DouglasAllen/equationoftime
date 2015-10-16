# test_poly_eval.rb

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
end

# From astro-algo gem
# class Array
# Evaluate polynomial using Horner's method.
# Array consists of coefficients of a polynomial, the
# coefficient of the highest order term first, the
# constant coefficient last.
# Returns evaluation of polynomial at +x+.
#
# Example: evaluate the polynomial x**2 - 0.5*x + 3.0 where x = 2.0
#    [1.0, -0.5, 3.0].poly_eval(2.0)   # => 6.0
# def poly_eval(x)
# self.inject(0.0) {|p, a|
# p*x + a}
# end
# end

my_array   = [1.0, -0.5, 3.0]
my_array.reduce(0.0) { |sum, n| p sum * 2.0 + n }

ecc = [-0.0000001235, -0.000042037, 0.016708617]
ta  = 0.14
ecc.reduce(0.0) { |sum, n| p sum * ta + n }
