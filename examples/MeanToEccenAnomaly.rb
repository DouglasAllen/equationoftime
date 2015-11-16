require 'date'
require 'eot'

@pi = Math::PI
@pi2 = @pi * 2

@ec = Eot.new.eccentricity
@ma = Eot.new.ma

def MeanToEccenAnomaly(e, m)
  if (e >= 1.0)
    error("MeanToEccenAnomaly does not support parabolic or hyperbolic orbits!")
  end

  ## Make sure M lies between -pi and pi
  m = m % @pi2
  if (m < @pi)
    m = m + @pi2
  elseif (m > @pi)
    m = m - @pi2
  end

  if ((m > -@pi && m < 0) || (m > @pi))
    ea = m - e
  else
    ea = m + e
  end

  ea_new = ea
  zero = 1e-6
  first = 1
  while ((first || (ea_new - ea).abs) > zero) do
    first = 0
    ea = ea_new
    ea_new = ea + (m - ea + e * Math.sin(ea)) / (1 - e * Math.cos(ea))
  end
  ea = ea_new

end

p MeanToEccenAnomaly(@ec, @ma)