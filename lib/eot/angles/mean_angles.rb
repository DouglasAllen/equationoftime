##
# class Main file = mean_angles.rb:
# methods for non delta angle calculations.
class Main

  ##
  # From mean_angles.rb:

  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.

  def mean_longitude
    Eot.mean_longitude(@jd)
  end

  ##
  # From mean_angles.rb:

  # angle of Suns' mean anomaly
  # used in equation of time
  # and to get true anomaly true longitude via center equation

  def mean_anomaly
    @ma = Eot.mean_anomaly(@jd)
  end

  ##
  # From mean_angles.rb:

  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf

  def mean_longitude_aries
    Eot.mean_longitude_aries(@jd);
  end

  ##
  # From angles.rb:

  # mean obliquity of Earth

  def mean_obliquity
    Eot.obliquity_of_ecliptic(@jd)
  end

end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'mean_angles_spec'

end
