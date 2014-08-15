#ccheck_date_type.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require  'equation_of_time'

eot = Equation_of_Time.new(nil, nil, DateTime.new(2014,10,14,18,11,33,'+0'))

output =<<EOO

eot = Equation_of_Time.new(nil, nil, DateTime.new(2014,10,14,18,11,33,'+0'))

eot.date = #{eot.date} = #{eot.date.class}

eot.ajd = eot.date.ajd.to_f = #{eot.ajd = eot.date.ajd.to_f}

eot.equation_of_time = #{eot.equation_of_time} # getting default A2000

eot.equation_of_time(eot.time_julian_century(eot.ajd)) = #{eot.equation_of_time(eot.time_julian_century(eot.ajd))}

eot.date = #{eot.date = "2014-10-14"} = #{eot.date.class}

eot.ajd = Date.parse(eot.date).jd.to_f = #{eot.ajd = Date.parse(eot.date).jd.to_f}

eot.equation_of_time = #{eot.equation_of_time} # getting default A2000

eot.equation_of_time(eot.time_julian_century(eot.ajd)) = #{eot.equation_of_time(eot.time_julian_century(eot.ajd))}

eot.sunrise_time(eot.date) = #{eot.sunrise_time(eot.date)} with lat and lng nil.

eot.longitude = #{eot.longitude = 0}

eot.sunrise_time(eot.date) = #{eot.sunrise_time(eot.date)}

eot.latitude = #{eot.latitude = 0}

eot.sunrise_time(eot.date) = #{eot.sunrise_time(eot.date)}

eot.longitude = #{eot.longitude = 180.0}

eot.sunrise_time(eot.date) = #{eot.sunrise_time(eot.date)}

eot.longitude = #{eot.longitude = -180.0}

eot.sunrise_time(eot.date) = #{eot.sunrise_time(eot.date)}

eot.longitude = #{eot.longitude = 0}
eot.latitude = #{eot.latitude = 90}

eot.sunrise_time(eot.date) = #{eot.sunrise_time(eot.date)}

eot.longitude = #{eot.longitude = 0}
eot.latitude = #{eot.latitude = -90}

eot.sunrise_time(eot.date) = #{eot.sunrise_time(eot.date)}
EOO

puts output