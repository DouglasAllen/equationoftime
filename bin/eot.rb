#! /usr/bin/env ruby

#http://ruby-doc.org/stdlib-2.2.0/libdoc/optparse/rdoc/OptionParser.html
#http://www.dreamsyssoft.com/ruby-scripting-tutorial/optionparser-tutorial.php
#http://ruby.about.com/od/advancedruby/a/optionparser2.htm

# this is still in experimental phase and was a start.
# Please install eot gem to actually use eot from the command line.
# No get chompers required.
# Hopefully we'll get this going like Rack would use a config file for Rack::Server

if __FILE__ == $PROGRAM_NAME
  require 'optparse'

  options = { :lat => nil, :lng => nil, :date => nil }

  parser = OptionParser.new do | opts |
	
    opts.banner = "Usage: eot lat +-float lng +-float date yyyy-mm-nn "

    opts.on('-d', '--date date', 'Date') do |date|
	    options[:date] = date;
    end

    opts.on('-h', '--help', 'Displays Help') do
	    puts opts
	    exit
    end

    opts.on('-l', '--lat lat', 'Latitude') do |lat|
		  options[:lat] = lat;
	  end
	
    opts.on('-t', '--lng lng', 'Longitude') do |lng|
	    options[:lng] = lng;
    end
  end

  parser.parse!
	options.each {|k,v| puts "#{k},#{v}"}

  if options[:lat] == nil
	  puts 'Enter your latitude as: +-float'
	  options[:lat] = gets
  end
	
  if options[:lng] == nil
	  puts 'Enter your longitude: +-float'
	  options[:lng] = gets
  end  

  if options[:date] == nil
	  puts 'Enter Date: yyyy-mm-dd'
	  options[:date] = gets
  end
	
  def get_date_arg
	  ARGV[2] = "2015-03-01"
  end

  def get_lat_arg
    ARGV[0] = 41+56/60.0
  end

  def get_lng_arg
    ARGV[1] = -88-45/60.0
  end

  require 'eot'

  eot = Eot.new
  def parse_argv
	  @date_arg = get_date_arg.split("-").map {|ae| ae.to_i}
    latitude = get_lat_arg.to_f unless get_lat_arg.nil?
    longitude = get_lng_arg.to_f unless get_lng_arg.nil?	
	  begin		
		  p eot.latitude = latitude 
		  p eot.longitude = longitude
		  Date.valid_date?(@date_arg[0], @date_arg[1], @date_arg[2])
	  rescue
		  @ustr = "usage: eot yyyy-mm-nn +-lat float +-lng float"
	  end
  end

  eot.date = Date.new @date_arg[0], @date_arg[1], @date_arg[2] unless parse_argv == @ustr
  puts "for #{parse_argv}"
  puts "Date Time noon = #{eot.date}"
  if parse_argv = eot.date
    eot.ajd = eot.date.jd 
	  eot.ma_ta_set
    puts "Sunrise at lat. #{eot.latitude}, lng. #{eot.longitude} = #{eot.sunrise_dt}"
    puts "Sunset at lat. #{eot.latitude}, lng. #{eot.longitude}= #{eot.sunset_dt}"
  else
	  puts "Sunrise at lat. #{eot.latitude}, lng. #{eot.longitude} = #{eot.sunrise_dt}"
    puts "Sunset at lat. #{eot.latitude}, lng. #{eot.longitude}= #{eot.sunset_dt}"
  end
end
