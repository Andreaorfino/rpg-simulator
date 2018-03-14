class Personaggi

	class Classi
		#skill comuni
#		stamina			:0
#		itelletto		:1
#		forzaFisica		:2
#		forzaMagica		:3
#		difesaFisica	:4
#		difesaMagica	:5

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
				self.schedaSkill[i] = (self.carattere[i] * Classi.Casuali6[i]).to_i
				i=i+1
			end
		end
		
		def Classi.Casuali6
			arrRand=Array.new
			i=6
			while i>0
				arrRand<<rand(100)
				i=i-1
			end
			arrRand
		end
		
	end
	
#-------------------	
	
	class Guerrieri < Classi
	
		def crea
			@carattere = [1,0.3,1,0.2,1,0.6]
		end
		
		def self.costruisci
			guerriero = Guerrieri.new
			guerriero.costruisciPg
			guerriero
		end
		
	end
	
	class Maghi < Classi
	
		def crea
			@carattere = [0.3,1,0.2,1,0.1,0.8]
		end
		
		def self.costruisci
			mago = Maghi.new
			mago.costruisciPg
			mago
		end
		
	end
	
	class Ladri < Classi
	
		def crea
			@carattere = [0.8,1,0.6,0.7,0.6,0.6]
		end	
		
		def self.costruisci
			ladro = Ladri.new
			ladro.costruisciPg
			ladro
		end
		
	end
	
	class Arcieri < Classi
	
		def crea
			@carattere = [0.6,0.8,0.8,0.4,0.5,0.5]
		end	

		def self.costruisci
			arciere = Arcieri.new
			arciere.costruisciPg
			arciere
		end
		
	end

#-------------------	

	class Compagnia
		attr_reader :gruppo
		
		def creaGruppo
			@gruppo=[]
			@gruppo[0] = Guerrieri.costruisci
			@gruppo[1] = Maghi.costruisci
			@gruppo[2] = Ladri.costruisci
			@gruppo[3] = Arcieri.costruisci
		end
		
		def self.costruisci
			compagnia = Compagnia.new
			compagnia.creaGruppo
			compagnia
		end
		
		def stampaGruppo
			@gruppo.each{|ele| puts "#{ele.class.to_s} con \"#{ele.skillPg}\"" }
		end
		
		def getGruppo
			@gruppo
		end
		
	end
	
#-------------------
	
	tutti = Compagnia.costruisci
	tutti.stampaGruppo

	
end