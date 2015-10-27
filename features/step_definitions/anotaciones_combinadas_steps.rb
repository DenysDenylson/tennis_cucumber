require './lib/tennis'

$obj = Tennis.new

Given(/^estoy ubicado en el  juego$/) do
  visit '/juego'
end

When(/^presiono "([^"]*)"$/) do |boton|
  $obj.jugador1_anota
  $obj.jugador2_anota
  click_button(boton)
end

Then(/^se ve "([^"]*)"$/) do |texto|
  $obj.scorer === texto
end

