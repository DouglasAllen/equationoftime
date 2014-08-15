Welcome to the equation_of_time wiki!

irb --simple-prompt

1. >> latitude,  longitude, date = 41.9474, -88.74467, "2013-12-25"
2. >> require 'equation_of_time';eot = Equation_of_Time.new( latitude, longitude, date )
3. >> eot.sunrise_time( eot.date.to_s ).to_time
5. >> eot.sunset_time( eot.date.to_s ).to_time  
