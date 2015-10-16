lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = Eot.new
heredoc = <<HD
Setting the ajd sets a lot of other attributes.
All the angle calculations use this one setting.
ex: eot.ajd = 2451545.0
#{eot.ajd = 2_451_545.0}
You may get just about any value now from various methods.
ex: eot.equation_of_time
#{eot.equation_of_time} radians
But first be sure to run this after any changes to DateTime attributes.
eot.ma_ta_set.
#{eot.ma_ta_set}
What day was that ajd?
eot.ajd_to_datetime(eot.ajd)
#{eot.ajd_to_datetime(eot.ajd)}
Sun apparent longitude.
eot.apparent_longitude
#{eot.apparent_longitude} radians
Try adding 80 days to the ajd
eot.ajd = 2451545.0 + 80
#{eot.ajd = 2_451_545.0 + 80}
eot.ma_ta_set
#{eot.ma_ta_set}
eot.ajd_to_datetime(eot.ajd)
#{eot.ajd_to_datetime(eot.ajd)}
eot.apparent_longitude
#{eot.apparent_longitude} radians
Almost a zeroed out circle in radians.
#{eot.ajd_to_datetime(eot.ajd)}
That's near the Vernal Exquinox but we went past it.
It nomally occurs 78 days after the Earth has been at
perihelion of it's orbit around the Sun.
When does perihelion occur then?
A reasonable estimate is about the 3rd day of a new year.
eot.ajd = 2451545.0 + 2
#{eot.ajd = 2_451_545.0 + 2}
#{eot.ajd_to_datetime(eot.ajd)}
Now add the 78 days.
eot.ajd + 78
#{eot.ajd += 78}
#{eot.ma_ta_set}
#{eot.apparent_longitude} radians
We completed the orbit plus a little extra.
It's just a rough estimate and is always changing.
Lets subtract mean solar longitude from solar mean anomaly.
eot.mean_anomaly
#{eot.mean_anomaly} radians
That's what we have been seeing after we do eot.ma_ta_set
so don't worry it's normal.
Ruby methods evaluate the last term in them.
eot.mean_longitude
#{eot.mean_longitude}
eot.mean_anomaly - eot.mean_longitude
#{eot.mean_anomaly - eot.mean_longitude}
What is that in degrees?
#{(eot.mean_anomaly - eot.mean_longitude) * 180 / Math::PI}
Let's see, minus degrees would mean to add that to say 360.
right ascension on the celestial sphere.
360 + (eot.mean_anomaly - eot.mean_longitude) * 180 / Math::PI
#{360 + (eot.mean_anomaly - eot.mean_longitude) * 180 / Math::PI}
What's my point?
If you know the exact time that the Vernal Equinox occurs
then you may find the exact time that Perihelion for Earth occurs.
But how do we do the math for that?
I only have a clue. http://analemma.com
HD
puts heredoc
