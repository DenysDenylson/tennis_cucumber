require 'sinatra'
require './lib/tennis'


$obj = Tennis.new

get '/' do
	erb :index
end

get '/juego' do
	erb :juego
end

post '/jugador1_anota' do
  $obj.jugador1_anota
  erb :juego
end