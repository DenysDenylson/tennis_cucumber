Feature: Pagina de Inicio
	Scenario: Mostrar el score
	Given estoy en la pagina de inicio
    When presiono el boton "Iniciar"
    Then Deberia ver "scores 0 - 0"

#  Scenario: Iniciar el juego tennis
#    Given Estoy en la pagina de inicio
#    When Hago presiono el boton "Iniciar"
#    Then
#
