Feature: Pruebas API Booking

  Background: Inizializando variables
    * url hostherokuapp
    * header Accept = 'application/json'

  @Booking
  Scenario Outline: Validar Obtener Booking
    Given path "booking/" + <ID>
    When method get
    Then status 200
    And match $.firstname == "#string"
    And match $.lastname == "#string"
    And match $.totalprice == "#number"
    And match $.depositpaid == "#boolean"
    And match $.bookingdates == "#object"
    And match $.bookingdates.checkin == "#notnull"
    And match $.bookingdates.checkout == "#notnull"
    And match $.additionalneeds == "#null"
    Examples:
      | ID |
      | 1  |

  Scenario Outline: Validar Obtener Booking
    Given path "booking/" + <ID>
    When method get
    Then status 404
    Examples:
      | ID |
      | 2  |