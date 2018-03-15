Dir["./Personaggi/*.rb"].each {|file| require file }

class Main

	tutti = Personaggi::Compagnia.new
	puts tutti.to_s
	
end