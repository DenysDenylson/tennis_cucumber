Feature: Pagina de Inicio
	Scenario: Mostrar el score
	Given estoy en la pagina de inicio
    When presiono el boton "Iniciar"
    Then Deberia ver "scores 0 - 0"
