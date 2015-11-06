class Tennis
	# 
	def initialize
		@marcador = "0 - 0"
		@marcador_jugador1 = "0"
		@marcador_jugador2 = "0"
	end

  def reiniciar
		@marcador = "0 - 0"
		@marcador_jugador1 = "0"
		@marcador_jugador2 = "0"
	end
	
	def scorer
		es_deuce?
		@marcador
	end
	
	def jugador1_anota
		if @marcador == "0 - #{@marcador_jugador2}"
			@marcador_jugador1 = "15"
			@marcador = "15 - #{@marcador_jugador2}"
		elsif @marcador == "15 - #{@marcador_jugador2}"
			@marcador_jugador1 = "30"		
			@marcador = "30 - #{@marcador_jugador2}"
		elsif @marcador == "30 - #{@marcador_jugador2}"	
			@marcador_jugador1 = "40"							
			@marcador = "40 - #{@marcador_jugador2}"
		elsif @marcador == "40 - #{@marcador_jugador2}"
			@marcador = "Ganaste jugador1"
		elsif @marcador == "deuce"
			@marcador = "advantage1"
		elsif @marcador == "advantage1"
			@marcador = "Ganaste jugador1"
		end		
	end
	
	def jugador2_anota
		if @marcador == "#{@marcador_jugador1} - 0"
			@marcador_jugador2 = "15"
			@marcador = "#{@marcador_jugador1} - 15"
		elsif @marcador == "#{@marcador_jugador1} - 15"
			@marcador_jugador2 = "30"		
			@marcador = "#{@marcador_jugador1} - 30"
		elsif @marcador == "#{@marcador_jugador1} - 30"
			@marcador_jugador2 = "40"				
			@marcador = "#{@marcador_jugador1} - 40"
		elsif @marcador == "#{@marcador_jugador1} - 40"
			@marcador = "Ganaste jugador2"
		elsif @marcador == "deuce"
			@marcador = "advantage2"
		elsif @marcador == "advantage2"
			@marcador = "Ganaste jugador2"
		end
	end
	
	def es_deuce?
		if @marcador == "40 - 40"
			@marcador = "deuce"
		end
	end
	
	
end