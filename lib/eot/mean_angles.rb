##
# class Eot file = mean_angles.rb:
# methods for non delta angle calculations.

class Eot

  ## 
  # From angles.rb:

  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.

  def mean_longitude
    Helio.mean_longitude(@t)
  end

  ##
  # From angles.rb:

  # angle of Suns' mean anomaly
  # calculated in nutation.rb via celes function
  # sets ta attribute for the rest the methods needing it.
  # used in equation of time
  # and to get true anomaly true longitude via center equation

  def mean_anomaly
    @ma = Helio.mean_anomaly(@t)
  end

  ##
  # From angles.rb:

  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf

  def mean_longitude_aries
    Helio.mean_longitude_aries(@t);
  end

  ##
  # From angles.rb:

  # mean obliquity of Earth

  def mean_obliquity
    Helio.mean_obliquity(@t)
  end

end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'angles_spec'

end
