require 'eot'
eot = Eot.new
puts "My Longitude              : #{eot.longitude = -75.324}"
puts "Longitude / 360           : #{eot.longitude / 360}"
eot.new_date(DateTime.now.to_time.utc.to_date.to_s)
puts "The current UTC noon as jd: #{eot.jd}"
puts "My mean noon UTC as jd    : #{eot.mean_local_noon_jd}"
puts "My solar noon UTC as jd   : #{eot.solar_noon_jd}"
eot_jd = eot.mean_local_noon_jd - eot.solar_noon_dt.ajd
puts "Note: ajd and jd decimals only go so far and so slight difference here"
puts "and obviously some rounding occurs when looking at the second jd above."
puts "mean - solar              : #{e1 = eot_jd}"
puts "eot.eot_jd                : #{e2 = eot.eot_jd}"
puts "The differnce in degrees  : #{(e1 - e2) * 360}"
puts "which in arc minutes is   : #{(e1 - e2) * 360 * 60}"
puts "and in arc seconds is     : #{(e1 - e2) * 360 * 3600}"