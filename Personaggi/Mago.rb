require "./Personaggi/Personaggio.rb"

module Personaggi

	class Mago < Personaggio
	
		def crea
			@carattere = {
				stamina: 0.3, 
				intelletto: 1,
				forzaFisica: 0.2, 
				forzaMagica: 1, 
				difesaFisica: 0.1, 
				difesaMagica: 0.8 }
		end
		
		def self.costruisci
			mago = Mago.new
			mago.costruisciPg
			mago
		end
		
	end

end
