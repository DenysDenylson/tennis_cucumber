Feature: Pagina del Juego

  Scenario Outline: Anota jugador 1
    Given estoy en la pagina del juego
    When hago click en el boton "<boton>"
    Then deberia ver "<texto>"
    Examples:
      | boton            | texto         |
      | anotar jugador 1 | scores 15 - 0 |
      | anotar jugador 1 | scores 30 - 0 |
      | anotar jugador 1 | scores 40 - 0 |
      | anotar jugador 1 | Ganaste jugador1 |


  

#  REFACTORIZACION DE ESCENARIOS DE JUGADOR1
#  ==========================================
#  Scenario: Anota jugador 1 por segunda vez
#    Given estoy en la pagina del juego
#    When hago click en el boton "anotar jugador 1"
#    Then deberia ver "scores 30 - 0"
#
#  Scenario: Anota jugador 1 por tercera vez
#    Given estoy en la pagina del juego
#    When hago click en el boton "anotar jugador 1"
#    Then deberia ver "scores 40 - 0"
#
#  Scenario: Anota jugador 1 por cuarta vez y gana
#    Given estoy en la pagina del juego
#    When hago click en el boton "anotar jugador 1"
#    Then deberia ver "Ganaste jugador1"

    