# Data here is from tables 31a and 31b of 'Astronomical Algorithms' by 'Jean Meeus'
# but is not being used to find mean anomaly. This is however good for other planets.

require 'date'
require 'eot'

@pi = Math::PI
@pi2 = @pi * 2
@toD = 180 / @pi
@toR = @pi / 180

@ax = 1.000_001_018

@ec0 = 0.016_708_630
# rates
@er0 = -0.000_042_037
@er1 = -0.000_000_126_700
@er2 = 0.000_000_000_140

@ml0 = 100.466_457
# rates
@mr0 = 36_000.769_827_800
@mr1 = 0.000_303_220
@mr2 = 0.000_000_020

@pl0 = 102.937_348
# rates
@pr0 = 1.719_536_600
@pr1 = 0.000_456_880
@pr2 = -0.000_000_018

def sgn(n)
  n <=> 0
end

# not used for eot.ma
@d = DateTime.now.to_time.utc.to_datetime.ajd - 2451545.0
@t = @d / 36525.0

@l0 = [@mr2, @mr1, @mr0, @ml0].reduce {|acc, v| acc * @t + v}

@pl = [@pr2, @pr1, @pr0, @pl0].reduce {|acc, v| acc * @t + v}

def ea(ma, ec)
  if (ec >= 1.0)
    error("MeanToEccenAnomaly does not support parabolic or hyperbolic orbits!")
  end

  ## Make sure M lies between -pi and pi
  ma = ma % @pi2
  if (ma < @pi)
    ma = ma + @pi2
  elsif (ma > @pi)
    ma = ma - @pi2
  end

  if ((ma > -@pi && ma < 0) || (ma > @pi))
    ea = ma - ec
  else
    ea = ma + ec
  end

  ea_new = ea
  zero = 1e-6
  first = 1
  while ((first || (ea_new - ea).abs) > zero) do
    first = 0
    ea = ea_new
    ea_new = ea + (ma - ea + ec * Math.sin(ea)) / (1 - ec * Math.cos(ea))
  end
  ea = ea_new % @pi2
end

@ma = @l0 - @pl
@ec = [@er2, @er1, @er0, @ec0].reduce {|acc, v| acc * @t + v}

@ma = Eot.new.mean_anomaly
@ec = Eot.new.eccentricity 
@ea = ea(@ma, @ec)
puts "eccentric anomaly now: #{@ea * @toD}"

## Calc the true anomaly from eccentric anomaly
sinf = Math.sin(@ea) * Math.sqrt(1 - @ec * @ec) / (1 - @ec * Math.cos(@ea))
cosf = (Math.cos(@ea) - @ec) / (1 - @ec * Math.cos(@ea))
f = Math.atan2(sinf, cosf) % @pi2
puts "true anomaly now from eq1: #{f * @toD}"

v_over_2 = Math.atan(Math.sqrt((1 + @ec) / (1 - @ec)) * Math.tan(@ea / 2))
@v = (2 * v_over_2) % @pi2
puts "true anomaly now from eq2: #{@v * @toD}"

@tv = Eot.new.true_anomaly
puts "true anomaly now from Eot: #{@tv * @toD}"

## Calc the eccentric anomaly for true anomaly of 90 degrees.
v = 90.0 * @toR
sinE = Math.sin(v) * Math.sqrt(1 - @ec * @ec) / (1 + @ec * Math.cos(v))
cosE = (@ec + Math.cos(v))/(1 + @ec * Math.cos(v))
eccAnomaly = Math.atan2(sinE, cosE)
puts "eccentric anomaly for true anomaly of 90 degrees : #{eccAnomaly * @toD}"

meanAnomaly = eccAnomaly - @ec * Math.sin(eccAnomaly * @toR)
puts "mean anomaly for true anomaly of 90 degrees : #{meanAnomaly * @toD}"
ecca = ea(meanAnomaly, @ec)
puts "eccentric anomaly from ea method with 90 deg true anomaly : #{ecca * @toD}"