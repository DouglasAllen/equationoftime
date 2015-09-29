##
# class Eot file = true_angles.rb:
# methods for true angle calculations.

class Eot

  ##
  # From angles.rb:

  # angle true anomaly
  # used in equation of time

  def true_anomaly
    Helio.true_anomaly(@t)
  end

  ##
  # From angles.rb:

  # true longitude of equinox 'first point of aries'
  # considers nutation

  def true_longitude_aries
    dt = 68.184
    tt = @ajd + dt / 86_400.0
    Helio.true_longitude_aries(@t, 0, (tt - 2451545.0)/36525, 0);
  end

  ##
  # From angles.rb:

  # angle of true longitude sun
  # used in equation of time

  def true_longitude
    Helio.true_longitude(@t)
  end
 
  ##
  # From angles.rb:

  # true obliquity considers nutation

  def true_obliquity
    Helio.true_obliquity(@t)
  end

end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'angles_spec'

end
