# check_date_type.rb

begin
  require 'eot'
rescue LoadError
  lib = File.expand_path('../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
end

require 'eot'

eot = Eot.new

output = <<EOO

eot = Eot.new()

eot.ajd = #{eot.ajd}

eot.eot = #{eot.eot} # this is radians for eot today.

eot.date = #{eot.date = '2014-10-14'} = #{eot.date.class}

eot.ajd = Date.parse(eot.date).jd.to_f = #{eot.ajd = Date.parse(eot.date).jd.to_f}

eot.eot = #{eot.eot} # getting default today

eot.equation_of_time(eot.time_julian_century(eot.ajd)) = #{eot.eot}

eot.sunrise_dt() = #{eot.sunrise_dt} with lat and lng 0.

eot.longitude = #{eot.longitude = 0}

eot.sunrise_dt() = #{eot.sunrise_dt}

eot.latitude = #{eot.latitude = 0}

eot.sunrise_dt() = #{eot.sunrise_dt}

eot.longitude = #{eot.longitude = 180.0}

eot.sunrise_dt() = #{eot.sunrise_dt}

eot.longitude = #{eot.longitude = -180.0}

eot.sunrise_dt() = #{eot.sunrise_dt}

eot.longitude = #{eot.longitude = 0}
eot.latitude = #{eot.latitude = 90}

eot.sunrise_dt() = #{eot.sunrise_dt}

eot.longitude = #{eot.longitude = 0}
eot.latitude = #{eot.latitude = -90}

eot.sunrise_dt() = #{eot.sunrise_dt}
EOO

puts output
