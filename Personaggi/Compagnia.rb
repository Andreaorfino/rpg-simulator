require "./Personaggi/Personaggio.rb"

module Personaggi

	class Compagnia
		attr_reader :gruppo
		
		def initialize
			@gruppo=[]
			@gruppo[0] = Guerriero.new
			@gruppo[1] = Mago.new
			@gruppo[2] = Ladro.new
			@gruppo[3] = Arciere.new
		end
		
		def to_s
			l=""
			@gruppo.each{|ele| l << "#{ele.class.to_s[12..-1]} con:  #{ele.to_s}\n" }
			l
		end
	end

end
