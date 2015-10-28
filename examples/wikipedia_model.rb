# This is basically the same as https://en.wikipedia.org/wiki/Sunrise_equation
# only it realy runs in Ruby.

require 'eot'

eot = Eot.new

# we will use today as the date which Eot does during initialization.
# You could set it to any day though.
j_date = eot.jd

# we'll set some data that I'm familiar with but you may use your own here.
l_w = 88.75
phi = 41.9333
rad = Math::PI / 180.0
# Eot will do a lot of this for us but for now it's a model of the wikipedia version

# Calculate current Julian cycle
n = j_date - 2451545.0 + 0.0008

# where:

# j_date is the Julian date
# n_star is the Julian cycle[definition needed] since Jan 1st, 2000.

# Mean solar noon
j_star = n + l_w / 360.0

# j_star is an approximation of solar noon at l_w.
# l_w is the longitude west (west is positive, east is negative) of the observer on the Earth.

# Solar mean anomaly
M = (357.5291 + 0.98560028 * j_star) % 360.0

# where:

# M is the solar mean anomaly.

# Equation of the center
C = 1.9148 * Math.sin(M * rad) + 0.0200 * Math.sin(2 * M * rad) + 0.0003 * Math.sin(3 * M * rad)

# where:

# C is the Equation of the center.

# Ecliptic longitude
lambda = (M + 102.9372 + C + 180) % 360.0

# where:

# lambda is the ecliptic longitude.

# Solar transit
j_transit = 2451545.0 + j_star + 0.0053 * Math.sin(M * rad) - 0.0069 * Math.sin(2 * lambda * rad)

# where:

# j_transit is the hour angle for solar transit or solar noon.

# Declination of the Sun
sin_delta = Math.sin(lambda * rad) * Math.sin(23.44 * rad)
cos_delta = Math.cos(lambda * rad) * Math.cos(23.44 * rad)

# where:

# sin_delta  is the sin of the declination of the sun.

# Hour angle
cos_omega = (Math.sin(-0.83 * rad) - Math.sin(phi * rad) * sin_delta) /
            Math.cos(phi * rad) * Math.cos(Math.asin(sin_delta))

# where:

# omega is the hour angle;
# phi is the north latitude of the observer (north is positive, south is negative) on the Earth.

# Calculate sunrise and sunset
j_set = j_transit + Math.acos(cos_omega) / rad / 360.0

j_rise = j_transit - Math.acos(cos_omega) / rad / 360.0

# where:

# j_set is the actual Julian date of sunset;
# j_rise is the actual Julian date of sunrise.

p @rise = DateTime.jd(0.5 + j_rise)
p @transit = DateTime.jd(0.5 + j_transit)
p @set = DateTime.jd(0.5 + j_set)

# from gem root terminal $ irb
# > load 'examples/wikipedia_model.rb'

# Now let the gem do it's thing.
eot.latitude = phi
eot.longitude = -l_w
eot.new_date(DateTime.now.to_time.utc.to_date.to_s)
p @sunrise = eot.sunrise_dt
p @solar_noon = eot.solar_noon_dt
p @sunset = eot.sunset_dt
