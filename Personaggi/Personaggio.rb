module Personaggi

	class Personaggio    
	
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
			puts ret
		end
		
		def to_s
			ret = ""
			@schedaSkill.each{|key, value| ret<<"#{key.to_s}: #{value.to_s}   "}
			ret
		end

		def self.costruisciSkill(carattere)
			tmp = {}
			carattere.each {|key,value| tmp[key]=(rand(100)*carattere[key]).floor}
			return tmp
		end
		
		def costruisciPg
			@schedaSkill = {}
			self.crea
			self.carattere.each{|key,value|	self.schedaSkill[key]=(rand(100)*self.carattere[key]).floor}
			
		end
		
	end

	
end