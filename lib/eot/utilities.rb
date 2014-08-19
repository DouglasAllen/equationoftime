# utilities.rb
#

class EqoT

  # From utilities.rb:<br>
  # if you want to use BigDecimal math
  def bd( var = 0.0 )
    var.nil? ? var = 0.0 : var
    BigDecimal( var.to_s ) * 1.0
  end
 
  # From utilities.rb:<br> 
  # A check for default D2000
  # sets default when arg is nil
  def check_date_nil( d = D2000 )
    d.nil? ? d = D2000 : d
  end
 
  # From utilities.rb:<br> 
  # A check for default D2000
  # sets default when arg is zero
  def check_date_zero( d = D2000 )
    d == 0 ? d = D2000 : d = check_date_nil( d )
  end
 
  # From utilities.rb:<br> 
  # A check for default J2000
  # sets default when arg is nil
  def check_jd_nil( jd = J2000 )
    jd.nil? ? jd = J2000 : jd      
  end
 
  # From utilities.rb:<br> 
  # A check for default J2000
  # sets default when arg is zero
  def check_jd_zero( jd = J2000 )
    jd == 0 ? jd = J2000 : jd = check_jd_nil( jd )
  end
 
  # From utilities.rb:<br> 
  # A check for default A2000
  # sets default when arg is nil
  def check_jct_nil( ta = A2000 )
    ta.nil? ? ta = A2000 : ta
  end
 
  # From utilities.rb:<br> 
  # A check for default A2000
  # sets default when arg is zero  
  def check_jct_zero( ta = A2000 )
    ta == 0 ? ta = A2000 : ta = check_jct_nil( ta )
  end
 
  # From utilities.rb:<br> 
  # A check for default DT2000
  # sets default when arg is nil
  def check_t_nil( dt = DT2000 )
    dt.nil? ? dt = DT2000 : dt     
  end

  # From utilities.rb:<br>
  # A check for default DT2000
  # sets default when arg is zero
  def check_t_zero( dt = DT2000 )      
    dt == 0 ? dt = DT2000 : dt = check_t_nil( dt )
  end

  # From utilities.rb:<br>
  # Trig function for cosine of degrees
  # used in the nutation table calculations
  def cosd( x = 0.0 )
    x.nil? ? x = 0.0 : x
    cos( DTR * x )
  end
 
  # From utilities.rb:<br>
  # degrees to radians conversion
  # aliased by degrees_to_radians
  def deg_to_rad( degrees = 0.0 )
    degrees.nil? ? degrees = 0.0 : degrees
    degrees * PI / 180.0
  end
  alias_method :degrees_to_radians, :deg_to_rad

  # From utilities.rb:<br>
  # Keeps large angles in range of 360.0
  # aliased by truncate
  def mod_360( x = 0.0 )      
    x.nil? ? x = 0.0 : x
    360.0 * ( x / 360.0 - Integer( x / 360.0 ) )
  end
  alias_method :truncate, :mod_360

  # From utilities.rb:<br>
  # radians to degrees conversion
  # aliased by radians_to_degrees
  def rad_to_deg( radians = 0.0 ) 
    radians.nil? ? radians = 0.0 : radians
    radians * 180.0 / PI
  end
  alias_method :radians_to_degrees,:rad_to_deg

  # From utilities.rb:<br>
  # Trig function for sine of degrees
  # used in the nutation table calculations
  def sind( x = 0.0 )
    x.nil? ? x = 0.0 : x
    sin( DTR * x )
  end

  # From utilities.rb:<br>
  # arc seconds to degree conversion
  def to_deg( arc_secs = 0.0 )
    arc_secs.nil? ? arc_secs = 0.0 : arc_secs
    arc_secs / ARCSEC
  end  
  
end
if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'utilities_spec'

end