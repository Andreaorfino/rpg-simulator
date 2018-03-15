require "./Personaggi/Personaggio.rb"

module Personaggi

	class Arciere < Personaggio
	
		def crea
			@carattere = {
				stamina: 0.6, 
				intelletto: 0.8, 
				forzaFisica: 0.8, 
				forzaMagica: 0.4, 
				difesaFisica: 0.5, 
				difesaMagica: 0.5 }
		end

		def self.costruisci
			arciere = Arciere.new
			arciere.costruisciPg
			arciere
		end
		
	end

end