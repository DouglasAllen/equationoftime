# from_readme.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'equation_of_time'

eot = Equation_of_Time.new
jd = Date.today.jd    # jd for today
t = eot.time_julian_centurey(jd)
puts eot.string_equation_of_time(eot.equation_of_time(t))
