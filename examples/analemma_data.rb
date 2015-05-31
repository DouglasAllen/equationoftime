# analemma_data.rb
require 'eot'

year = Time.now.utc.year
start = "#{year}-01-01"
finish = "#{year}-12-31"

puts Date.today.to_s
start_date = Date.parse(start).jd
finish_date = Date.parse(finish).jd
puts "start julian date = #{start_date}"
puts "finish julian date = #{finish_date}"

eot = Eot.new()
(start_date..finish_date).each do | jd |    
		eot.ajd = jd
		eot.ma_ta_set
		trans = eot.ajd_to_datetime(eot.mean_local_noon_jd)
    delta_t = eot.display_equation_of_time
    declination = eot.declination_string
    printf("%s\t\t%s\t\t%s\n", trans, delta_t, declination)
end

