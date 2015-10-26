require './lib/tennis'

$obj = Tennis.new

Given(/^estoy en la pagina de inicio$/) do
  visit '/'
end

When(/^presiono el boton "([^"]*)"$/) do |boton|
  click_button(boton)
end

Then(/^Deberia ver "([^"]*)"$/) do |texto|
  # obj = Tennis.new
  $obj.scorer == texto
  # last_response.body.should =~ /#{obj.scorer}/m
  # last_response.body.should =~ /#{texto}/m
end

