# analemma_data_generator.rb
#

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

puts lib

require 'eot'
require 'safe_yaml'
require 'time'

eot    = EqoT.new

start  = "2014-1-1"
finish = "2014-12-31"

start_time  = Time.utc( 2014, "jan", 1, 12, 0, 0 )
finish_time = Time.utc( 2014, "dec", 31, 12, 0, 0 )

# puts "start julian date  = #{start_date.jd}"
# puts "finish julian date = #{finish_date.jd}"

puts

start_jd  = start_time.to_datetime.jd
finish_jd = finish_time.to_datetime.jd

fstr = "%b %d"

@data, @group, @group_id = [], {}, 0

for jd in start_jd..finish_jd     
  date    = Date.jd(jd + 0.5).strftime(fstr)
  jcta    = eot.time_julian_century(jd)
  noon    = DateTime.jd(jd + 0.5)  
  delta_t = eot.show_minutes(eot.time_eot(noon))
  trans   = eot.display_time_string(12 - eot.time_eot(noon)/60.0)
  e1      = eot.show_minutes(eot.time_delta_orbit(jcta))
  e2      = eot.show_minutes(eot.time_delta_oblique(jcta))
  declina = eot.degrees_to_s(eot.dec_Sun(jcta))
  @group  = {group_id: "#{@group_id}", 
             date_str: date, 
             delta_et: delta_t,                   
             delta_e1: "#{e1}",
             delta_e2: "#{e2}",
             transit0: "#{trans}",
             declinat: "#{declina}",             
             juliandn: "#{jd}",
             }  
  @data << @group
  @group_id  += 1
end

p file_path = 'analemma_data.yml'

# puts "Analemma Data for 2014 being generated."

File::open( file_path, "w" ) do |f|
  YAML.dump( @data, f )
end

