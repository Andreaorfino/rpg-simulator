class Main
	Dir["./Personaggi/*.rb"].each {|file| require file }
	

	tutti = Personaggi::Compagnia.costruisci
	tutti.stampaGruppo
	
end