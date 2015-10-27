require 'sinatra'
require './lib/tennis'


$obj = Tennis.new

get '/' do
	erb :index
end

get '/juego' do
  $obj.reiniciar
	erb :juego
end

post '/jugador1_anota' do
  $obj.jugador1_anota
  erb :juego
end

post '/jugador2_anota' do
  $obj.jugador2_anota
  erb :juego
end
