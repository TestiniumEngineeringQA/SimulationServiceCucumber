@bookerAPI @viewBooking
Feature: To view the restful-booker booking details

  @Deneme00
  Scenario:
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    Then user should get the response code 200
    And user should see all the booking IDs

  @Deneme01
  Scenario:
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    And user makes a request to view details of a booking ID
    Then user should get the response code 200
    And user validates the response with JSON schema "bookingDetailsSchema.json"

  @Deneme02
  Scenario Outline:
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs from "<checkin>" to "<checkout>"
    Then user should get the response code 200
    And user should see all the booking IDs

    Examples: 
      | checkin    | checkout   |
      | 2018-01-01 | 2021-12-31 |
      | 2010-01-01 | 2020-12-31 |

  @Deneme03
  Scenario:
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    Then user should see all the booking IDs
    And user makes a request to view details of a booking ID
    And user makes a request to view all the booking IDs of that user name
    And user should get the response code 200
    And user should see all the booking IDs

  @Deneme04
  Scenario:
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201


  @Deneme05
    Scenario:
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 400

  @Deneme06
  Scenario:
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201

  @Deneme07
  Scenario:
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201

  @Deneme08
  Scenario:
    Given the API endpoint is "https://jsonplaceholder.typicode.com/posts/5"
    When I send a GET request
    Then the response status code should be 200
    And the response should contain "userId"

  @Deneme09
  Scenario:
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201

