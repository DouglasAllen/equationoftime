##
# class Eot file = angles.rb:
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

  def dec_sun
    Helio.declination(@t)
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
    Helio.earth_orbital_eccentricity(@t)
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
    Helio.horizon_angle(zenith, @t, @latitude)
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

end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'angles_spec'

end
