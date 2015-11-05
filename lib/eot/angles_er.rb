##
# class Eot file = angles_er.rb:
# methods for earth rotation angle calculations.

class Eot

  ##
  # From angles_er.rb:

  # Mean equinox point where right ascension is measured from as zero hours.
  # # see http://www.iausofa.org/publications/aas04.pdf

  def mean_longitude_aries
    ma_ta_set
    dt = 68.184
    tt = @jd + dt / 86_400.0
    Celes.gmst06(@jd, 0, tt, 0)
  end
  alias_method :ml_aries, :mean_longitude_aries

  ##
  # From angles_er.rb:

  # equation of equinox is
  # used for true longitude of Aries but 
  # Depricated by Celes.gst06a()
  # components are still used
  # see: #cosine_to_earth and #delta_psi

  def equation_of_equinox
    ma_ta_set
    Celes.ee06a(@jd, 0.0)
  end
  alias_method :eq_of_equinox, :equation_of_equinox

  ##
  # From angles_er.rb:

  # Earth rotation angle (for comparison to tl_aries
  # which uses gmst06)

  def earth_rotation_angle
    ma_ta_set
    Celes.era00(@jd, 0.0)
  end
  alias_method :era, :earth_rotation_angle

  ##
  # From angles_er.rb:

  # true longitude of equinox 'first point of aries'
  # considers nutation

  def true_longitude_aries
    ma_ta_set
    dt = 68.184
    tt = @jd + dt / 86_400.0
    Celes.gst06a(@jd, 0, tt, 0)
  end
  alias_method :tl_aries, :true_longitude_aries

end
