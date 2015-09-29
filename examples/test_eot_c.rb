lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = Eot.new

p eot.ajd
p eot.t # set on initializating using ajd
p eot.ma # set on initializating using ajd
# new date used
p ajd = DateTime.new(2000, 1, 1).jd
eot.ajd = ajd
eot.ma_ta_set # this sets the attributes
p t = eot.t # now these would be different
p ma = eot.ma # now these would be different
p ta_m = eot.equation_of_center
p om = eot.omega
p eot.apparent_longitude
p eot.dec_sun
p eot.eccentricity_earth
p eot.mean_longitude
p eot.earth_rotation_angle
p eot.true_longitude_aries
