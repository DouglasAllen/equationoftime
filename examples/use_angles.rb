# use_angles.rb
#
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'equation_of_time'


file = <<EOS

This will explain how the equation of time is derived by showing
each method that comprises the formula.

eot = Equation_of_Time.new
#{eot = Equation_of_Time.new}

Set the date instance to the deisired date ex "yyyy-mm-dd" 

eot.date = Date.today
#{eot.date = Date.today.to_s}
The date has been set to #{eot.date}

Set the jd instance to todays jd.

eot.jd = Date.today.jd
#{eot.jd = Date.today.jd}
The jd has been set to #{eot.jd}

The Astronomical Julian Day Number plus the fractional day time now will be used to calculate current angles.

The current time expressed as an AJDN : 

eot.ajd_time(DateTime.now.to_time.utc.to_datetime)
#{eot.ajd_time(DateTime.now.to_time.utc.to_datetime)}
This is not used for rise and set times but only current delta times.

mu is the solar Mean anomaly. It is an angle with respect to perihelion of Earth orbit around Sun.
It is calculated as if the Earths orbit were circular.

mu = eot.ma_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))
#{mu = eot.ma_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))} deg.


nu is the True anomaly. It is the actual angle with respect to perihelion in an eliptical orbit.
It was calculated by using the equation of center formula which you may access also.

eqc = eot.center(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))
#{eqc = eot.center(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))} deg.

nu = eot.ta_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))
#{nu = eot.ta_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))} deg. 

We find the delta or difference of these first two angles.
Notice it is counter sign of equation of center. It just may have taken longer to calculate.

delta_eccentric = mu - nu
#{delta_eccentric = mu - nu} deg. 

The next delta is calculated as follows.

lambda = mean longitude + equation of center

mean_longitude = eot.gml_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))
#{mean_longitude = eot.gml_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))} deg.

eqc = eot.center(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))
#{eqc = eot.center(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))} deg.

true longitude =  mean longitude + equation of center
#{mean_longitude + eqc}

Lambda is the \"ecliptic coordinate system\" angle of the sun.

lambda_l1 = eot.tl_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))
#{lambda_l1 = eot.tl_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))} deg.

This may also be used and is a very small difference to lambda 1

lambda_l2 = eot.al_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))
#{lambda_l2 = eot.al_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))} deg.

Alpha is the Right Ascension of the sun in the celestial coordinate system.

alpha = eot.ra_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))
#{alpha = eot.ra_Sun(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))} deg.

Delta ecliptic is the difference in these two angles.

delta_ecliptic = lambda_l1 - alpha
#{delta_ecliptic = lambda_l1 - alpha} deg.

The method inside the gem is called delta_oblique(ta) and yields a time not an angle like here.

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

eot.get_time(mean_noon)
#{eot.get_time(mean_noon)}

Now we need to calculate the delta total for our mean solar transit.
We will use the mean noon time to get equation of time.
We will be using mean_noon as a time object.
First create a time object for the date at 12:00 and subtract 
(my_longitude / 15.0) * 3600.0 to get the time object.
This is what get_time did without the longitude because it was provided before.

mean_noon = Time.utc(DateTime.now.to_time.utc.to_datetime.year, DateTime.now.to_time.utc.to_datetime.month, DateTime.now.to_time.utc.to_datetime.day, 12, 0, 0) - (my_longitude / 15.0) * 3600.0}
#{mean_noon = Time.utc(DateTime.now.to_time.utc.to_datetime.year, DateTime.now.to_time.utc.to_datetime.month, DateTime.now.to_time.utc.to_datetime.day, 12, 0, 0) - (my_longitude / 15.0) * 3600.0}

delta_total = eot.equation_of_time(time_julian_century(ajd_time(DateTime.now.to_time.utc.to_datetime)))
#{delta_total = eot.equation_of_time(eot.time_julian_century(eot.ajd_time(DateTime.now.to_time.utc.to_datetime)))} min.

Let us convert that to an angle.

delta_deg = delta_total / 4.0 * 360.0 / 360.98564736629  Note: not quite 4 minutes per degree.
#{delta_deg = delta_total / 4.0 * 360.0 / 360.98564736629} deg.

Now we can add that from our longitude or mean noon angle

noon_angle = my_longitude + delta_deg
#{noon_angle = my_longitude + delta_deg}

Your longitude and the GHA of the Sun will match atTrue Solar Transit time.

So lets convert that angle to a time now.
eot.get_time(Date.today.to_datetime + 12 - noon_angle / 15.0)
#{eot.get_time(Date.today.to_datetime + 12 - noon_angle / 15.0)}
check it here http://douglasallen.github.io/planets/ just put in the correct time and date then hit calculate.
Does GHA Sun = your longitude?
EOS

puts file