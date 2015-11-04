# class Eot file = int.rb
# attributes, a setter and init method
class Eot
  # From init.rb:
  # address is a String ex: "houston, tx"
  attr_accessor :addr

  # From init.rb:
  # Astronomical Julian Day Number
  # instance of Float class.
  # ajd or jd. Use ajd for time now and jd for noon
  # init sets ajd = DateTime.now.to_time.utc.to_datetime.jd.to_f
  attr_accessor :ajd

  # From init.rb
  # method to reset ma and ta after initialization
  # init sets them using ajd initial Float value
  # see: :ajd attribute
  def set_t_ma
    @t = ((@jd - DJ00) / DJC).to_f
    @ma = Celes.falp03(@t)
  end
  alias_method :ma_ta_set, :set_t_ma 

  # From init.rb:
  # Date
  # instance of DateTime class
  # initialized to = ajd_to_datetime(@ajd)
  attr_accessor :date

  # From init.rb:
  # changes date, jd, ajd without re-initializing
  # re-calc t and ma if used  
  def new_date(string)
    @date = string
    d = Date.parse(string)
    @jd = d.jd.to_f
    @ajd = d.ajd.to_f
    set_t_ma
  end

  # From init.rb:
  # Julian Day Number
  # instance of Float class
  # initialized to = ajd
  attr_accessor :jd

  # From init.rb:
  # Latitude input
  # instance of Float class
  # initialized to = 0.0
  attr_accessor :latitude
  alias_method :lat, :latitude

  # From init.rb:
  # Longitude input
  # instance of Float class
  # initialized to = 0.0
  attr_accessor :longitude
  alias_method :lng, :longitude

  # From init.rb:
  # Julian Century gets called often
  # instance of Float class
  # t = (( @jd - DJ00 ) / DJC).to_f
  attr_accessor :t
  alias_method :ta, :t

  # From init.rb:
  # Mean Anomaly gets called often
  # instance of Float class
  # ma = Celes.falp03(@ta) see: celes gem
  attr_accessor :ma

  # From init.rb:
  # Initialize to set attributes
  def initialize
    dt = Time.now.utc
    @date = Date.parse("#{dt.year}-#{dt.month}-#{dt.day}")
    @ajd = @date.ajd
    @jd = @date.jd
    set_t_ma # set the @t and @ma attributes
    @latitude = 0.0  
    @longitude = 0.0       
  end
end

# we can run some tests from inside this file.
if __FILE__ == $PROGRAM_NAME

end
