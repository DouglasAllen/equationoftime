# julian_day_formula.rb

# 3) Dropping the fractional part of all results of all multiplications and divisions, let
require 'date'

def date_to_ajd(date)
  date.month <= 2 ? year = date.year -= 1 : year = date.year
  date.month <= 2 ? month = date.month += 12 : month = date.month 
  day = date.day
  day + 2 -  
    (year / 100).floor + ((year / 100).floor / 4).floor +
    (365.25 * (year + 4716)).floor +
    (30.6001 * (month + 1)).floor - 1524.5
end

t = Time.now.utc
date_string = "#{t.year}-#{t.month}-#{t.day}"
date = Date.parse(date_string)
puts t
puts "Todays date is #{date} and the AJD is #{date_to_ajd date}"
