# init.rb

class EqoT    

  # Astronomical Julian Day Number is an instance of Date class.
  # When new Equation_of_Time class is initialized @ajd = nil.
  # Has getter and setter in vars.rb to override attribute accessor.
  # in init.rb
  attr_accessor :ajd
  
  # EOT Constants
  # Instance of Array class
  #    @constants = [
  #                  :A2000,  
  #                  :ARCSEC,
  #                  :D2000, 
  #                  :DAY_HOURS, 
  #                  :DAY_MINUTES, 
  #                  :DAY_SECONDS, 
  #                  :DAY_USECS,
  #                  :DT2000  
  #                  :DTR,
  #                  :J2000,
  #                  :MJD0  
  #                  :RTD                  
  #                 ]    
  # in init.rb  
  attr_reader :constants

  # Nutation Data is an instance of Array class.
  # @data = nutation_table5_3a.yaml 
  # File loaded when new Equation_of_Time class is initialized.  
  # Has getter in vars.rb    
  # in init.rb
  attr_reader :data  

  # Date is an instance of Date class.  
  # When new Equation_of_Time class is initialized without date parameter @date = nil
  # May be set when new Equation_of_Time class is initialized or
  # has getter and setter in vars.rb to override attribute accessor.
  # in init.rb  
  attr_accessor :date
  
  # Julian Day Number is an instance of Date class.
  # When new Equation_of_Time class is initialized @jd = nil and
  # has getter and setter in vars.rb to override attribute accessor.
  # in init.rb  
  attr_accessor :jd

  # Latitude input is an instance of Float class.
  # When new Equation_of_Time class is initialized  without latitude parameter @latitude = nil and
  # may be set when new Equation_of_Time class is initialized.
  # Has getter and setter in vars.rb to override attribute accessor.
  # in init.rb  
  attr_accessor :latitude
  
  # Longitude input is an instance of Float class.
  # When new Equation_of_Time class is initialized  without longitude parameter @longitude = nil and
  # may be set when new Equation_of_Time class is initialized.
  # Has getter and setter in vars.rb to override attribute accessor.
  # in init.rb 
  attr_accessor :longitude

  # Mean Anomaly gets called a lot so let's set it somewhere
    # in init.rb 
  attr_accessor :ma

      

  # Initialize method >>
  # All attributes are defaulted. @data loads with safe_yaml and is frozen.
    
  def initialize(addr=nil)

    file_path     = File.expand_path( File.dirname( __FILE__ ) + "/nutation_table5_3a.yaml" )
    @data         = YAML::load( File.open( file_path, 'r'), :safe => true  ).freeze
    #@constants = [ A2000, ARCSEC, D2000, DT2000, DAY_HOURS, DAY_MINUTES, DAY_SECONDS, DAY_USECS, DTR, J2000, MJD0, RTD]
    date.nil? ? @ajd  = DateTime.now.to_time.utc.to_datetime.jd.to_f : @ajd = date.ajd.to_f      
    date.nil? ? @date = DateTime.now.to_time.utc.to_datetime : @date = date
    date.nil? ? @jd  = DateTime.now.to_time.utc.to_datetime.jd.to_f : @ajd = date.jd.to_f
    latitude.nil? ? @latitude = 0.0 : @latitude = latitude
    longitude.nil? ? @longitude = 0.0 : @longitude = longitude    
    @ma.nil? ? @ma = ma_Sun() : @ma
    geo = GeoLatLng.new
    addr.nil? ? geo.addr=(geo.default_int) : geo.addr=addr
    geo.get_coordinates_from_address
    @latitude = geo.lat.to_f
    @longitude = geo.lng.to_f
  end
  
end

if __FILE__ == $PROGRAM_NAME

  lib = File.expand_path('../../../lib', __FILE__)
  puts "Loading gem from #{lib}/eot.rb"
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
  e = EqoT.new
  p e.date

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'init_spec'

end
