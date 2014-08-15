# utilities.rb
#

class EqoT

  # Use BigDecimal math  
  # if you want to use BigDecimal
  # in utilities.rb  
  def bd( var = 0.0 )
    var.nil? ? var = 0.0 : var
    BigDecimal( var.to_s ) * 1.0
  end
  
  # A check for default D2000
  # sets default when arg is nil
  # in utilities.rb  
  def check_date_nil( d = D2000 )
    d.nil? ? d = D2000 : d
  end
  
  # A check for default D2000
  # sets default when arg is zero
  # in utilities.rb  
  def check_date_zero( d = D2000 )
    d == 0 ? d = D2000 : d = check_date_nil( d )
  end
  
  # A check for default J2000
  # sets default when arg is nil
  # in utilities.rb  
  def check_jd_nil( jd = J2000 )
    jd.nil? ? jd = J2000 : jd      
  end
  
  # A check for default J2000
  # sets default when arg is zero
  # in utilities.rb  
  def check_jd_zero( jd = J2000 )
    jd == 0 ? jd = J2000 : jd = check_jd_nil( jd )
  end
  
  # A check for default A2000
  # sets default when arg is nil
  # in utilities.rb  
  def check_jct_nil( ta = A2000 )
    ta.nil? ? ta = A2000 : ta
  end
  
  # A check for default A2000
  # sets default when arg is zero
    # in utilities.rb  
  def check_jct_zero( ta = A2000 )
    ta == 0 ? ta = A2000 : ta = check_jct_nil( ta )
  end
  
  # A check for default DT2000
  # sets default when arg is nil
  # in utilities.rb  
  def check_t_nil( dt = DT2000 )
    dt.nil? ? dt = DT2000 : dt     
  end
  
  # A check for default DT2000
  # sets default when arg is zero
  # in utilities.rb  
  def check_t_zero( dt = DT2000 )      
    dt == 0 ? dt = DT2000 : dt = check_t_nil( dt )
  end
  
  # Trig function for cosine of degrees
  # used in the nutation table calculations
  # in utilities.rb  
  def cosd( x = 0.0 )
    x.nil? ? x = 0.0 : x
    cos( DTR * x )
  end
  
  # degrees to radians conversion
  # alias degrees_to_radians deg_to_rad
  # in utilities.rb  
  def deg_to_rad( degrees = 0.0 )
    degrees.nil? ? degrees = 0.0 : degrees
    degrees * PI / 180.0
  end
  
  # Keeps large angles in range of 360.0
  # alias truncate
  # in utilities.rb  
  def mod_360( x = 0.0 )      
    x.nil? ? x = 0.0 : x
    360.0 * ( x / 360.0 - Integer( x / 360.0 ) )
  end
  
  # radians to degrees conversion
  # alias radians_to_degrees rad_to_deg
  # in utilities.rb  
  def rad_to_deg( radians = 0.0 )
    radians.nil? ? radians = 0.0 : radians
    radians * 180.0 / PI
  end
  
  # Trig function for sine of degrees
  # used in the nutation table calculations
  # in utilities.rb  
  def sind( x = 0.0 )
    x.nil? ? x = 0.0 : x
    sin( DTR * x )
  end
  
  # arc seconds to degree conversion
  # in utilities.rb  
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