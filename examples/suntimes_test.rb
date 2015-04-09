require 'eot'
eot = Eot.new
# Change these for your geo location
@latitude = 41.9474  # + in Northern Hemishere,  - in Southern Hemisphere
@longitude = -88.74467  # + East of zulu time zone, - West of zulu time zone

eot.jd = Date.today.jd
eot.longitude = @longitude
eot.latitude = @latitude
puts "Sunrise today = #{eot.sunrise_dt.to_time}"
puts "Sunset today = #{eot.sunset_dt.to_time }"