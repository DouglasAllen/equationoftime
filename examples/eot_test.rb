require 'eot'

# Constants
p Eot::DAY_HOURS     #>= 24.0
p Eot::DAY_MINUTES  #>= 1440.0
p Eot::DAY_SECONDS #>= 86400.0
p Eot::DAY_USECS      #>= 86400000000.0
p Eot::DJ00                 #>= 2451545.0

p Eot::PI
# Class instance 
eot = Eot.new
p eot

p eot.date.class
p eot.jd.class
p eot.ajd.class
p eot.latitude.class
p eot.longitude.class

p eot.date= Date.today
p eot.jd= eot.date.jd
p eot.jd
p eot.ajd= eot.date.ajd
p eot.ajd
#p eot.ajd_time
