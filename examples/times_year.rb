# a list of sunrise and sunset times for a year of dates.

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'
require 'safe_yaml'
require 'time'

eot    = Eot.new

# set your latitude and longitude first.
eot.latitude  = 41.9474
eot.longitude = -88.74467

# make some start and finish dates.
start  = "2014-1-1"
finish = "2014-12-31"

start_time  = Time.utc( 2014, "jan", 1, 12, 0, 0 )
finish_time = Time.utc( 2014, "dec", 31, 12, 0, 0 )

start_jd  = Date.parse(start).jd
finish_jd = Date.parse(finish).jd

fstr = "%b %d"

@data, @group, @group_id = [], {}, 1

(start_jd..finish_jd).each do |jd|     
#  date    = DateTime.jd(jd + 0.5).to_date
  eot.ajd = jd
  rise    = eot.sunrise_dt().to_time.to_json
  trans   = eot.local_noon_dt().to_time.to_json
  set     = eot.sunset_dt().to_time.to_json
#  @group  = {group_id: @group_id, 
#             
#             rise:     rise,
#             noon:     trans,  
#             sset:     set
#           }  
#  @data << @group
#  @group_id  += 1
end

file_path = "rise_set_data.yml"
File::open( file_path, "w" ) do |f|
  YAML.dump( @data, f )
end

puts "File rise_set_data.yml processed"             