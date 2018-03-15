require "./Personaggi/Personaggio.rb"

module Personaggi

	class Compagnia
		attr_reader :gruppo
		
		def initialize
			@gruppo=[]
			@gruppo[0] = Guerriero.costruisci
			@gruppo[1] = Mago.costruisci
			@gruppo[2] = Ladro.costruisci
			@gruppo[3] = Arciere.costruisci
		end
		
		def to_s
			l=""
			@gruppo.each{|ele| l << "#{ele.class.to_s[12..-1]} con:  #{ele.to_s}\n" }
			l
		end
	end

end
