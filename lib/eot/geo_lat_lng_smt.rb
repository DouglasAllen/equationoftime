# geo_lat_lng_smt.rb

require 'multi_xml'
require 'rest-client'

  # class for location lookup 
  # in geo_lat_lng_smt.rb 
class GeoLatLng

  # Base address for Google maps api
  attr_reader :base

  # Default set to PARCS
  attr_reader :default_us, :default_int
  
  # Address entered
  attr_accessor :addr
  
  # Latitude returned
  attr_accessor :lat
  
  # Longitude returned
  attr_accessor :lng

  # set base address
  def base
    "http://maps.googleapis.com/maps/api/geocode/xml?sensor=false&address="
  end  

  # Instance variables
  def initialize
       
    @base_google_url = base
    @default_us      = "3333 Coyote Hill Road, Palo Alto, CA, 94304, USA"#do you copy? :D
    @default_int     = "Blackheath Ave, London SE10 8XJ, UK"
    @lat             = 0.0
    @lng             = 0.0
    MultiXml.parser = :rexml#:libxml#:ox # :nokogiri
  
  end   

  # set address  
  def addr=(addr = @default_int)
    @addr = addr
  end  

  # coordinates lookup   
  def get_coordinates_from_address       
    res        = RestClient.get(
                                URI.encode(
                                           "#{ @base_google_url }#{ @addr }"
                                          )
                               )    
    parsed_res = MultiXml.parse( res )
    result     = parsed_res[ "GeocodeResponse" ][ "result" ]
    status     = parsed_res[ "GeocodeResponse" ][ "status" ] 
    if status != "OK"      
      @default      
    else      
      if result.count != 4          
        @default          
      else
        @lat   = parsed_res[ "GeocodeResponse" ][ "result" ][ "geometry" ][ "location" ][ "lat" ]
        @lng   = parsed_res[ "GeocodeResponse" ][ "result" ][ "geometry" ][ "location" ][ "lng" ]
      end
    end
    
  end

end
if __FILE__ == $PROGRAM_NAME

  
end

