##
# class Eot file = angles_sun.rb:
# methods for solar angle calculations.

class Eot

  ##
  # From angles_sun.rb:

  # Apparent solar longitude = true longitude - aberation
  # solar longitute at the ecliptic 
  def apparent_longitude
    ma_ta_set
    Celes.anp(al(@ma, @t, omega))
  end
  alias_method :al_sun, :apparent_longitude
  alias_method :alsun, :apparent_longitude
  alias_method :lambda, :apparent_longitude

  ##
  # From angles_sun.rb:

  # equation of centre is
  # added to mean anomaly to get true anomaly.

  def equation_of_center
    ma_ta_set
    eqc(@ma, @t)
  end
  alias_method :center, :equation_of_center

  ##
  # From angles_sun.rb:

  # solar declination 

  def declination
    ma_ta_set
    sun_dec(al_sun, to_earth)
  end
  alias_method :dec_sun, :declination

  ## 
  # From angles_sun.rb:

  # angle geometric mean longitude
  # needed to get true longitude for low accuracy.

  def mean_longitude
    ma_ta_set
    ml(@t)
  end
  alias_method :geometric_mean_longitude, :mean_longitude
  alias_method :ml_sun, :mean_longitude
  alias_method :gml_sun, :mean_longitude

  ##
  # From angles_sun.rb:

  # angle of Suns' mean anomaly
  # calculated in nutation.rb via celes function
  # sets ta attribute for the rest the methods needing it.
  # used in equation of time
  # and to get true anomaly true longitude via center equation

  def mean_anomaly
    ma_ta_set
    @ma = Celes.falp03(@t)
  end
  alias_method :ma_sun, :mean_anomaly

  ##
  # From angles_sun.rb:

  # solar right ascension

  def right_ascension
    ma_ta_set
    y0 = sine_al_sun * cosine_to_earth
    ra = sun_ra(y0, cosine_al_sun) 
    # Celes.anp(PI + atan2(-y0, -cosine_al_sun))
    Celes.anp(PI + ra)
  end
  alias_method :ra_sun, :right_ascension

  ##
  # From angles_sun.rb:

  # angle true anomaly
  # used in equation of time

  def true_anomaly
    ma_ta_set
    Celes.anp(@ma + eqc(@ma, @t))
  end
  alias_method :ta_sun, :true_anomaly


  ##
  # From angles_sun.rb:

  # angle of true longitude sun
  # used in equation of time

  def true_longitude
    ma_ta_set
    tl(@ma, @t)
  end
  alias_method :tl_sun, :true_longitude
  alias_method :ecliptic_longitude, :true_longitude
 
end
