# init.rb

class Eot    

  # From init.rb:<br>
  # address used for GeoLatLng.addr when used.(commented out) 
  attr_accessor :addr
  
  # From init.rb:<br>
  # Astronomical Julian Day Number is an instance of Date class.
  # When new Equation of Time class is initialized @ajd = jd = today DateTime.jd
  # Used for getting the equation of time now if it is set for that. There is 
  # always a slight delay in the computation though.
  attr_accessor :ajd

  # From init.rb:<br>
  # Nutation Data is an instance of Array class.
  # @data = nutation_table5_3a.yaml 
  # YAML File loaded when new Eot class is initialized.
  attr_reader :data  

  # From init.rb:<br>
  # @date is an instance of Date class.  
  # When new Eot class is initialized @date = today  
  attr_accessor :date

  # From init.rb:<br>
  # Julian Day Number is an instance of Date class.
  # When new Eot class is initialized @jd = jd today  
  attr_accessor :jd

  # From init.rb:<br>
  # Latitude input is an instance of Float class.
  # When new Eot class is initialized @latitude = 0.0
  # May use GeoLatLng class to set it also but is commented out or will fail if no 
  # internet connection is present.  
  attr_accessor :latitude
  
  # From init.rb:<br>
  # Longitude input is an instance of Float class.
  # When new Eot class is initialized @longitude = 0.0
  # May use GeoLatLng class to set it also but is commented out or will fail if no 
  # internet connection is present.  
  attr_accessor :longitude

  # From init.rb:<br>
  # Mean Anomaly gets called a lot so attribute accessor saves time 
  attr_accessor :ma

  # From init.rb:<br>
  # JCT array gets called a lot so attribute accessor saves time 
  attr_accessor :ta
      
  # From init.rb:<br>
  # Initialize loads nutation data with safe_yaml and is frozen, atrributes are set.
  # You may use GeoLatLng to set up @latitude and @longitude but you need to have
  # internet so that is commented out for now.    
  def initialize(addr=nil)

    file_path     = File.expand_path( File.dirname( __FILE__ ) + "/nutation_table5_3a.yaml" )
    @data         = YAML::load( File.open( file_path, 'r'), :safe => true  ).freeze
 
    @ajd.nil? ? @ajd = DateTime.now.to_time.utc.to_datetime.jd.to_f : @ajd      
    @date.nil? ? @date = DateTime.now.to_time.utc.to_datetime : @date
    @jd.nil? ? @jd  = DateTime.now.to_time.utc.to_datetime.jd.to_f : @jd
    @latitude.nil? ? @latitude = 0.0 : @latitude
    @longitude.nil? ? @longitude = 0.0 : @longitude
    @ta.nil? ? time_julian_century() : @ta  
    @ma.nil? ? ma_Sun() : @ma

    #geo = GeoLatLng.new
    @addr = addr
    #addr.nil? ? geo.addr=(geo.default_int) : geo.addr=addr
# uncomment below if you have internet connection
    #geo.get_coordinates_from_address
    #@latitude = geo.lat.to_f
    #@longitude = geo.lng.to_f
  end
  
end


# we can run some tests from inside this file.
if __FILE__ == $PROGRAM_NAME

  lib = File.expand_path('../../../lib', __FILE__)
  puts "Loading gem from #{lib}/eot.rb"
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
  e = Eot.new
  p e.date

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'init_spec'

end
