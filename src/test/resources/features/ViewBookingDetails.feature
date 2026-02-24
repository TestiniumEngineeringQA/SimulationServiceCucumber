@bookerAPI @viewBooking
Feature: To view the restful-booker booking details


  Scenario: Deneme00
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    Then user should get the response code 200
    And user should see all the booking IDs


  Scenario: Deneme01
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    And user makes a request to view details of a booking ID
    Then user should get the response code 200
    And user validates the response with JSON schema "bookingDetailsSchema.json"


  Scenario Outline: Deneme02
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs from "<checkin>" to "<checkout>"
    Then user should get the response code 200
    And user should see all the booking IDs

    Examples: 
      | checkin    | checkout   |
      | 2018-01-01 | 2021-12-31 |
      | 2010-01-01 | 2020-12-31 |


  Scenario: Deneme03
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    Then user should see all the booking IDs
    And user makes a request to view details of a booking ID
    And user makes a request to view all the booking IDs of that user name
    And user should get the response code 200
    And user should see all the booking IDs


  Scenario: Deneme04
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201


  Scenario: Deneme05
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 400


  Scenario: Deneme06
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201


  Scenario: Deneme07
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201


  Scenario: Deneme08
    Given the API endpoint is "https://jsonplaceholder.typicode.com/posts/5"
    When I send a GET request
    Then the response status code should be 200
    And the response should contain "userId"


  Scenario: Deneme09
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201

