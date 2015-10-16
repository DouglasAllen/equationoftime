# from_wiki.rb

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
end

eot = Eot.new
# Wiki 1:

loop do
  puts "#{Time.now} #{eot.show_minutes(eot.now)}"
  sleep 11
end

# Wiki 2:

latitude = 41.9474
longitude = -88.74467
date = '2013-12-25'
eot.latitude = latitude
eot.longitude = longitude
eot.ajd = Date.parse(date).jd
p eot.sunrise_dt.to_time
p eot.sunset_dt.to_time

# Wiki 3:

loop do
  eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd
  puts eot.string_time(eot.tl_Aries / 15.0)
  sleep 0.73
end

# Wiki 4:

puts "There are #{Eot::SM * 6} hours in a sidereal day."
puts 'That is why on the next day the stars are about 4 minutes earlier.'
p obtime0 = Time.now
obtime1 = obtime0 + Eot::SM * 6 * 3600
p obtime1
puts 'Now you know when to look next time.'

# Wiki 5:

p DateTime.jd(eot.sunrise_jd + 0.5)
p DateTime.jd(eot.sunset_jd + 0.5)
