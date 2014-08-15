irb --simple-prompt

1. >> require 'equation_of_time';eot = Equation_of_Time.new
2. >> eot.date = Date.today.to_s
3. >> loop do
4. >> puts eot.display_time_string(eot.true_longitude_aries(eot.time_julian_century(eot.ajd_time(Time.now.utc))) / 15.0)
5. >> sleep 0.73
6. >> end


##[*GMST*](http://douglasallen.github.com/planets/)
##[*Sidereal Time*](http://docs.kde.org/stable/en/kdeedu/kstars/ai-sidereal.html)