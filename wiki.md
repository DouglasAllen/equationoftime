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
     eot.latitude = latitude; eot.longitude = longitude; eot.ajd = Date.parse(date).jd
     eot.sunrise_dt().to_time
     eot.sunset_dt().to_time  

Wiki 3:

     require 'eot';eot = Eot.new()
     loop do
       eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
       puts eot.string_time(eot.tl_Aries() / 15.0)
       sleep 0.73
     end

Wiki 4:

     require 'eot';eot = Eot.new()
     "There are #{Eot::SM * 6} hours in a sidereal day."
     "That is why on the next day the stars are about 4 minutes earlier."
     obtime0 = Time.now
     obtime1 = obtime0 + Eot::SM * 6 * 3600
     "Now you know when to look next time."

Wiki 5:

     require 'eot'; eot = Eot.new(); eot.ajd = Date.today.jd.to_f
     DateTime.jd(eot.sunrise_jd + 0.5)
     DateTime.jd(eot.sunset_jd + 0.5)
  
