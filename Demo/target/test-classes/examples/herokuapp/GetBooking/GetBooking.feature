Feature: Pruebas API Booking

  @Booking
  Scenario Outline: Validar Obtener Booking
    Given url "https://restful-booker.herokuapp.com/booking/" + <ID>
    And header Accept = 'application/json'
    When method get
    Then status 200
    And def firstname = response.firstname
    And def lastname = response.lastname
    And def totalprice = response.totalprice
    And def depositpaid = response.depositpaid
    And def checkin = response.bookingdates.checkin
    And def checkout = response.bookingdates.checkout
    And def additionalneeds = response.additionalneeds
    Examples:
      | ID |
      | 2  |