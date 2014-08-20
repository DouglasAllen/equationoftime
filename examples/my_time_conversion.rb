# my_time_conversion.rb

# This method will convert hours decimal into a Time object and let you see H:M:S format
def decimal_to_strf(time_in)
  t = Time.now
  year = t.year
  month = t.month
  day = t.day
  hours = Integer(time_in)
  decimal_minutes = (time_in - hours) * 60.0
  minutes = Integer(decimal_minutes)
  decimal_seconds = (decimal_minutes - minutes) * 60.0
  seconds = Integer(decimal_seconds)
  my_time = Time.new(year, month, day, hours, minutes, seconds, "-05:00")  
  my_time.strftime("%H:%M:%S")
end

decimal_hours = 4.64
puts
puts "#{decimal_hours} = #{decimal_to_strf(decimal_hours)}"
puts 
