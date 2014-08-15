# julian_day_formula.rb
#
# 3) Dropping the fractional part of all results of all multiplications and divisions, let
require 'date'

def date_to_ajd date
  year = date.year
  month = date.month

  if month <= 2
    year = year -1
    month = month +12
  end

  day = date.day
  
  a = (year / 100).floor
  b  = (a / 4).floor
  c = 2 - a + b
  e = (365.25  * (year + 4716)).floor
  f = (30.6001 * (month +1)).floor
  c + day + e + f - 1524.5
end

t = Time.now.utc
date_string = "#{t.year}-#{t.month}-#{t.day}"
date = Date.parse(date_string)
puts t
puts "Todays date is #{date} and the AJD is #{date_to_ajd date}"