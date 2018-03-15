require "./Personaggi/Personaggio.rb"

module Personaggi

	class Guerriero < Personaggio

		@@carattere = {
				stamina: 1,
				intelletto: 0.3,
				forzaFisica: 1,
				forzaMagica: 0.2,
				difesaFisica: 1,
				difesaMagica: 0.6 }

		def initialize
			@schedaSkill = Personaggio.costruisciSkill(@@carattere)
		end
		
	end

end