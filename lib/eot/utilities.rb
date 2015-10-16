<<<<<<< HEAD
# class Eot file = utilities.rb
# methods for general use

class Eot
  
=======
# utilities.rb

class Eot
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
  # From utilities.rb:
  # A check for default J2000
  # sets default when arg is nil
  def check_jd_nil(jd = DJ00)
<<<<<<< HEAD
    jd.nil? ? DJ00 : jd
=======
    jd.nil? ? jd = DJ00 : jd
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
  end

  # From utilities.rb:
  # A check for default J2000
  # sets default when arg is zero
  def check_jd_zero(jd = DJ00)
<<<<<<< HEAD
    jd == 0 ? DJ00 : check_jd_nil(jd)
=======
    jd == 0 ? jd = DJ00 : jd = check_jd_nil(jd)
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
  end

  # From utilities.rb:
  # A check for default DT2000
  # sets default when arg is nil
  def check_t_nil(dt = DT2000)
<<<<<<< HEAD
    dt.nil? ? DT2000 : dt
=======
    dt.nil? ? dt = DT2000 : dt
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
  end

  # From utilities.rb:
  # A check for default DT2000
  # sets default when arg is zero
  def check_t_zero(dt = DT2000)
<<<<<<< HEAD
    dt == 0 ? DT2000 : check_t_nil(dt)
  end

  ##
  # From utilities.rb:

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
=======
    dt == 0 ? dt = DT2000 : dt = check_t_nil(dt)
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
  end

  # From utilities.rb:
  # Keeps large angles in range of 360.0
<<<<<<< HEAD
  def mod_360(x = 0.0)
    x.nil? ? x = 0.0 : x
    360.0 * (x / 360.0 - Integer(x / 360.0))
  end
=======
  # aliased by truncate
  def mod_360(x = 0.0)
    x.nil? ? x = 0.0 : x
    360.0 * ( x / 360.0 - Integer(x / 360.0))
  end
  alias_method :truncate, :mod_360
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'utilities_spec'
  require 'aliased_utilities_spec'

end
