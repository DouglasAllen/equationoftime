##
# class Eot file = angles.rb:
# methods for non delta angle calculations.

class Eot

  ##
  # From angles.rb:

  # Apparent solar longitude = true longitude - aberation

  def al_sun
    ma_ta_set
    Angles.getApparentLongitude(@ta)
  end
  alias_method :apparent_longitude, :al_sun
  alias_method :alsun, :al_sun

  ##
  # From angles.rb:

  # equation of centre is
  # added to mean anomaly to get true anomaly.

  def center
    ma_ta_set
    Angles.getEQofCenter(@ta)
  end
  alias_method :equation_of_center, :center

  ##
  # From angles.rb:

  # solar declination 

  def dec_sun
    ma_ta_set
    Angles.getDeclination(@ta)
  end
  alias_method :declination, :dec_sun

  ##
  # From angles.rb:

  # eccentricity of elliptical Earth orbit around Sun
  # Horners' calculation method

  def eccentricity_earth
    nil
  end
  alias_method :eccentricity_earth_orbit, :eccentricity_earth
  alias_method :eccentricity, :eccentricity_earth

  ##
  # From angles.rb:

  # equation of equinox is
  # used for true longitude of Aries but 
  # Depricated by Celes.gst06a()
  # compinents are still used
  # see: #cosine_to_earth and #angle_delta_psi

  def eq_of_equinox
    nil  
  end
  alias_method :equation_of_equinox, :eq_of_equinox

  
  ##
  # From angles.rb:

  # Earth rotation angle (for comparison to tl_aries
  # which uses gmst06)

  def era
    nil
  end

  ## 
  # From angles.rb:

  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.

  def gml_sun
    ma_ta_set
    Angles.getMeanLongitude(@ta)
  end
  alias_method :geometric_mean_longitude, :gml_sun
  alias_method :ml_sun, :gml_sun
  alias_method :mean_longitude, :gml_sun

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
    CLArgs.myZenith = choice(c)
    Angles.getLocalHorizonAngle(@ta)
  end
  alias_method :horizon_angle, :ha_sun

  ##
  # From angles.rb:

  # angle of Suns' mean anomaly
  # calculated in nutation.rb via celes function
  # sets ta attribute for the rest the methods needing it.
  # used in equation of time
  # and to get true anomaly true longitude via center equation

  def ma_sun
    ma_ta_set
    @ta = (@jd - DJ00) / DJC
    @ma = Angles.getMeanAnomaly(@ta)
  end
  alias_method :mean_anomaly, :ma_sun

  ##
  # From angles.rb:

  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf

  def ml_aries
    ma_ta_set
    dt = 68.184
    tt = @ajd + dt / 86_400.0
    nil
  end
  alias_method :mean_longitude_aries, :ml_aries

  ##
  # From angles.rb:

  # mean obliquity of Earth

  def mo_earth
    Angles.getMeanObliquity(@ta)
  end
  alias_method :mean_obliquity_of_ecliptic, :mo_earth
  alias_method :mean_obliquity, :mo_earth

  ##
  # From angles.rb:

  # omega is a component of nutation and used
  # in apparent longitude
  # omega is the longitude of the mean ascending node of the lunar orbit
  # on the ecliptic plane measured from the mean equinox of date.

  def omega
    ma_ta_set
    Angles.getOmega(@ta)
  end

  ##
  # From angles.rb:

  # solar right ascension

  def ra_sun
    ma_ta_set
    Angles.getRightAscension(@ta)
  end
  alias_method :right_ascension, :ra_sun

  ##
  # From angles.rb:

  # angle true anomaly
  # used in equation of time

  def ta_sun
    ma_ta_set
    Angles.getTrueAnomaly(@ta)
  end
  alias_method :true_anomaly, :ta_sun

  ##
  # From angles.rb:

  # true longitude of equinox 'first point of aries'
  # considers nutation

  def tl_aries
    dt = 68.184
    tt = @ajd + dt / 86_400.0
    nil
  end
  alias_method :true_longitude_aries, :tl_aries

  ##
  # From angles.rb:

  # angle of true longitude sun
  # used in equation of time

  def tl_sun
    ma_ta_set
    Angles.getTrueLongitude(@ta)
  end
  alias_method :true_longitude, :tl_sun
  alias_method :ecliptic_longitude, :tl_sun
  alias_method :lambda, :tl_sun
 
  ##
  # From angles.rb:

  # true obliquity considers nutation

  def to_earth
    Angles.getTrueObliquity(@ta)
  end
  alias_method :obliquity_correction, :to_earth
  alias_method :true_obliquity, :to_earth
  alias_method :toearth, :to_earth
end

if __FILE__ == $PROGRAM_NAME

 

end
