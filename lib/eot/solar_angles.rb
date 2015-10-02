##
# class Eot file = solar_angles.rb:
# methods for non delta angle calculations.

class Eot

  ##
  # From angles.rb:

  # Apparent solar longitude = true longitude - aberation

  def apparent_longitude
    Helio.apparent_longitude(@t)
  end
  
  ##
  # From angles.rb:

  # equation of center is
  # added to mean anomaly to get true anomaly.

  def equation_of_center
    Helio.equation_of_center(@t)
  end  

  ##
  # From angles.rb:

  # solar declination 

  def declination
    Helio.declination(@t)
  end

  ##
  # From angles.rb:

  # horizon angle for provided geo coordinates
  # used for angles from transit to horizons.

  def ha_sun(c)
    zenith = choice(c)
    Helio.horizon_angle(zenith, @t, @latitude)
  end

  ##
  # From angles.rb:

  # solar right ascension

  def right_ascension    
    Helio.right_ascension(@t) 
  end

end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'solar_angles_spec'

end
