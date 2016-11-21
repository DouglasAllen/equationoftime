

# class Eot file = int.rb
# contains initializer and set_t method
class Eot
  # ===
  #
  #   in lib/eot/init.rb:
  #   :addr is entered as a String ex: "houston, tx"
  #   and is used for Google Geo location lookup.
  #   There are two of these. One is in GeoLatLng class
  #   and this one you may use this for storage only.
  #   It has no effect otherwise.
  #   see GeoLatLng class #new and #set_coordinates
  #

  attr_accessor :addr

  # ===
  #
  #   in lib/eot/init.rb:
  #   @ajd gets set the same as @jd all the time.
  #   This just saves the confusion of which one to use.
  #   So let Ruby Date and DateTime classes decide.
  #   You could use this for storage temporarally until
  #   it gets reset by #set_t method.
  #
  attr_accessor :ajd

  # ===
  #
  #   in lib/eot/init.rb:
  #   see the source.
  #   Use this every time you make changes for either
  #   location or date.
  #   Also see the top document for Eot class.
  #
  def set_t
    @t = ((@jd - DJ00) / DJC).to_f
    @ma = ma_sun
    @date = jd_to_datetime(@jd)
    @ajd = @jd
  end
  alias ma_ta_set set_t

  # ===
  #
  #   in lib/eot/init.rb:
  #   see the top document for Eot class.
  #
  attr_accessor :date

  # ===
  #
  #   in lib/eot/init.rb:
  #   see the top document for Eot class.
  #
  attr_accessor :jd

  # ===
  #
  #   in lib/eot/init.rb:
  #   set this before making new calculations.
  #   New class objects set this to 0.0
  #
  attr_accessor :latitude

  # ===
  #
  #   in lib/eot/init.rb:
  #   set this before making new calculations.
  #   New class objects set this to 0.0
  #
  attr_accessor :longitude

  # ===
  #
  #   in lib/eot/init.rb:
  #   Don't make any changes to this because for
  #   one it gets reset each time #set_t method is used.
  #   You may of course look at the value anytime.
  #
  attr_accessor :t

  # ===
  #
  #   in lib/eot/init.rb:
  #   Don't make any changes to this because for
  #   one it gets reset each time #set_t method is used.
  #   You may of course look at the value anytime.
  #
  attr_accessor :ma

  # ===
  #
  #   in lib/eot/init.rb:
  #   Eot::new
  #
  def initialize
    d = DateTime.now.to_time.utc.to_datetime
    @jd = d.jd
    set_t
    @latitude = 0.0
    @longitude = 0.0
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
  list = eot.public_methods(false).sort
  list.each { |i| puts i.to_sym }
  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'init_spec'
  # bundle exec rake
end
