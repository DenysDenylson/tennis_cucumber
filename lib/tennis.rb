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
		end
	end
	
	
end