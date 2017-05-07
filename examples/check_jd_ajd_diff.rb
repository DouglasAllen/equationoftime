lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eqt = Eot.new

p eqt.jd
p eqt.ajd

p 'Okay! now set a new one'

eqt.ajd = Helio.date2ajd(2000, 0o1, 0o1) + 0.778
eqt.ma_ta_set
p eqt.ajd
p eqt.jd
