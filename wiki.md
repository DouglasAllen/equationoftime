Wiki 1:

     $ irb --simple-prompt

     require 'eot'     
     eot = Eot.new()
     loop do
       puts "#{Time.now} #{eot.show_minutes(eot.now)}"
       sleep 11  
     end

Wiki 2:

     latitude,  longitude, date = 41.9474, -88.74467, "2013-12-25"
     require 'eot';eot = Eot.new()
     eot.latitude = latitude; eot.longitude = longitude; eot.date = date
     eot.sunrise_dt().to_time
     eot.sunset_dt().to_time  

Wiki 3:

     require 'eot';eot = Eot.new()
     loop do
       eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
       puts eot.string_time(eot.tl_Aries(eot.time_julian_century(eot.ajd)) / 15.0)
       sleep 0.73
     end

Wiki 4:

     require 'eot';eot = Eot.new(); eot.factor
     "There are #{360 * eot.factor / 15.0} hours in a sidereal day."
     "That is why on the next day the stars are about 4 minutes earlier."
     obtime0 = Time.now
     obtime1 = obtime0 + 360 * eot.factor / 15.0 * 3600
     "Now you know when to look next time."

Wiki 5:

     require 'date'; DateTime.jd
     require 'eot'; eot = Eot.new(); eot.ajd = DateTime.jd.to_f
     DateTime.jd(eot.sunrise_jd + 0.5)
     DateTime.jd(eot.sunset_jd + 0.5)
  
