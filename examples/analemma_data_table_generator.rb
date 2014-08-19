# analemma_data.rb
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'
require 'safe_yaml'
require 'time'
#~ EOT.initialize

start = "2014-02-01"
finish = "2014-12-31"

#~ puts "Analemma Data for October"
start_time = Time.utc( 2014, "jan", 1, 12, 0, 0 )
finish_time = Time.utc( 2014, "dec", 31, 12, 0, 0 )
#~ puts "start julian date = #{start_date.jd}"
#~ puts "finish julian date = #{finish_date.jd}"
#~ puts
eot = EqoT.new
start_jd = start_time.to_datetime.jd
finish_jd = finish_time.to_datetime.jd
@data, @group, @group_id = [], {}, 0
for jd in start_jd..finish_jd     
  p date = DateTime.jd(jd + 0.5).httpdate.to_s
  eot.date = DateTime.jd(jd + 0.5)    
  timejc = eot.time_julian_century(jd)
  
  #~ ml = eot.geometric_mean_longitude(timejc) 
  ra = eot. right_ascension(timejc)
  e1 = eot.delta_orbit(timejc)
  e2 = eot.delta_oblique(timejc) 
  #~ tl = eot. true_longitude(timejc) 
     
  equation_of_time = eot.eot()    
  degrees_declination = eot.declination(timejc)
  delta_1 = eot.string_time(e1)
  delta_2 = eot.string_time(e2)
  delta_t = eot.string_time(e1 + e2)
  declination = eot.degrees_to_s(degrees_declination)
  transit = eot.display_time_string((12 - (e1 + e2) / 60))[0..9]
  local = Time.parse(transit)
  
  
  @group = {group_id: @group_id , jd: jd.to_s, date: date , delta_1: delta_1, delta_2: delta_2, delta_t: delta_t, declination: declination, transit: transit}
  @data << @group
  @group_id  += 1
end

File::open( "public/analemma_data.yml", "w" ) do |f|
  YAML.dump( @data, f )
end

