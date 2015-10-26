Given(/^estoy en la pagina de inicio$/) do
  visit '/'
end

When(/^presiono el boton "([^"]*)"$/) do |boton|
  click_button(boton)
end

Then(/^Deberia ver "([^"]*)"$/) do |texto|
  expect(last_response.body).to eq(texto)
end


#
#
#
# Given(/^Estoy en la pagina de inicio$/) do
#   visit '/'
# end
#
# Then(/^Deberia ver "([^"]*)"$/) do |texto|
#   expect(last_response.body).to eq(texto)
# end
#
# When(/^Hago presiono el boton "([^"]*)"$/) do |boton|
#   click_button(boton)
# end
#
#
