@bookerAPI @viewBooking
Feature: To view the restful-booker booking details

  @Deneme
  Scenario: To view all the booking IDs
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    Then user should get the response code 200
    And user should see all the booking IDs

  @Deneme01
  Scenario: To view booking details
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    And user makes a request to view details of a booking ID
    Then user should get the response code 200
    And user validates the response with JSON schema "bookingDetailsSchema.json"

  @Deneme02
  Scenario Outline: To view all the booking IDs by booking dates
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs from "<checkin>" to "<checkout>"
    Then user should get the response code 200
    And user should see all the booking IDs

    Examples: 
      | checkin    | checkout   |
      | 2018-01-01 | 2021-12-31 |
      | 2010-01-01 | 2020-12-31 |

  @Deneme03
  Scenario: To view all the booking IDs by booking names
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    Then user should see all the booking IDs
    And user makes a request to view details of a booking ID
    And user makes a request to view all the booking IDs of that user name
    And user should get the response code 200
    And user should see all the booking IDs

  @Deneme04
  Scenario: To confirm whether the API is up and running
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201


  @Deneme05
  Scenario: fail
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 400

  @get+Post+
  Scenario: Get Plus Post Plus
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201

  @getPlusPostPlus
  Scenario: Get + Plus +
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201

  @get+Post
  Scenario: Get + Plus
    Given the API endpoint is "https://jsonplaceholder.typicode.com/posts/5"
    When I send a GET request
    Then the response status code should be 200
    And the response should contain "userId"


  Scenario:  Get post with no tag
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201

  @getPostWithNoName
  Scenario:
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201

  @getPostWithNameAndTag
  Scenario:Get Post With Name And Tag
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201

  Scenario: @getPostWithTagOnName
    Given user has access to endpoint "/ping"
    When user makes a request to check the health of booking service
    Then user should get the response code 201
