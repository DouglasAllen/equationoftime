##
# class Eot file = angles.rb:
# methods for non delta angle calculations.

class Eot

  ##
  # From angles.rb:

  # Apparent solar longitude = true longitude - aberation

  def apparent_longitude
    Helio.apparent_lon(@t)
  end
  
  ##
  # From angles.rb:

  # equation of center is
  # added to mean anomaly to get true anomaly.

  def equation_of_center
    Helio.eoc(@t)
  end  

  ##
  # From angles.rb:

  # solar declination 

  def dec_sun
    Helio.sun_dec(@t)
  end

  ##
  # From angles.rb:

  # Earth rotation angle (for comparison to tl_aries
  # which uses gmst06)

  def earth_rotation_angle
    Helio.earth_rotation_angle(@t)
  end

  ##
  # From angles.rb:

  # eccentricity of elliptical Earth orbit around Sun
  # Horners' calculation method

  def eccentricity_earth
    Helio.eoe(@t)
  end

  ##
  # From angles.rb:

  # equation of equinox is
  # used for true longitude of Aries but 
  # Depricated by Celes.gst06a()
  # components are still used
  # see: #cosine_to_earth and #angle_delta_psi

  def equation_of_equinox
    Helio.equation_of_equinox(@t)
  end

  ##
  # From angles.rb:

  # horizon angle for provided geo coordinates
  # used for angles from transit to horizons.

  def ha_sun(c)
    zenith = choice(c)
    Helio.sun(zenith, @t, @latitude)
  end

  ##
  # From angles.rb:

  # omega is a component of nutation and used
  # in apparent longitude
  # omega is the longitude of the mean ascending node of the lunar orbit
  # on the ecliptic plane measured from the mean equinox of date.

  def omega
    Helio.omega(@t)
  end

  ##
  # From angles.rb:

  # solar right ascension

  def right_ascension    
    Helio.right_ascension(@t) 
  end

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
    Helio.true_lon(@t)
  end
 
  ##
  # From angles.rb:

  # true obliquity considers nutation

  def true_obliquity
    Helio.true_obl(@t)
  end

end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'angles_spec'

end
