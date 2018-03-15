module Personaggi

	require "./Personaggi/Pg.rb"

	class Maghi < Pg
	
		def crea
			@carattere = [0.3,1,0.2,1,0.1,0.8]
		end
		
		def self.costruisci
			mago = Maghi.new
			mago.costruisciPg
			mago
		end
		
	end

end