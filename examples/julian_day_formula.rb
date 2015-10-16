# julian_day_formula.rb

# 3) Dropping the fractional part of all results of all
# multiplications and divisions, let
require 'date'

def date_string(date)
  "#{date.year}-#{date.month}-#{date.day}"
end

def ajd_year(year)
  (365.25 * (year + 4716)).floor +
    ((year / 100).floor / 4).floor +
    (year / 100).floor
end

def ajd(day, month, year)
  month = (30.6001 * (month + 1)).floor - 1524.5
  day + 2 - ajd_year(year) + month
end

def date_to_ajd(date)
  year = date.yaer
  month = date.month
  day = date.day
  month <= 2 ? year -= 1 : year
  month <= 2 ? month += 12 : month
  ajd(day, month, year)
end

t = Time.now.utc
date_string = "#{t.year}-#{t.month}-#{t.day}"
date = Date.parse(date_string)
puts t
puts "Todays date is #{date} and the AJD is #{date_to_ajd date}"
