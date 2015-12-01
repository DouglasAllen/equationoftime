require 'celes'
require 'date'
require 'eot'
eot = Eot.new

toD = 180.0 / Math::PI

jd_now = DateTime.now.to_time.utc.to_datetime.jd.to_f

days_now = jd_now - 2451545.00
#t = days_now / 36525.0

pvh =  Celes.epv00(jd_now, 0.0)[0]

x  = pvh[0][0]
y  = pvh[0][1]
z  = pvh[0][2]
xd = pvh[1][0]
yd = pvh[1][1]
zd = pvh[1][2]

sc = Celes.pv2s(pvh)
p theta = sc[0] * toD
p eot.earth_mean_heliocentric_longitude * toD 
phi   = sc[1] * toD
r     = sc[2]
p td    = (sc[3] * toD)
pd    = sc[4]
rd    = sc[5]

p theta + Math::PI * toD
p (eot.mean_geocentric_longitude * toD + td) % 360
p eot.mean_longitude * toD
p eot.true_longitude * toD
p eot.apparent_longitude * toD
phi   * -1


