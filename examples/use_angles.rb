# use_angles.rb

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'


file = <<DISPLAY

This will explain how the equation of time is derived by showing each method that comprises the formula.

eot = Eot.new

Instance of Eot class eot = #{eot = Eot.new}


Set the class attribute ajd for the deisired date ex : eot.ajd = Date.parse("yyyy, mm, dd").jd

eot.ajd = Date.today.jd = #{eot.ajd = Date.today.jd}

eot.ajd = #{eot.ajd} The class attribute ajd has been set.

The Astronomical Julian Day Number(AJDN) plus the fractional day time now(FDN) will be used to calculate current angles.

DateTime.now.to_time.utc.to_datetime.day_fraction.to_f = #{DateTime.now.to_time.utc.to_datetime.day_fraction.to_f}

eot.ajd + DateTime.now.to_time.utc.to_datetime.day_fraction.to_f = #{eot.ajd + DateTime.now.to_time.utc.to_datetime.day_fraction.to_f}

But that was the JDN that starts as a whole number at UTC Noon. We need the actual time so half a day needs to be added on.

eot.ajd + DateTime.now.to_time.utc.to_datetime.day_fraction.to_f + 0.5 = #{eot.ajd + DateTime.now.to_time.utc.to_datetime.day_fraction.to_f + 0.5 }

Because this gem is going to calculate the sunrise and sunset times it's okay to set the day for noon and is encouraged.

But for now let's just forget that and consider what all these angles are at a reasonable instance of the time now.

eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd.to_f

eot.ajd = #{DateTime.now.to_time.utc.to_datetime.ajd.to_f}

Did we get the same number? Not always but should be reasonably close because the computation does take time. :D

I have not been able to see any difference yet but I know when it comes time for running tests they do show up.


Okay! Moving on now because we have what we need and is simple to get with Ruby methods.

mu(M) is the solar Mean anomaly. It is an angle with respect to perihelion of Earth orbit around Sun in an assumed circular orbit.

M is calculated within the nutation.rb file under delta_equinox() method and returned as the third element of an array.

But first Eot requires that we set the ta attribute first using eot.time_julian_century() method.

eot.time_julian_century() = #{eot.time_julian_century()}

@ta is an array of powers for fractional century of 36525 Julian days.

Now we can be sure to get the right angle fo @ma attribute which is set using eot.ma_Sun() method.

eot.ma_Sun() = #{eot.ma_Sun()}


Next we can use all the rest of the methods to get the equation of time for right now not Noon.

eot.ta_Sun() = #{eot.ta_Sun()}

angle one = eot.ma_Sun() - eot.ta_Sun()

a1 = #{eot.ma_Sun() - eot.ta_Sun()}

which is a delta angle difference for mean and true anomalies in degrees.

nu is the True anomaly. It is the actual angle with respect to perihelion in an eliptical orbit.

It was calculated by using the equation of center formula which you may access also.

eot.center() = #{eot.center()} degrees.

nu = equation of center + M or mu or mean anomaly

The delta is M - nu.

#{eot.ma_Sun() - eot.ta_Sun()}

The method inside the gem is called delta_orbit()

eot.delta_orbit = #{eot.delta_orbit}


The next delta is calculated as follows.

lambda or apparent longitude of the Sun minus alpha or right ascension of the Sun.

a2 = lambda - alpha

lambda = mean longitude + equation of center

eot.gml_Sun() + eot.center() = #{eot.gml_Sun() + eot.center()} or

eot.tl_Sun = #{eot.tl_Sun}

Lambda is the \"ecliptic coordinate system\" angle of the sun.

Alpha is the Right Ascension of the sun in the celestial coordinate system.

alpha = eot.ra_Sun()

alpha = #{eot.ra_Sun()}

lambda - alpha = #{eot.tl_Sun - eot.ra_Sun()}

The method inside the gem is called angle_delta_oblique.

eot.delta_oblique() = #{eot.delta_oblique()}


The sum of these two delta angles is the equation of time angle not time.

eot.eot() = #{eot.eot()}
DISPLAY


#~ delta_total = delta_eccentric + delta_ecliptic
#~ #{delta_total = delta_eccentric + delta_ecliptic} deg.

#~ That was for the time UTC now which was easy.

#~ Now using your longitude to compute your mean solar transit from longitude / 15.0
#~ my longitude is #{my_longitude = -88.74467}
#~ #{my_longitude} deg. note: -deg. because I'm west of UTC or 0.0 deg.

#~ So my mean solar transit UTC is

#~ mean_noon = 12 - my_longitude / 15.0
#~ #{mean_noon = 12 - my_longitude / 15.0} hr.

#~ using the equation of time library method get_time(Date.today.to_datetime + mean_noon) 
#~ I'm showing what time mean noon for my_longitude normally is without
#~ the equation of time considered and this is true only four days a year.

#~ Be sure to set your longitude and latitude as attributes.
#~ eot.longitude = my_longitude
#~ eot.latitude = my_latitude
#~ #{eot.longitude = my_longitude}

#~ eot.mean_local_noon_dt()
#~ #{eot.mean_local_noon_dt()}

#~ Now we need to calculate the delta total for our mean solar transit.
#~ We will use the mean noon time to get equation of time.
#~ We will be using mean_noon as a time object.
#~ First create a time object for the date at 12:00 and subtract 
#~ (my_longitude / 15.0) * 3600.0 to get the time object.
#~ This is what get_time did without the longitude because it was provided before.

#~ mean_noon = Time.utc(DateTime.now.to_time.utc.to_datetime.year, DateTime.now.to_time.utc.to_datetime.month, DateTime.now.to_time.utc.to_datetime.day, 12, 0, 0) - (my_longitude / 15.0) * 3600.0}
#~ #{mean_noon = Time.utc(DateTime.now.to_time.utc.to_datetime.year, DateTime.now.to_time.utc.to_datetime.month, DateTime.now.to_time.utc.to_datetime.day, 12, 0, 0) - (my_longitude / 15.0) * 3600.0}

#~ delta_total = eot.eot()
#~ #{delta_total = eot.eot()} min

#~ Let us convert that to an angle.

#~ delta_deg = delta_total / 4.0 * 360.0 / 360.98564736629  Note: not quite 4 minutes per degree.
#~ #{delta_deg = delta_total / 4.0 * 360.0 / 360.98564736629} deg.

#~ Now we can add that from our longitude or mean noon angle

#~ noon_angle = my_longitude + delta_deg
#~ #{noon_angle = my_longitude + delta_deg}

#~ Your longitude and the GHA of the Sun will match atTrue Solar Transit time.

#~ So lets convert that angle to a time now.

#~ 12 - noon_angle / 15.0
#~ #{12 - noon_angle / 15.0}

#~ my_transit = eot.ajd + (12 - noon_angle / 15.0) / 24.0
#~ #{my_transit = eot.ajd + (12 - noon_angle / 15.0) / 24.0}

#~ DateTime.jd(my_transit)
#~ #{DateTime.jd(my_transit)}

#~ check it here http://douglasallen.github.io/planets/ just put in the correct time and date then hit calculate.
#~ Does GHA Sun = your longitude?
#~ EOS

puts file