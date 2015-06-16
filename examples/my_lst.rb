# mirroring some of sunriset.c by (c) Paul Schlyter, 1989, 1992
# to help me tweek it and gain a better understanding of his code.
# see http://www.stjarnhimlen.se/english.html

my_lng = -88.7430640
my_lat = 41.9475360
my_el = 257.32

require 'eot'
eot = Eot.new
eot.longitude = my_lng
eot.latitude = my_lat

d = DateTime.now.to_time.utc.to_datetime

djm0, djm = Celes::cal2jd(d.year, d.month, d.day)
ajd = djm0 + djm
majd = ajd - 2451545.0

mljd = (my_lng / 360.0).round(9)
jd_now = d.jd.to_f
eot.jd = jd_now
jd_now - mljd
mln = eot.ajd_to_datetime(jd_now - mljd)
eot.ajd = eot.mean_local_noon_jd
eot.ma_ta_set
	
gmsad = (eot.gml_sun * Eot::R2D + 180.0	) % 360.0
lmsad  = (gmsad + 180 + my_lng) % 360.0
lmst    = lmsad / 15.0
	
raad = eot.ra_sun * Eot::R2D 
ra = (raad / 15.0)

def rev180(x)
	(x) - 360.0 * Integer( x / 360.0 + 0.5 )
end
x = (lmsad - raad) % 360.0
tsouth = 12.0 - rev180(x) / 15.0
    
saltitude = -0.8333
sine_altit = Math.sin(saltitude * Eot::D2R)

sine_lat = Math.sin(eot.latitude * Eot::D2R)
cosine_lat = Math.cos(eot.latitude * Eot::D2R)

declination = eot.dec_sun
sine_dec = Math.sin(declination)
cosine_dec = Math.cos(declination)

cosha = ( sine_altit - sine_lat * sine_dec ) / ( cosine_lat * cosine_dec )
ccosha = (cosha > 1.0 || cosha < -1.0) ? 1.0: cosha
ha = Math.acos( ccosha ) * Eot::R2D
srise = tsouth - ha / 15.0
sset = tsouth + ha / 15.0
daylen = 2.0 * ha / 15.0
printf("Day length:                 %5.2f hours\n", daylen)
printf("Sun at south:              %2.0f:%2.0f UT\n", Integer(tsouth), (tsouth % 1.0) * 60.0)
printf("Sun rises:                   %2.0f:%2.0f UT\n", Integer(srise), (srise % 1.0 ) * 60.0)
printf("Sun sets:                    %2.0f:%2.0f UT\n", Integer(sset),  (sset % 1.0 ) * 60.0) 