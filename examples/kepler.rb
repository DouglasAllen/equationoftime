# Data here is from tables 31a and 31b of 'Astronomical Algorithms' by 'Jean Meeus'
require 'date'
require 'eot'
@ma = Eot.new.mean_anomaly
@tv = Eot.new.true_anomaly
@pi = Math::PI
@pi2 = @pi * 2
@ax = 1.000_001_018
@ec0 = 0.016_708_630
@er0 = -0.000_042_037
@er1 = -0.000_000_126_700
@er2 = 0.000_000_000_140
@ml0 = 100.466_457
@mr0 = 36_000.769_827_800
@mr1 = 0.000_303_220
@mr2 = 0.000_000_020

def sgn(n)
  n <=> 0
end

#loop do
@d = DateTime.now.to_time.utc.to_datetime.ajd - 2451545.0
@t = @d / 36525.0

@l0 = [@mr2, @mr1, @mr0, @ml0].reduce {|acc, v| acc * @t + v}
@pl0 = 102.937_348
@pr0 = 1.719_536_600
@pr1 = 0.000_456_880
@pr2 = -0.000_000_018
@pl = [@pr2, @pr1, @pr0, @pl0].reduce {|acc, v| acc * @t + v}
#@ma = ((@l0 - @pl) % 360) * @pi / 180
@ec = [@er2, @er1, @er0, @ec0].reduce {|acc, v| acc * @t + v}

def ea(ma, ec)
  c = 0
  e0 = ma + ec * Math.sin(ma) * (1.0 + ec * Math.cos(ma))
  while c < 8 do
    e1 = ma + @ec * Math.sin(e0)
    c += 1
    e0 = e1              
  end
  e0
end

p @e1 = ea(@ma, @ec)

v_over_2 = Math.atan(Math.sqrt((1 + @ec) / (1 - @ec)) * Math.tan(@e1 / 2))
p @v = ((2 * v_over_2) % @pi2) * 180/@pi * 3600
p @tv * 180/@pi * 3600

