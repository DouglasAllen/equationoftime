Welcome to the equation_of_time wiki!

irb --simple-prompt

1. >> require 'date'; latitude, longitude, date = 41.9474, -88.74467, Date.parse("2014-3-20")
2. >> require 'equation_of_time'; eot = Equation_of_Time.new( latitude, longitude, date )
3. >> DateTime.jd(eot.sunrise_jd + 0.5)
4. >> DateTime.jd(eot.sunset_jd + 0.5)
  