##
# class Eot file = other_angles.rb:
# methods for non delta other angle calculations.

class Eot
  ##
  # From other_angles.rb:

  # Earth rotation angle (for comparison to tl_aries
  # which uses gmst06)

  def earth_rotation_angle
    Helio.earth_rotation_angle(@t)
  end

  ##
  # From other_angles.rb:

  # eccentricity of elliptical Earth orbit around Sun
  # Horners' calculation method

  def eccentricity
    Helio.earth_orbital_eccentricity(@t)
  end


  ##
  # From other_angles.rb:

  # equation of equinox is
  # used for true longitude of Aries but 
  # Depricated by Celes.gst06a()
  # components are still used
  # see: #cosine_to_earth and #angle_delta_psi

  def equation_of_equinox
    Helio.equation_of_equinox(@t)
  end

  ##
  # From other_angles.rb:

  # omega is a component of nutation and used
  # in apparent longitude
  # omega is the longitude of the mean ascending node of the lunar orbit
  # on the ecliptic plane measured from the mean equinox of date.

  def omega
    Helio.omega(@t)
  end
end