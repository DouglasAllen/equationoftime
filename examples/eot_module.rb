
module EOT

  def self.get_dtod_utc
    DateTime.now.to_time.utc.to_datetime
  end
	
	def self.get_argv
		ARGV[0].to_s
	end
	
	def self.parse_argv
		arg = self.get_argv.split("-").map {|ae| ae.to_i}		
		begin
		  Date.valid_date?(arg[0], arg[1],arg[2])
			Date.new arg[0], arg[1],arg[2]
		rescue
		  "usage: eot yyyy-mm-nn"
		end
  end		

end

if __FILE__ == $PROGRAM_NAME

  #  puts "you ran?"
  #p EOT.get_dtod_utc
  #p EOT.get_dtod_utc.inspect
  #p EOT.get_dtod_utc.to_s
  #eval "EOT.get_dtod_utc.send :display;puts"
  #eval "EOT.get_dtod_utc.to_s.send :display;puts"
  #puts EOT.get_dtod_utc
	#puts EOT.get_dtod_utc.jd
	#puts EOT.get_dtod_utc.day_fraction.to_f

  #p EOT.get_argv	
  #p EOT.parse_argv
	require 'eot'
	eot = Eot.new
	#p eot.methods.sort - Object.methods
	#p Date.methods.sort - Object.methods
	
	p eot.date
	p eot.sunrise_dt #this defaults to today
	p eot.sunset_dt #this defaults to today	
	
	eot.date = EOT.parse_argv  unless EOT.parse_argv == "usage: eot yyyy-mm-nn"
	eot.ajd = eot.date.jd 	
	eot.latitude = (41 + 56/60.0)
	eot.longitude = -(88 + 45/60.0)
	# make sure to set this first after making changes
	eot.ma_ta_set
	p eot.sunrise_dt #this defaults to today
	p eot.sunset_dt #this defaults to today

end

