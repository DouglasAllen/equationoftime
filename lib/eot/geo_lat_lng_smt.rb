# geo_lat_lng_smt.rb

# require 'multi_xml'
require 'rest-client'
require 'json'

  # class for location lookup 
  # in geo_lat_lng_smt.rb 
class GeoLatLng

  # Base address for Google maps api
  attr_reader :base  

  # Default US set to PARCS
  attr_reader :default_us
  
  # Default International set to GMT Museum
  attr_reader :default_int
  
  # Address entered
  attr_accessor :addr
  
  # Latitude returned
  attr_accessor :lat
  
  # Longitude returned
  attr_accessor :lng

  # Instance variables
  def initialize
       
    @base           = "http://maps.googleapis.com/maps/api/geocode/json?address="
    # @base           = "http://maps.googleapis.com/maps/api/geocode/xml?sensor=false&address="
    @default_us     = "3333 Coyote Hill Road, Palo Alto, CA, 94304, USA"#do you copy? :D
    @default_int    = "Blackheath Ave, London SE10 8XJ, UK"
    @lat            = 0.0
    @lng            = 0.0
    # MultiXml.parser = :rexml#:libxml#:ox # :nokogiri
    @addr = @default_int
    
  end   

  # set address  
  #def addr=(addr = @default_int)
  #  @addr = addr
  #end  

  # coordinates lookup   
  def get_coordinates_from_address
    addr         = URI.www_form_encode( @base + @addr )      
    resrc        = RestClient.get( addr )     
    parsed_resrc = JSON.parse(resrc)#MultiXml.parse( res )
    #~ result     = parsed_res[ "GeocodeResponse" ][ "result" ]
    results     = parsed_resrc["results"] 
    #~ status     = parsed_res#[ "GeocodeResponse" ][ "status" ] 
    status     = parsed_resrc[ "status" ] 
    if status != "OK"      
      @addr = @default_int      
    else      	    
      @lat   = results[0]["geometry"]["location"][ "lat" ].to_f
      @lng  = results[0]["geometry"]["location"][ "lng" ].to_f
      
    end
    
  end

end

if __FILE__ == $PROGRAM_NAME
	
  lib = File.expand_path('../../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  
  require 'eot'
  eot = Eot.new
  p eot.addr
  p eot.latitude
  p eot.longitude
  geo = GeoLatLng.new()
  p geo.addr
  p geo.lat
  p geo.lng
  geo.get_coordinates_from_address()
  p geo.lat
  p geo.lng
  #~ gem 'minitest'
  #~ require 'minitest/autorun'
  #~ spec = File.expand_path('../../../test/', __FILE__)
  #~ $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  #~ require 'geo_spec'
  system 'rake test'
  
end

