module Personaggi

	class Personaggio

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
		
	end
	
end