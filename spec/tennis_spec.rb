require "tennis"
# 
describe Tennis do
	
	before :each do
		@tennis = Tennis.new
	end
	
	context "Inicializacion del juego" do
		it "empieza con score en 0 - 0" do
			expect(@tennis.scorer).to eq "0 - 0"
		end
	end
	
	context "Anotaciones de Jugador 1 " do
		it "jugador1 anota el score esta en 15 - 0" do
			@tennis.jugador1_anota
			expect(@tennis.scorer).to eq "15 - 0"
		end
		
		it "jugador1 anota 4 veces seguidas, el score esta 'Ganaste jugador1' " do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			expect(@tennis.scorer).to eq "Ganaste jugador1"
		end
	end
	
	context "Anotaciones de Jugador 2 " do	
		it "jugador2 anota 2 veces, el score esta 0 - 30" do
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "0 - 30"
		end
		
		it "jugador2 anota 4 veces seguidas, el score esta 'Ganaste jugador2' " do
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "Ganaste jugador2"
		end
	end
	
	context "Anotaciones de Jugador1 y Jugador2 " do
		it "jugador1 y jugador2 tambien, el score esta 15 - 15" do
			@tennis.jugador1_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "15 - 15"
		end	
		
		it "jugador1 y jugador2 2 veces cada uno , el score esta 30 - 30" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "30 - 30"
		end	
		
		it "jugador1 anota 3 veces y jugador2 2 veces, el score esta 40 - 30" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "40 - 30"
		end	
		
		it "jugador2 anota 3 veces y jugador1 2 veces, el score esta 30 - 40" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "30 - 40"
		end	
		
		it "jugador1 y jugador2 igualados a 40, el score esta 'deuce'" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "deuce"
		end	
		
		it "jugador1 esta con advantage, el score esta 'advantage1'" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "deuce"
			@tennis.jugador1_anota
			expect(@tennis.scorer).to eq "advantage1"					
		end
		
		it "jugador2 esta con advantage, el score esta 'advantage2'" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "deuce"
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "advantage2"					
		end	
		
		it "jugador1 esta con advantage y marca para ganar, el score esta 'Ganaste jugador1'" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "deuce"
			@tennis.jugador1_anota
			expect(@tennis.scorer).to eq "advantage1"
			@tennis.jugador1_anota
			expect(@tennis.scorer).to eq "Ganaste jugador1"							
		end	
		
		it "jugador2 esta con advantage y marca para ganar, el score esta 'Ganaste jugador2'" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "deuce"
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "advantage2"
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "Ganaste jugador2"							
		end	
	end		
end