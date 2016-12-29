# class Main file = utilities.rb
# methods for general use
class Main
  # From utilities.rb:
  # A check for default J2000
  # sets default when arg is nil
  def check_jd_nil(jd = Eot::DJ00)
    jd.nil? ? Eot::DJ00 : jd
  end

  # From utilities.rb:
  # A check for default J2000
  # sets default when arg is zero
  def check_jd_zero(jd = Eot::DJ00)
    (jd == 0) ? Eot::DJ00 : check_jd_nil(jd)
  end

  # From utilities.rb:
  # A check for default DT2000
  # sets default when arg is nil
  def check_t_nil(dt = Eot::DT2000)
    dt.nil? ? Eot::DT2000 : dt
  end

  # From utilities.rb:
  # A check for default DT2000
  # sets default when arg is zero
  def check_t_zero(dt = Eot::DT2000)
    (dt == 0) ? Eot::DT2000 : check_t_nil(dt)
  end

  # From utilities.rb:
  # Keeps large angles in range of 360.0
  def mod_360(x = 0.0)
    x.nil? ? x = 0.0 : x
    360.0 * (x / 360.0 - Integer(x / 360.0))
  end
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'utilities_spec'

end
