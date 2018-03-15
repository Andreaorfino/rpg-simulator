module Personaggi

	require "./Personaggi/Pg.rb"

	class Guerrieri < Pg
	
		def crea
			@carattere = [1,0.3,1,0.2,1,0.6]
		end
		
		def self.costruisci
			guerriero = Guerrieri.new
			guerriero.costruisciPg
			guerriero
		end
		
	end

end