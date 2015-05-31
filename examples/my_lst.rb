require 'eot'
eot = Eot.new
d = DateTime.now.to_time.utc.to_datetime
djm0, djm = Celes::cal2jd(d.year, d.month, d.day)
ajd = djm0 + djm 
my_lng = - 88.75#  + d.day_fraction
jd_now = DateTime.now.to_time.utc.to_datetime.jd.to_f
mln = eot.ajd_to_datetime(jd_now - my_lng / 360.0)

eot.longitude = my_lng

#~ loop do
	tn = DateTime.now.to_time.utc.to_datetime
  eot.jd = tn.jd.to_f
	eot.ajd = eot.mean_local_noon_jd
  eot.ma_ta_set
	
  rad = eot.ra_sun * Eot::R2D
  gad = eot.tl_aries * Eot::R2D  
  etad = eot.eot * Eot::R2D
	crad = etad + rad
  lsad = (gad + my_lng) % 360.0
  lst = lsad / 15.0
	ra = crad / 15.0
  p ha = lst - ra
	#~ (gad - rad) % 360.0
	
  #~ gst = gad / 15.0
	#~ noon = tn - ha / 24.0
	#~ ajd_noon = noon.ajd.to_f
	#~ mean_noon = eot.mean_local_noon_jd
	#~ eot.ajd_to_datetime(ajd_noon)
	#~ eot.ajd_to_datetime(mean_noon)
	#~ (mean_noon - ajd_noon) * 1440.0
	#~ eot.now
	sleep 5
#~ end

 