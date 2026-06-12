Feature: Pruebas API chuck norris

  Background: Inizializando variables

  Scenario: Validar API Get Chuck Norris
    Given url "https://api.chucknorris.io/jokes/random"
    When method get
    Then status 200
    And print response
    And match response.id == "#string"
    And match response.value == "#string"