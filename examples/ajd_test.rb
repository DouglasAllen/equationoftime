require 'date'
require 'eot'

class TestAJD
	def initialize(ajd=nil)
		@ajd = ajd
	end	
	def ajd
		@ajd
	end
	def ajd= (date = nil)
		@ajd = date.ajd
	end
end

tajd = TestAJD.new
p tajd.ajd.class

eot = Eot.new
p eot.ajd.class