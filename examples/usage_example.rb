# usage_example.rb

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot' 
end

eot = Eot.new()
# find what the defaults are set to
show = <<RAN
ajd       = #{eot.ajd}
date      = #{eot.date}
jd        = #{eot.jd}
longitude = #{eot.longitude}
latitude  = #{eot.latitude}
sunrise   = #{eot.sunrise_dt}
trnasit   = #{eot.local_noon_dt}
min eot   = #{eot.time_eot}
sunset    = #{eot.sunset_dt}
gasa      = #{eot.tl_Aries}
RAN

puts show