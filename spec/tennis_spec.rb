require "tennis"

describe Tennis do
	
	before :each do
		@tennis = Tennis.new
	end
	
	it "empieza con score en 0 - 0" do
		result = @tennis.scorer
		expect(result).to eq "0 - 0"
	end
	
	it "jugador1 anota el score esta en 15 - 0" do
		@tennis.jugador1_anota
		result = @tennis.scorer
		expect(result).to eq "15 - 0"
	end
	
	it "jugador1 anota 2 veces, el score esta 30 - 0" do
		@tennis.jugador1_anota
		@tennis.jugador1_anota
		result = @tennis.scorer
		expect(result).to eq "30 - 0"
	end
	
	it "jugador2 anota 1 vez, el score esta 0 - 15" do
		@tennis.jugador2_anota
		result = @tennis.scorer
		expect(result).to eq "0 - 15"
	end
	
end