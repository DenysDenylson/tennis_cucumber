class Tennis
	
	def initialize
		@marcador = "0 - 0"
	end
	
	def scorer
		@marcador
	end
	
	def jugador1_anota
		if @marcador == "0 - 0"
			@marcador = "15 - 0"
		elsif @marcador == "15 - 0"
			@marcador = "30 - 0"
		elsif @marcador == "30 - 0"
			@marcador = "40 - 0"
		elsif @marcador == "40 - 0"
			@marcador = "Ganaste jugador1"
		end
	end
	
	def jugador2_anota
		if @marcador == "0 - 0"
			@marcador = "0 - 15"
		elsif @marcador == "0 - 15"
			@marcador = "0 - 30"
		elsif @marcador == "0 - 30"
			@marcador = "0 - 40"
		elsif @marcador == "0 - 40"
			@marcador = "Ganaste jugador2"
		end
	end
	
	
end