# use_angles.rb

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'


file = <<EOS

This will explain how the equation of time is derived by showing
each method that comprises the formula.

eot = Eot.new
#{eot = Eot.new}

Set the ajd instance to the deisired date ex : eot.ajd = Date.parse("yyyy, mm, dd").jd

eot.ajd = Date.today.jd
#{eot.ajd = Date.today.jd}
The ajd has been set to #{eot.ajd}


The Astronomical Julian Day Number plus the fractional day time now will be used to calculate current angles.

The current time expressed as an AJDN : 
#{eot.ajd}


mu is the solar Mean anomaly. It is an angle with respect to perihelion of Earth orbit around Sun.
It is calculated as if the Earths orbit were circular.

mu = eot.ma
#{mu = eot.ma} deg.


nu is the True anomaly. It is the actual angle with respect to perihelion in an eliptical orbit.
It was calculated by using the equation of center formula which you may access also.

eqc = eot.center()
#{eqc = eot.center()} deg.

nu = eot.ta_Sun()
#{nu = eot.ta_Sun()} deg. 

We find the delta or difference of these first two angles.
Notice it is counter sign of equation of center. It just may have taken longer to calculate.

delta_eccentric = mu - nu
#{delta_eccentric = mu - nu} deg. 

The next delta is calculated as follows.

lambda = mean longitude + equation of center

mean_longitude = eot.gml_Sun()
#{mean_longitude = eot.gml_Sun()} deg.

eqc = eot.center(eot.time_julian_century())
#{eqc = eot.center(eot.time_julian_century())} deg

true longitude =  mean longitude + equation of center
#{mean_longitude + eqc}

Lambda is the \"ecliptic coordinate system\" angle of the sun.

lambda_1 = eot.tl_Sun(eot.time_julian_century())
#{lambda_1 = eot.tl_Sun(eot.time_julian_century())} deg

This may also be used and is a very small difference to lambda 1

lambda_2 = eot.al_Sun(eot.time_julian_century())
#{lambda_2 = eot.al_Sun(eot.time_julian_century())} deg

Alpha is the Right Ascension of the sun in the celestial coordinate system.

alpha = eot.ra_Sun(eot.time_julian_century())
#{alpha = eot.ra_Sun(eot.time_julian_century())} deg

Delta ecliptic is the difference in these two angles.

delta_ecliptic = lambda_1 - alpha
#{delta_ecliptic = lambda_1 - alpha} deg.

The method inside the gem is called angle_delta_oblique.

The sum of these two delta angles is

delta_total = delta_eccentric + delta_ecliptic
#{delta_total = delta_eccentric + delta_ecliptic} deg.

That was for the time UTC now which was easy.

Now using your longitude to compute your mean solar transit from longitude / 15.0
my longitude is #{my_longitude = -88.74467}
#{my_longitude} deg. note: -deg. because I'm west of UTC or 0.0 deg.

So my mean solar transit UTC is

mean_noon = 12 - my_longitude / 15.0
#{mean_noon = 12 - my_longitude / 15.0} hr.

using the equation of time library method get_time(Date.today.to_datetime + mean_noon) 
I'm showing what time mean noon for my_longitude normally is without
the equation of time considered and this is true only four days a year.

Be sure to set your longitude and latitude as attributes.
eot.longitude = my_longitude
eot.latitude = my_latitude
#{eot.longitude = my_longitude}

eot.mean_local_noon_dt()
#{eot.mean_local_noon_dt()}

Now we need to calculate the delta total for our mean solar transit.
We will use the mean noon time to get equation of time.
We will be using mean_noon as a time object.
First create a time object for the date at 12:00 and subtract 
(my_longitude / 15.0) * 3600.0 to get the time object.
This is what get_time did without the longitude because it was provided before.

mean_noon = Time.utc(DateTime.now.to_time.utc.to_datetime.year, DateTime.now.to_time.utc.to_datetime.month, DateTime.now.to_time.utc.to_datetime.day, 12, 0, 0) - (my_longitude / 15.0) * 3600.0}
#{mean_noon = Time.utc(DateTime.now.to_time.utc.to_datetime.year, DateTime.now.to_time.utc.to_datetime.month, DateTime.now.to_time.utc.to_datetime.day, 12, 0, 0) - (my_longitude / 15.0) * 3600.0}

delta_total = eot.eot()
#{delta_total = eot.eot()} min

Let us convert that to an angle.

delta_deg = delta_total / 4.0 * 360.0 / 360.98564736629  Note: not quite 4 minutes per degree.
#{delta_deg = delta_total / 4.0 * 360.0 / 360.98564736629} deg.

Now we can add that from our longitude or mean noon angle

noon_angle = my_longitude + delta_deg
#{noon_angle = my_longitude + delta_deg}

Your longitude and the GHA of the Sun will match atTrue Solar Transit time.

So lets convert that angle to a time now.

12 - noon_angle / 15.0
#{12 - noon_angle / 15.0}

my_transit = eot.ajd + (12 - noon_angle / 15.0) / 24.0
#{my_transit = eot.ajd + (12 - noon_angle / 15.0) / 24.0}

DateTime.jd(my_transit)
#{DateTime.jd(my_transit)}

check it here http://douglasallen.github.io/planets/ just put in the correct time and date then hit calculate.
Does GHA Sun = your longitude?
EOS

puts file