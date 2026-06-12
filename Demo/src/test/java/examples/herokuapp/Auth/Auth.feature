Feature: Pruebas API Auth - Create Token

  @Auth
  Scenario: Validar Creacion Token
    Given url "https://restful-booker.herokuapp.com/auth"
    And header Content-Type = 'application/json'
    And request { "username" : "admin", "password" : "password123"}
    When method post
    Then status 200
    And match response.token == "#string"
    And def token = response.token