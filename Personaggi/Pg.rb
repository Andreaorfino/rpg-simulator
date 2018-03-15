module Personaggi

	class Pg
#	skill comuni
#	stamina			:0
#	itelletto		:1
#	forzaFisica		:2
#	forzaMagica		:3
#	difesaFisica	:4
#	difesaMagica	:5

		attr_reader :schedaSkill 
		
		attr_reader :carattere
		
		def stampSkillPg
			puts self.skillPg
		end
		
		def skillPg
			@schedaSkill.join(", ")
		end
		
		def costruisciPg
			@schedaSkill = Array.new
			self.crea
			i=0
			while i<6
				self.schedaSkill[i] = (self.carattere[i] * Pg.Casuali6[i]).to_i
				i=i+1
			end
		end
		
		def Pg.Casuali6
			arrRand=Array.new
			i=6
			while i>0
				arrRand<<rand(100)
				i=i-1
			end
			arrRand
		end
		
	end

	
end