Welcome to the equation_of_time wiki!

irb --simple-prompt

1. >> latitude,  longitude, date = 41.9474, -88.74467, "2013-12-25"
2. >> require 'eot';eot = EqoT.new()
3. >> eot.latitude = latitude; eot.longitude = longitude
4. >> eot.sunrise_dt().to_time
5. >> eot.sunset_dt().to_time  
