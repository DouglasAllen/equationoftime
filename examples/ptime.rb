require 'date'
require 'bigdecimal'
include Math


def degrees_to_radians(degrees)
    bd(degrees * PI / 180.0)
end

def radians_to_degrees(radians)
    bd(radians * 180.0 / PI)
end

# Truncate large angles
def truncate(x)
    bd(360.0 * ( x / 360.0 - Integer( x / 360.0)))
end

def bd(var)
    BigDecimal(var.to_s).round(16)# * 1.0
end

def calc_time_julian_century(t)
# Julian Day Number j(2000) subtracted
  (t - 2451545.0)/36525.0
# Time in fractional centurey
end

def calc_eccentricity_earth_orbit(t)
    0.016708617 - t * (0.000042037 + 0.0000001235 * t)#unitless
    #~ puts "EccentricityEarthOrbit = #{eccentricity}"
end

def mean_anomaly(t)
  (357.527723333 + truncate(35640.0 * t) \
         + t * (359.05034 - t * (0.0001602777778 \
             + t / 300000.0))) % 360.0
#~ t2 = t **2
#~ t3 = t **3
#~ t4 = t **4
#~ @mean_anomaly = 1287104.79305 + 129596581.0481 * t - 0.5532 * t2 + 0.000136 * t3 - 0.00001149 * t4
#~ @mean_anomaly = 357.527723333 + 359.05034 * t + trunc(35640.0 * t) - 0.0001602777778 * t2 - t3/300000.0
     #~ @mean_anomaly = 357.52910 + t * 35999.05034 - t2 * 0.0001559 - t3 * 0.00000048
     #~ puts "GeomMeanAnomalySun = #{mean_anomaly%360}"
     #~ return mean_anomaly % 360 # in degrees
end

def calc_geom_mean_long_sun(t)
    #~ //Mean longitude of the sun
    t2 = t * t
    t3 = t2 * t
    t4 = t3 * t
    t5 = t4 * t
    truncate(280.4664567 + t * 36000.76982779 \
        + t2 * 0.0003032028 + t3/49931.0 \
        - t4/15299.0 - t5/1988000.0)
end

def sun_eq_of_center(t)
    #t2 = t **2
    mean_anomaly = mean_anomaly(t)
    #~ puts "GeomMeanAnomalySun = #{m}"
    marad = degrees_to_radians(mean_anomaly)
    sinmarad = sin(marad)
    eccentricity = calc_eccentricity_earth_orbit(t)
    sin2marad = sin(2.0 * marad)
    sin3marad = sin(3.0 * marad)
    sinmarad * (1.914602 - t * (0.004817 + 0.000014 * t))\
         + sin2marad * (0.019993 - 0.000101 * t)\
         + sin3marad * 0.000289
end
 
def true_anomaly(t)
    mean_anomaly = mean_anomaly(t)
    eqc = sun_eq_of_center(t)
    bd(mean_anomaly + eqc) * 1.0
end

def calc_sun_true_long(t)
    mean_lon = calc_geom_mean_long_sun(t)
    eqc = sun_eq_of_center(t)
    mean_lon + eqc - 0.01397 * (Time.now.year - 2000)
end

def mean_obliquity_of_ecliptic(t)
    bd(23.4392911111 - t * (0.0130041666667 + t * (1.63888888889e-07 - (5.03611111111e-07 * t)))) * 1.0
end

def omega(t)
    bd(125.04455501 - truncate(1800.0 * t)   \
		    - t * (134.136261972     \
		    - t * (0.00207561111111  \
		    + t * (2.13944444444e-06 \
		    - t * 1.64972222222e-08  \
    )))) * 1.0
    bd(125.04455501 - truncate(1800.0 * t)              \
		    - t * 134.136261972                 \
		    + t * t * 0.00207561111111          \
		    + t * t * t * 2.13944444444e-06     \
		    - t * t * t * t * 1.64972222222e-08 \
       ) * 1.0
end
  
def obliquity_correction(t)
    eps0 = mean_obliquity_of_ecliptic(t)
    omega = omega(t)
    delta_eps = bd(0.00256 * cos(degrees_to_radians(omega)))
    bd(eps0 + delta_eps)
end

def sun_right_ascension(t)
    lambda = calc_sun_true_long(t)
    epsilon = obliquity_correction(t)
    y0 = bd(sin(degrees_to_radians(lambda)))
    x0 = bd(cos(degrees_to_radians(lambda)))
    y0 = bd(y0 * cos(degrees_to_radians(epsilon)))
    bd(radians_to_degrees(atan2(-y0, -x0)) + 180.0) * 1.0
end

def mean_long_aries(t)
    d = bd(t * 36525.0)
    bd(truncate(280.46061666 + d * 360.98564736629\
                             + t * (t * 0.000387933\
			     - t * (t / 38710000.0)))) * 1.0
end

pdate = Date.new(2014, 1, 3)
pd = pdate.ajd * 1.0
#puts pd
daysecs = 2 * 84600.0

for seconds in 1..daysecs
  #puts seconds / 84600.0
  jdt = calc_time_julian_century(pd + seconds / 84600.0)
  mas = bd(mean_anomaly(jdt)).round(3) * 1.0
  #puts mas
  tas = bd(true_anomaly(jdt)).round(3) * 1.0
  #puts tas
  if (mas + tas) == 720
    d = pd + seconds / 84600.0
    #puts d
    pt = jdt % 1.0
    break
  #~ else
    #~ d = 0
    #~ pt = 0
  end
end

#~ puts d
#~ puts pt
puts "2014 perihelion occurred at #{d}"
tls = calc_sun_true_long(pt)
puts "lambda perihelion = #{tls}"
sra = sun_right_ascension(pt)
puts "Right ascesion = #{sra}"
ma = mean_long_aries(pt)
puts "GHA Aries = #{ma}"




