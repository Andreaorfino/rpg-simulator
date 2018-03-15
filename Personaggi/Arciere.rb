require "./Personaggi/Personaggio.rb"

module Personaggi

	class Arciere < Personaggio

		@@carattere = {
				stamina: 0.6,
				intelletto: 0.8, 
				forzaFisica: 0.8, 
				forzaMagica: 0.4, 
				difesaFisica: 0.5, 
				difesaMagica: 0.5 }

			def initialize
				@schedaSkill = Personaggio.costruisciSkill(@@carattere)
			end
		
	end

end