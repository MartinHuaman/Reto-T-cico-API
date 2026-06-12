Feature: Pruebas API Booking

  Background: Inizializando variables
    * url hostherokuapp
    * header Accept = 'application/json'
    * def Auth = call read('classpath:examples/herokuapp/Auth/Auth.feature')
    * header Cookie = 'token=' + Auth.token
    * def GetBooking = call read('classpath:examples/herokuapp/GetBooking/GetBooking.feature')
    * print 'GetBooking =>', GetBooking

  @UpdateBooking
  Scenario Outline: Actualizar Obtener Booking
    Given path "booking/" + <ID>
    And request { "firstname" : '#(GetBooking.firstname)', "lastname" : '#(GetBooking.lastname)', "totalprice" : #(GetBooking.totalprice), "depositpaid" : #(GetBooking.depositpaid), "bookingdates": {"checkin" : '#(GetBooking.checkin)',"checkout" : '#(GetBooking.checkout)'}, "additionalneeds" : '#(GetBooking.additionalneeds)'}
    When method put
    Then status 200
    And match $.firstname == '#(GetBooking.firstname)'
    And match $.lastname == '#(GetBooking.lastname)'
    And match $.totalprice == GetBooking.totalprice
    And match $.depositpaid == GetBooking.depositpaid
    And match $.bookingdates == "#object"
    And match $.bookingdates.checkin == '#(GetBooking.checkin)'
    And match $.bookingdates.checkout == '#(GetBooking.checkout)'
    And match $.additionalneeds == '#(GetBooking.additionalneeds)'
    Examples:
      | ID |
      | 2  |

  @UpdateBooking
  Scenario Outline: Bad request Actualizar Booking
    Given path "booking/" + <ID>
    When method put
    Then status 400
    Examples:
      | ID      |
      | 5321521 |