require "./Personaggi/Personaggio.rb"

module Personaggi

	class Ladro < Personaggio
	

		@@carattere = {
				stamina: 0.8, 
				intelletto: 1, 
				forzaFisica: 0.6,
				forzaMagica: 0.7,
				difesaFisica: 0.6, 
				difesaMagica: 0.6 }

		def initialize
			@schedaSkill = Personaggio.costruisciSkill(@@carattere)
		end
		
		def self.costruisci
			ladro = Ladro.new
			ladro.costruisciPg
			ladro
		end
		
	end
end