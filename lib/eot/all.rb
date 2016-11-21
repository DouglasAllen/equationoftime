
##
# = Attributes and initalizer
#
# You may set any of the attributes but not all become effective until
# Eot#set_t method is invoked. This method resets four attributes:
#
# @t which is Julian Century days,
#
# @ma which is Mean Anomaly of the Sun at the time desired,
#
# @ajd which is a Julian Number including day fractional time if you set @jd
#
# @jd which is default as Noon today when Eot class is first initialized.
#
#   require 'eot'
#   calc = Eot.new
#   calc.jd = Date.new(2015, 12, 25).jd
#   calc.set_t
#
# Normal settings are for Sunrise and Sunset calculations.
#
# If you need to calculate for some specific time then just be sure to use @jd.
# For instance:
#
#   calc.jd = DateTime.new(2015, 12, 25).ajd
#   calc.set_t
# 
# Then if you wnat the AJD save it if you need it in your own variable
# before invoking #set_t again. Perhaps at some point you'll want it
# for display or your own calculations. Never expect it to be secure
# from this class. 
# read it as follows...
#
#   my_var = calc.ajd
#
# The AJD and JD are always the same in this class. It's just that Ruby has
# different methods for these and the results yield different values for each.
# AJD is a JD with fractional day as a Float added on. It also begins at the
# start of each day not Noon as a JD does.
#
# = Files included
#--
class Eot
end

##
# = Celes
# has undocumented Object class with rdoc generator.
# Use bundle exec rake rdocs if you don't care about C extensions documentation.
module Celes
end
