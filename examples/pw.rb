require 'eot'

eot = Eot.new

p eot.date= DateTime.now.to_time.utc.to_datetime
p eot.jd= eot.date.jd
p eot.jd
p eot.ajd= eot.date.ajd.to_f
p eot.ajd.to_f
#~ p eot.apparent_longitude
#~ p eot.ta_sun
#~ p eot.apparent_longitude - eot.ta_sun
p (eot.apparent_longitude - eot.ta_sun) * Eot::R2D + 360
#~ p eot.gml_sun
#~ p eot.ma
#~ p (eot.gml_sun - eot.ma) * Eot::R2D + 360
p (282.9404 + eot.ta * 4.70935E-5 ) % 360.0