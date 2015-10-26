require './lib/tennis'

$obj = Tennis.new

Given(/^estoy en la pagina del juego$/) do
  visit '/juego'
end

When(/^hago click en el boton "(.*?)"$/) do |boton|
  $obj.jugador1_anota
  click_button(boton)
end

Then(/^deberia ver "([^"]*)"$/) do |texto|
  $obj.scorer == texto
end
