Feature: Pagina del Juego
  Scenario: Anota jugador 1
    Given estoy en la pagina del juego
    When hago click en el boton "anotar jugador 1"
    Then deberia ver "scores 15 - 0"
