# class Eot file = int.rb
class Eot
  # From init.rb:
  # address used for GeoLatLng.addr
  attr_accessor :addr

  # From init.rb:
  # Astronomical Julian Day Number is an instance of DateTime class.
  # ajd or jd. Use ajd for time now and jd for suntimes. Initially
  # @ajd = DateTime.now.to_time.utc.to_datetime.jd.to_f
  attr_reader :ajd
  def ajd=(ajd)
    @ajd = ajd
    @ta  = ((@ajd - DJ00) / DJC).to_f
    @ma  = Celes.falp03(@ta)
  end

  # From init.rb:
  # @date is an instance of DateTime class.
  # When new Eot class is initialized @date = ajd_to_datetime(@ajd)
  attr_accessor :date

  # From init.rb:
  # Julian Day Number is an instance of DateTime class.
  # When new Eot class is initialized @jd = @ajd
  attr_accessor :jd

  # From init.rb:
  # Latitude input is an instance of Float class.
  # When new Eot class is initialized @latitude = 0.0
  # if GeoLatLng class can't set it.
  attr_accessor :latitude

  # From init.rb:
  # Longitude input is an instance of Float class.
  # When new Eot class is initialized @longitude = 0.0
  # if GeoLatLng class can't set it.
  attr_accessor :longitude

  # From init.rb:
  # JCT gets called a lot so class attribute it.
  # Setting @ajd will set this and @ma
  # @ta = (( @ajd - DJ00 ) / DJC).to_f
  attr_accessor :ta

  # From init.rb:
  # Mean Anomaly gets called a lot so class attribute saves it.
  # @ma = Celes.falp03(@ta)
  attr_accessor :ma

  # From init.rb:
  # Initialize to set attributes
  # You may use GeoLatLng to set up @latitude and @longitude
  def initialize
    require_relative 'geo_lat_lng_smt'
    @geo = GeoLatLng.new
    @addr = @geo.default_int
    @geo.addr = @addr
    @ajd = DateTime.now.to_time.utc.to_datetime.jd.to_f
    @date, @jd = ajd_to_datetime(@ajd), @ajd
    @geo.set_coordinates
    # queries could excede quotas or you get disconnected.
    @geo.lat.zero? ? @latitude = 0.0 : @latitude = @geo.lat
    @geo.lng.zero? ? @longitude = 0.0 : @longitude = @geo.lng
  end
end

# we can run some tests from inside this file.
if __FILE__ == $PROGRAM_NAME
  lib = File.expand_path('../../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
  eot = Eot.new
  p eot.ajd
  p eot.date
  p eot.jd
  p eot.ma
  p eot.ta
  p eot.addr
  p eot.latitude
  p eot.longitude
  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'init_spec'
  system 'bundle exec ruby ~/workspace/equationoftime/test/eot/init_spec.rb'
end
