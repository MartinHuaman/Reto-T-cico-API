Feature: Pruebas API Auth - Create Token

  Background: Inizializando variables
  * url hostherokuapp
  * header Content-Type = 'application/json'

    @Auth
  Scenario: Validar Creacion Token
    Given path "auth"
    And request { "username" : "admin", "password" : "password123"}
    When method post
    Then status 200
    And match response.token == "#string"

  @Auth
  Scenario: Usuario Invalido
    Given path "/auth"
    And request { "username" : "admin123", "password" : "password123123123"}
    When method post
    Then status 200
    And match response.reason == "Bad credentials"