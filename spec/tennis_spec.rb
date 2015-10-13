require "tennis"

describe Tennis do
	it "empieza con score en 0 - 0" do
		tennis = Tennis.new
		result = tennis.scorer
		expect(result).to eq "0 - 0"
	end
	
	it "jugador1 anota el score esta en 15 - 0" do
		tennis = Tennis.new
		tennis.jugador1_anota
		result = tennis.scorer
		expect(result).to eq "15 - 0"
	end
end