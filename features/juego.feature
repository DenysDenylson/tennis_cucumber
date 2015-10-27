Feature: Anotaciones de Jugador1 y Jugador2, indivuales

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

  Scenario Outline: Anota jugador 2
    Given estoy en la pagina del juego
    When clickeo el boton "<boton>"
    Then veo "<texto>"
    Examples:
      | boton            | texto         |
      | anotar jugador 2 | scores 0 - 15 |
      | anotar jugador 2 | scores 0 - 30 |
      | anotar jugador 2 | scores 0 - 40 |
      | anotar jugador 2 | Ganaste jugador2 |

  Scenario: Se reinicia el juego
    Given estoy en la pagina del juego
    When hago click en el boton "reiniciar"
    Then deberia ver "scores 0 - 0"


  

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

#  REFACTORIZACION DE ESCENARIOS DE JUGADOR1
#  ==========================================
#
#  Scenario: Anota jugador 2 por segunda vez
#    Given estoy en la pagina del juego
#    When clickeo el boton "anotar jugador 2"
#    Then veo "scores 0 - 30"
#
#  Scenario: Anota jugador 2 por tercera vez
#    Given estoy en la pagina del juego
#    When clickeo el boton "anotar jugador 2"
#    Then veo "scores 0 - 40"
#
#  Scenario: Anota jugador 2 por segunda vez y gana
#    Given estoy en la pagina del juego
#    When clickeo el boton "anotar jugador 2"
#    Then veo "Ganaste jugador2"
#
#