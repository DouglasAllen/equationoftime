
# class Eot file = main.rb
# attributes, a setter and init method
class Main

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
  # method to reset ma and t after initialization
  # init sets them using ajd initial Float value
  # see: :ajd attribute
  def set_t_ma
    @t = Eot.jc_time(@jd)
    @ma = Eot.mean_anomaly(@jd)
  end

  # From init.rb:
  # Julian Century gets called often
  # instance of Float class
  attr_accessor :t

  # From init.rb:
  # Mean Anomaly gets called often
  # instance of Float class
  attr_accessor :ma

  # From init.rb:
  # Date
  # instance of DateTime class
  # initialized to = ajd_to_datetime(@ajd)
  attr_accessor :date

  # From init.rb:
  # Julian Day Number
  # instance of Float class
  attr_accessor :jd

  # From init.rb:
  # Latitude input
  # instance of Float class
  # initialized to = 0.0
  attr_accessor :latitude

  # From init.rb:
  # Longitude input
  # instance of Float class
  # initialized to = 0.0
  attr_accessor :longitude

  # From main.rb:
  # Initialize to set attributes
  def initialize

  end
end

# we can run some tests from inside this file.
if __FILE__ == $PROGRAM_NAME
  lib = File.expand_path('../../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
  @main = Main.new
  p @main.longitude
end
