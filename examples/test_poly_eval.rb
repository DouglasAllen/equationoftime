# test_poly_eval.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

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

require 'eot'
eot = EqoT.new

@current = DateTime.now.to_time.utc
# comparing the difference for two methods of day_fraction
df1 = @current.to_datetime.day_fraction.to_f
df2 = @current.hour / 24.0 + @current.min / 1_440.0 + @current.sec / 86_400.0 + @current.usec / 86_400_000_000.0

ajd = @current.to_datetime.ajd.to_f

# setting up to test poly_eval in each angle method using it.
tjc = eot.time_julian_century(2456734.00110875)
#t = (Date.today.jd - 2451545.0)/365250.0

eot.eccentricity_Earth( tjc )
eot.gml_Sun( tjc )
p eot.ml_Aries( tjc )
eot.mo_Earth( tjc )
