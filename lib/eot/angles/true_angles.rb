##
# class Main file = true_angles.rb:
# methods for true angle calculations.
class Main

  ##
  # From true_angles.rb:

  # angle true anomaly
  # used in equation of time

  def true_anomaly
    @cs.true_anomaly(@jd)
  end

  ##
  # From true_angles.rb:

  # true longitude of equinox 'first point of aries'
  # considers nutation

  def true_longitude_aries
    'not implemented yet'
    # @cs.true_longitude_aries(@jd);
  end

  ##
  # From true_angles.rb:

  # angle of true longitude sun
  # used in equation of time

  def true_longitude
    @cs.true_longitude(@jd)
  end

  ##
  # From true_angles.rb:

  # true obliquity considers nutation

  def true_obliquity
    'not implemented yet'
    # @cs.true_obliquity(@jd)
  end
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'true_angles_spec'

end
