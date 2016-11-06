
# class Eot file = angles.rb:
# methods for non delta angle calculations.
class Eot
  ##
  # From angles.rb:

  # Apparent solar longitude = true longitude - aberation

  def al_sun
    al(@t)
  end
  alias apparent_longitude al_sun
  alias alsun al_sun

  ##
  # From angles.rb:

  # equation of centre is
  # added to mean anomaly to get true anomaly.

  def center
    eqc(@t)
  end
  alias equation_of_center center

  ##
  # From angles.rb:

  # solar declination

  def dec_sun
    sun_dec(@t, to_earth)
  end
  alias declination dec_sun

  ##
  # From angles.rb:

  # eccentricity of elliptical Earth orbit around Sun
  # Horners' calculation method

  def eccentricity_earth
    eoe(@t)
  end
  alias eccentricity_earth_orbit eccentricity_earth

  ##
  # From angles.rb:

  # equation of equinox is
  # used for true longitude of Aries but
  # Depricated by Celes.gst06a()
  # compinents are still used
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

  # 
  # 

  def gha_sun
    (tl_aries - sun_ra(@t, to_earth)) % 2 * Math::PI  
  end

  ##
  # From angles.rb:

  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.

  def gml_sun
    ml(@t)
  end
  alias geometric_mean_longitude gml_sun
  alias ml_sun gml_sun

  ##
  # From angles.rb:

  # used by ha_sun method
  # to select rise set and civil, nautical, astronomical twilights.

  def choice(c)
    case c
    when 0..1 || nil
      90.8333 # Sunrise and Sunset
    when 2
      96 # Civil Twilight
    when 3
      102 # Nautical Twilight
    when 4
      108 # Astronomical Twilight
    end
  end

  ##
  # From angles.rb:

  # horizon angle for provided geo coordinates
  # used for angles from transit to horizons east, west.

  def ha_sun(c)
    c.nil? ? c = 1 : c
    zenith = choice(c)
    sun(zenith, dec_sun, @latitude)
  end
  alias horizon_angle ha_sun

  ##
  # From angles.rb:

  # angle of Suns' mean anomaly
  # calculated in nutation.rb via celes function
  # sets ta attribute for the rest the methods needing it.
  # used in equation of time
  # and to get true anomaly true longitude via center equation

  def ma_sun
    mu(@t)
  end
  alias mean_anomaly ma_sun

  ##
  # From angles.rb:

  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf

  def ml_aries
    dt = 68.182
    tt = @ajd + dt / 86_400.0
    Celes.gmst06(@ajd, 0, tt, 0)
  end
  alias mean_longitude_aries ml_aries

  ##
  # From angles.rb:

  # mean obliquity of Earth

  def mo_earth
    Celes.obl06(@ajd, 0)
  end
  alias mean_obliquity_of_ecliptic mo_earth
  alias mean_obliquity mo_earth

  ##
  # From angles.rb:

  # omega is a component of nutation and used
  # in apparent longitude
  # omega is the longitude of the mean ascending node of the lunar orbit
  # on the ecliptic plane measured from the mean equinox of date.

  # def omega
  #   Celes.faom03(@t)
  # end

  ##
  # From angles.rb:

  # solar right ascension

  def right_ascension_sun
    # y0 = sine_al_sun * cosine_to_earth
    sun_ra(@t, to_earth)
    # Celes.anp(PI + atan2(-y0, -cosine_al_sun))
    # Celes.anp(PI + ra)
  end
  alias right_ascension right_ascension_sun
  alias ra_sun right_ascension_sun

  ##
  # From angles.rb:

  # angle true anomaly
  # used in equation of time

  def ta_sun
    ta(@t)
  end
  alias true_anomaly ta_sun

  ##
  # From angles.rb:

  # true longitude of equinox 'first point of aries'
  # considers nutation

  def tl_aries
    dt = 68.184
    tt = @ajd + dt / 86_400.0
    Celes.gst06a(@ajd, 0, tt, 0)
  end
  alias true_longitude_aries tl_aries

  ##
  # From angles.rb:

  # angle of true longitude sun
  # used in equation of time

  def tl_sun
    tl(@t)
  end
  alias true_longitude tl_sun
  alias ecliptic_longitude tl_sun
  alias lambda tl_sun

  ##
  # From angles.rb:

  # true obliquity considers nutation

  def to_earth
    mo_earth + angle_delta_epsilon
  end
  alias obliquity_correction to_earth
  alias true_obliquity to_earth
  alias toearth to_earth
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  @latitude,  @longitude = 0.0,  0.0
  require 'angles_spec'
  require 'aliased_angles_spec'

end
