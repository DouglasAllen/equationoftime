##
# class Eot file = angles.rb:
# methods for non delta angle calculations.

class Eot

  ##
  # From angles.rb:

  # Apparent solar longitude = true longitude - aberation

  def apparent_longitude
    Helio.apparent_lon(@ta)
  end
  
  ##
  # From angles.rb:

  # equation of center is
  # added to mean anomaly to get true anomaly.

  def equation_of_center
    Helio.eoc(@ta)
  end  

  ##
  # From angles.rb:

  # solar declination 

  def dec_sun
    Helio.sun_dec(@ta)
  end

  ##
  # From angles.rb:

  # eccentricity of elliptical Earth orbit around Sun
  # Horners' calculation method

  def eccentricity_earth
    Helio.eoe(@ta)
  end

  ##
  # From angles.rb:

  # equation of equinox is
  # used for true longitude of Aries but 
  # Depricated by Celes.gst06a()
  # components are still used
  # see: #cosine_to_earth and #angle_delta_psi

  def eq_of_equinox
    Celes.ee06a(@ajd, 0.0)
  end
  
  ##
  # From angles.rb:

  # Earth rotation angle (for comparison to tl_aries
  # which uses gmst06)

  def era
    Celes.era00(@ajd, 0.0)
  end

  ## 
  # From angles.rb:

  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.

  def mean_longitude
    Helio.mean_lon(@ta)
  end

  ##
  # From angles.rb:

  # used by ha_sun method
  # to select rise set and civil, nautical, astronomical twilights.

  def choice(c)
    case c
    when 1
      return 90.8333 # Sunrise and Sunset
    when 2
      return 96 # Civil Twilight
    when 3
      return 102 # Nautical Twilight
    when 4
      return 108 # Astronomical Twilight
    end
  end

  ##
  # From angles.rb:

  # horizon angle for provided geo coordinates
  # used for angles from transit to horizons.

  def ha_sun(c)
    zenith = choice(c)
    Helio.sun(zenith, @ta, @latitude)
  end

  ##
  # From angles.rb:

  # angle of Suns' mean anomaly
  # calculated in nutation.rb via celes function
  # sets ta attribute for the rest the methods needing it.
  # used in equation of time
  # and to get true anomaly true longitude via center equation

  def mean_anomaly
    @ma = Helio.mean_anomaly(@ta)
  end

  ##
  # From angles.rb:

  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf

  def ml_aries
    dt = 67.184
    tt = @ajd + dt / 86_400.0
    Celes.gmst06(@ajd, 0, tt, 0)
  end
  alias_method :mean_longitude_aries, :ml_aries

  ##
  # From angles.rb:

  # mean obliquity of Earth

  def mean_obliquity
    Helio.mean_obliquity(@ta)
  end

  ##
  # From angles.rb:

  # omega is a component of nutation and used
  # in apparent longitude
  # omega is the longitude of the mean ascending node of the lunar orbit
  # on the ecliptic plane measured from the mean equinox of date.

  def omega
    Helio.omega(@ta)
  end

  ##
  # From angles.rb:

  # solar right ascension

  def right_ascension    
    Helio.right_ascension(@ta) 
  end

  ##
  # From angles.rb:

  # angle true anomaly
  # used in equation of time

  def true_anomaly
    Helio.true_anomaly(@ta)
  end

  ##
  # From angles.rb:

  # true longitude of equinox 'first point of aries'
  # considers nutation

  def true_longitude_aries
    dt = 68.184
    tt = @ajd + dt / 86_400.0
    Helio.true_longitude_aries(@ta, 0, (tt - 2451545.0)/36525, 0);
  end

  ##
  # From angles.rb:

  # angle of true longitude sun
  # used in equation of time

  def true_longitude
    Helio.true_lon(@ta)
  end
 
  ##
  # From angles.rb:

  # true obliquity considers nutation

  def true_obliquity
    Helio.true_obl(@ta)
  end

end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'angles_spec'
  require 'aliased_angles_spec'

end
