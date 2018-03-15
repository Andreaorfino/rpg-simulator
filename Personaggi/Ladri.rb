module Personaggi

	require "./Personaggi/Pg.rb"

	class Ladri < Pg
	
		def crea
			@carattere = [0.8,1,0.6,0.7,0.6,0.6]
		end	
		
		def self.costruisci
			ladro = Ladri.new
			ladro.costruisciPg
			ladro
		end
		
	end
end