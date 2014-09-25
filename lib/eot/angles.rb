# class Eot file = angles.rb
class Eot
  include Math
  # From angles.rb:
  # Apparent solar longitude = true longitude - aberation
  def al_sun
    Celes.anp(al(@ma, @ta, Celes.faom03(@ta)))
  end
  alias_method :apparent_longitude, :al_sun
  alias_method :alsun, :al_sun

  # From angles.rb:
  # equation of centre
  # added to mean anomaly to get true anomaly.
  def center
    eqc(@ma, @ta)
  end
  alias_method :equation_of_center, :center

  # From angles.rb:
  # solar declination
  def dec_sun
    asin(sin(Celes.nut06a(@ajd, 0)[1] + Celes.obl06(@ajd, 0)) *
            sin(al(@ma, @ta, Celes.faom03(@ta))))
  end
  alias_method :declination, :dec_sun

  # From angles.rb:
  # eccentricity of elliptical Earth orbit around Sun
  # Horners' calculation method
  def eccentricity_earth
    eoe(@ta)
  end
  alias_method :eccentricity_earth_orbit, :eccentricity_earth

  # From angles.rb:
  # equation of equinox
  # used for true longitude of Aries
  # Depricated by Celes.gst06a()
  def eq_of_equinox
    cos(Celes.nut06a(@ajd, 0)[1] +
        Celes.obl06(@ajd, 0)) *
        Celes.nut06a(@ajd, 0)[0]
  end

  # From angles.rb:
  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.
  def gml_sun
    ml(@ta)
  end
  alias_method :geometric_mean_longitude, :gml_sun

  # From angles.rb:
  # horizon angle for provided geo coordinates
  # used for angles from transit to horizons
  def ha_sun
    zenith   = 90.8333 # use other zeniths here for non commercial
    top      = cosZ(zenith) - sin(dec_sun) * sin(@latitude * D2R)
    bottom   = cos(dec_sun) * cos(@latitude * D2R)
    t_cosine = top / bottom
    t_cosine > 1.0 || t_cosine < -1.0 ? cos = 1.0 : cos = t_cosine
    acos(cos)
  end
  alias_method :horizon_angle, :ha_sun

  # From angles.rb:
  # angle of Suns' mean anomaly
  # calculated in nutation.rb via celes function
  # sets ta attribute for the rest the methods needing it.
  # used in equation of time
  # and to get true anomaly true longitude via center equation
  def ma_sun
    @ta = (@ajd - DJ00) / DJC
    @ma = Celes.falp03(@ta)
  end
  alias_method :mean_anomaly, :ma_sun

  # From angles.rb:
  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf
  def ml_aries
    dt = 67.184
    tt = @ajd + dt / 86_400.0
    Celes.gmst06(@ajd, 0, tt, 0)
  end
  alias_method :mean_longitude_aries, :ml_aries

  # From angles.rb:
  # mean obliquity of Earth
  def mo_earth
    Celes.obl06(@ajd, 0)
  end
  alias_method :mean_obliquity_of_ecliptic, :mo_earth
  alias_method :mean_obliquity, :mo_earth

  # From angles.rb:
  # omega is a component of nutation and used
  # in apparent longitude
  # omega is the longitude of the mean ascending node of the lunar orbit
  # on the ecliptic plane measured from the mean equinox of date.
  def omega
    Celes.faom03(@ta)
  end

  # From angles.rb:
  # solar right ascension
  def ra_sun
    y0 = sin(al(@ma, @ta, Celes.faom03(@ta))) * cos(Celes.nut06a(@ajd, 0)[1] +
         Celes.obl06(@ajd, 0))
    Celes.anp(PI + atan2(-y0, -cos(al(@ma, @ta, Celes.faom03(@ta)))))
  end
  alias_method :right_ascension, :ra_sun

  # From angles.rb:
  # angle true anomaly
  # used in equation of time
  def ta_sun
    Celes.anp(@ma + eqc(@ma, @ta))
  end
  alias_method :true_anomaly, :ta_sun

  # From angles.rb:
  # true longitude of equinox 'first point of aries'
  # considers nutation
  def tl_aries
    dt = 67.184
    tt = @ajd + dt / 86_400.0
    Celes.gst06a(@ajd, 0, tt, 0)
  end
  alias_method :true_longitude_aries, :tl_aries

  # From angles.rb:
  # angle of true longitude sun
  # used in equation of time
  def tl_sun
    tl(@ma, @ta)
  end
  alias_method :true_longitude, :tl_sun
  alias_method :ecliptic_longitude, :tl_sun
  alias_method :lambda, :tl_sun

  # From angles.rb:
  # true obliquity considers nutation
  def to_earth
    Celes.nut06a(@ajd, 0)[1] + Celes.obl06(@ajd, 0)
  end
  alias_method :obliquity_correction, :to_earth
  alias_method :true_obliquity, :to_earth
  alias_method :toearth, :to_earth
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'angles_spec'
  require 'aliased_angles_spec'

end
