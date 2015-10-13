require "tennis"

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
		
		it "jugador1 anota 2 veces, el score esta 30 - 0" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			expect(@tennis.scorer).to eq "30 - 0"
		end
		
		it "jugador1 anota 3 veces, el score esta 40 - 0" do
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			@tennis.jugador1_anota
			expect(@tennis.scorer).to eq "40 - 0"
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
		it "jugador2 anota 1 vez, el score esta 0 - 15" do
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "0 - 15"
		end
		
		it "jugador2 anota 2 veces, el score esta 0 - 30" do
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "0 - 30"
		end
		
		it "jugador2 anota 3 veces, el score esta 40 - 0" do
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "0 - 40"
		end
		
		it "jugador2 anota 4 veces seguidas, el score esta 'Ganaste jugador2' " do
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			@tennis.jugador2_anota
			expect(@tennis.scorer).to eq "Ganaste jugador2"
		end
	end
end