require 'eot'
eot = Eot.new
heredoc = <<HD

Setting the jd sets a lot of other attributes.
All the angle calculations use this one setting.

ex: eot.jd = 2451545.0
#{eot.jd = 2_451_545.0}

You may get just about any value now from
various methods.
ex: eot.eot
#{eot.eot} radians

What day was that jd?
eot.jd_to_datetime(eot.jd)
#{eot.jd_to_datetime(eot.jd)}

Now let's look at Sun mean longitude.
eot.mean_longitude
#{eot.ml_sun} radians

Try adding 80 days to the jd
eot.jd += 80
#{eot.jd += 80}
#{eot.ml_sun} radians
Almost a full circle in radians.

What day is that?
eot.jd_to_datetime(eot.jd)
#{eot.jd_to_datetime(eot.jd)}

That's near the Vernal Exquinox.
It nomally occurs about 78 days after perihelion
of the Earth in it's orbit around the Sun.

Reset the jd back to Jan 01.
#{eot.jd -= 80}

When does perihelion occur then?
A reasonable estimate is about the 3rd day of a new year.
eot.jd += 2
#{eot.jd += 2}
eot.jd_to_datetime(eot.jd)
#{eot.jd_to_datetime(eot.jd)}

Now add 79 days.
eot.jd += 79
#{eot.jd += 79}
#{eot.ml_sun} radians
We completed the orbit plus a little extra.

What day is that?
eot.jd_to_datetime(eot.jd)
#{eot.jd_to_datetime(eot.jd)}

It's just a rough estimate and is always slightly changing.

HD
puts heredoc
