module Personaggi

	require "./Personaggi/Pg.rb"

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

end
