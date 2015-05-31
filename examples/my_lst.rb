require 'eot'
eot = Eot.new
d = DateTime.now.to_time.utc.to_datetime
djm0, djm = Celes::cal2jd(d.year, d.month, d.day)
ajd = djm0 + djm 
my_lng = - 88.75#  + d.day_fraction
p jd_now = DateTime.now.to_time.utc.to_datetime.jd.to_f
p mln = eot.ajd_to_datetime(jd_now - my_lng / 360.0)

eot.longitude = my_lng

loop do
  eot.ajd = DateTime.now.to_time.utc.to_datetime.ajd.to_f
	eot.jd
  eot.ma_ta_set
  rad = eot.ra_sun * Eot::R2D
  gad = eot.tl_aries * Eot::R2D
  (gad - rad) % 360.0
  ra = rad / 15.0
  gst = gad / 15.0
  lsad = (gad + my_lng) % 360.0
  lst = lsad / 15.0
  ha = lst - ra
	tn = DateTime.now.to_time.utc.to_datetime
	noon = tn - ha / 24.0
	ajd_noon = noon.ajd.to_f
	mean_noon = eot.mean_local_noon_jd
	p eot.ajd_to_datetime(ajd_noon)
	p eot.ajd_to_datetime(mean_noon)
	p (mean_noon - ajd_noon) * 1440.0
	sleep 5
end

 