module Personaggi

	require "./Personaggi/Pg.rb"

	class Arcieri < Pg
	
		def crea
			@carattere = [0.6,0.8,0.8,0.4,0.5,0.5]
		end	

		def self.costruisci
			arciere = Arcieri.new
			arciere.costruisciPg
			arciere
		end
		
	end

end