# use_angles.rb

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'


file = <<DISPLAY

This will explain how the equation of time is derived by showing each method that comprises the formula.

eot = Eot.new

Instance of Eot class eot = #{eot = Eot.new}


Set the class attribute ajd for the deisired date ex : eot.ajd = Date.parse("yyyy, mm, dd").jd.to_f

eot.ajd = Date.today.jd.to_f

eot.ajd = #{eot.ajd = Date.today.jd.to_f}

The class attribute ajd has been set to a nice whole number even though it is a Float class now.

The Astronomical Julian Day Number is a half day less than Julian Day Number with the fractional day time included when we DateTime class.

DateTime.now.day_fraction.to_f = #{DateTime.now.day_fraction.to_f}

DateTime class has the method day_fraction and Date class does not.

We used Date class which doesn't give us the UTC time of date. It yields your time zone date.

Let's just prove this.

Date.today.to_time.utc = #{Date.today.to_time.utc}

It looks like that was your midnight in UTC time.

Maybe we could get away with getting the ajd from that.

Date.today.to_time.utc.to_date.ajd.to_f = #{Date.today.to_time.utc.to_date.ajd.to_f}

No. That's a half day less than the Julian Day Number.

So let's start over setting the adj correctly for UTC using the DateTime class.

eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd.to_f

eot.ajd = #{eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd.to_f}


Because this gem is going to calculate the sunrise and sunset times it's okay to set the day for noon and is encouraged.

So go ahead and set the ajd using the Date class and jd method as was first done.

The class init.rb sets everything to defaults and one of them is today's datetime.jd 

But for right now we won't do that so we get current angles of the present time UTC.



eot.ma is the solar Mean anomaly mu(M) and is called quite often hence the attribute.

eot.ma was set using eot.ma_Sun() method.

It is an angle with respect to perihelion of Earth orbit around Sun in an assumed circular orbit.

M is calculated within the nutation.rb file under delta_equinox() method and returned as the third element of an array.

eot.ma = #{eot.ma}

eot.ma_Sun() = #{eot.ma_Sun()}


angle one = eot.ma_Sun() - eot.ta_Sun()

a1 = #{eot.ma_Sun() - eot.ta_Sun()} degrees

a1 is a delta angle difference for mean and true anomalies in degrees.

True anomaly (nu) is the actual angle with respect to perihelion in an eliptical orbit.

It was calculated by using the equation of center formula which you may access also.

eot.center() = #{eot.center()} degrees.

nu = equation of center + M or mu or mean anomaly

The delta is M - nu.


The method inside the gem is called delta_orbit()

eot.delta_orbit = #{eot.delta_orbit} degrees

We could just change the sign of eot.center().  

In fact let's just do that now. a1 = - eot.center()
  
- eot.center() = #{- eot.center()}


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

The method inside the gem is called delta_oblique.

eot.delta_oblique() = #{eot.delta_oblique()}


The sum of these two delta angles is the equation of time angle in degrees not time.

eot.eot() = #{eot.eot()}

That was for the time UTC now which was easy.


Now using your longitude to compute your mean solar transit from longitude / 15.0

my longitude is -88.74467 deg. so I'll set the longitude attribute in Eot class.

eot.longitude = #{eot.longitude = -88.74467}


So my mean solar transit UTC is 12.0 - my_longitude / 15.0

my_mean_noon = #{12.0 - -88.74467 / 15.0} hr.

Be sure to set everything for UTC noon before adding it to your longitude because we were doing angles for time now.
  
eot.ajd = #{eot.ajd = Date.today.jd.to_f}
  


Using the Eot class I may also compute it with eot.mean_local_noon_dt() method if I have the ajd set right.

eot.mean_local_noon_dt() = #{eot.mean_local_noon_dt()}

I'm showing what time mean noon for my_longitude normally is without the equation of time considered.

This time is true only four days a year. Lets get the right one for today to be sure.



We can add longitude plus equation of time as angles. 

eot.longitude + eot.eot() = #{eot.longitude} + #{eot.eot()}

What's the time of solar transit here now?

12.0 - (eot.longitude + eot.eot()) / 15.0 = #{12.0 - (eot.longitude + eot.eot()) / 15.0}
  
That looks about right.



Let's make a time out of that by converting it to a fractional day.

(12.0 - (eot.longitude + eot.eot()) / 15.0) / 24.0 = #{(12.0 - (eot.longitude + eot.eot()) / 15.0) / 24.0}
  
We'll add that to the ajd then.

ajd = Date.today.ajd.to_f

ajd = #{Date.today.ajd.to_f}

#{Date.today.ajd.to_f} + #{(12.0 - (eot.longitude + eot.eot()) / 15.0) / 24.0} = #{Date.today.ajd.to_f + (12.0 - (eot.longitude + eot.eot()) / 15.0) / 24.0}


There is a method in Eot class to make that a DateTime object.

eot.ajd_to_datetime(ajd + transit)

#{eot.ajd_to_datetime(Date.today.ajd.to_f + (12.0 - (eot.longitude + eot.eot()) / 15.0) / 24.0)}


Be sure to set your latitude attribute as well when you want to compute sunrise and sunset times for the days of interest.

eot.latitude = my_latitude


Your longitude and the GHA of the Sun will match at True Solar Transit time.

Check it here http://douglasallen.github.io/planets/ just put in the correct time and date then hit calculate.

Does GHA Sun = your longitude?

It's off a little bit because that site uses a different formula that is commonly used in older programs.

I get about 3 seconds difference in the EOT is all.
DISPLAY







puts file