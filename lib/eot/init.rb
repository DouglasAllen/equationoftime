# class Eot file = int.rb
# attributes, a setter and init method

java_import 'com.herokuapp.equationoftime.Angles'
java_import 'com.herokuapp.equationoftime.CLArgs'

class Eot
  # From init.rb:
  # address is a String ex: "houston, tx"
  # initialized to nil or ""
  attr_accessor :addr

  # From init.rb:
  # Astronomical Julian Day Number
  # instance of Float class.
  attr_accessor :ajd

  # From init.rb
  # method to reset ma and ta after initialization
  # init sets them using ajd initial Float value
  # see: :ajd attribute
  def ma_ta_set
    @ta = ((@jd - DJ00) / DJC).to_f
    @ma = Angles.getMeanAnomaly(@ta)
  end
  alias_method :set_t_ma, :ma_ta_set

  # From init.rb:
  # Date
  # instance of DateTime class
  # initialized to Time parts
  # recalc t and ma if changed
  attr_accessor :date

  # From init.rb:
  # changes date, jd, ajd without re-initializing
  # re-calc t and ma if used  
  def new_date(string)
    @date = string
    d = Date.parse(string)
    @jd = d.jd.to_f
    @ajd = d.ajd.to_f
    ma_ta_set
  end

  # From init.rb:
  # Julian Day Number
  # instance of Float class
  # initialized to = ajd
  # recalc t and ma if changed
  attr_accessor :jd

  # From init.rb:
  # Latitude input
  # instance of Float class
  # initialized to = 0.0
  # recalc t and ma if changed
  attr_accessor :latitude
  alias_method :lat, :latitude
 
  # From init.rb:
  # Longitude input
  # instance of Float class
  # initialized to = 0.0
  # recalc t and ma if changed
  attr_accessor :longitude
  alias_method :lng, :longitude
 
  # From init.rb:
  # Julian Century gets called often
  # instance of Float class
  # ta = (( @jd - DJ00 ) / DJC).to_f
  attr_accessor :ta
  alias_method :t, :ta

  # From init.rb:
  # Mean Anomaly gets called often
  # instance of Float class
  attr_accessor :ma

  # From init.rb:
  # Initialize to set attributes
  def initialize
    dt = Time.now.utc
    @date = "#{dt.year}-#{dt.month}-#{dt.day}"
    @ajd = Date.parse(@date).ajd
    @jd = Date.parse(@date).jd
    ma_ta_set
    @latitude = 0.0  
    @longitude = 0.0      
  end
end
