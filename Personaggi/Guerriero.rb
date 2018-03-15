require "./Personaggi/Personaggio.rb"

module Personaggi

	class Guerriero < Personaggio
	
		def crea
			@carattere = {
				stamina: 1, 
				intelletto: 0.3,
				forzaFisica: 1, 
				forzaMagica: 0.2, 
				difesaFisica: 1, 
				difesaMagica: 0.6 }
		end
		
		def self.costruisci
			guerriero = Guerriero.new
			guerriero.costruisciPg
			guerriero
		end
		
	end

end