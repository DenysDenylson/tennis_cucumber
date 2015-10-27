Feature: Anotaciones de Jugador1 y Jugador2 combinadas

  Scenario Outline: jugador1 y jugador2 anotan
    Given estoy ubicado en el  juego
    When presiono "<boton>"
    And presiono "<boton>"
    Then se ve "<texto>"
    Examples:
      | boton            | texto          |
      | anotar jugador 2 | scores 15 - 15 |
      | anotar jugador 2 | scores 30 - 30 |

#  Scenario: jugador1 y jugador2 anotan
#    Given estoy ubicado en el  juego
#    When presiono "anotar jugador 1"
#    And presiono "anotar jugador 2"
#    And presiono "anotar jugador 1"
#    And presiono "anotar jugador 2"
#    Then se ve "scores 30 - 30"

  Scenario: jugador1 y jugador2 estan deuce
    Given estoy ubicado en el  juego
    When presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    Then se ve "deuce"

  Scenario: jugador1 esta en advantage
    Given estoy ubicado en el  juego
    When presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 1"
    Then se ve "advantage1"

  Scenario: jugador2 esta en advantage
    Given estoy ubicado en el  juego
    When presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    Then se ve "advantage2"

  Scenario: jugador1 esta en advantage y marca para ganar
    Given estoy ubicado en el  juego
    When presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    Then se ve "Ganaste jugador1"

  Scenario: jugador2 esta en advantage y marca para ganar
    Given estoy ubicado en el  juego
    When presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 1"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    And presiono "anotar jugador 2"
    Then se ve "Ganaste jugador2"


  