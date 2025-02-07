Feature: Test cases for GoRest Get Method 

Scenario: To verify get method with valid user ID
Given url 'https://gorest.co.in/public/v2/users/7001927'
When method GET
Then status 200

Scenario: To verify get method with invalid user ID
Given url 'https://gorest.co.in/public/v2/users/700234567'
When method GET
Then status 200


Scenario: To verify reqres Get method with valid data
Given url 'https://reqres.in/api/users/2'
When method GET
* def statusCode = responseStatus
* print statusCode
And match statusCode == 200
Then status 200
* print response
* def email = response.data.email
* print email
And match email == 'janet.weaver@reqres.in'
* def firstName = response.data.first_name
* print firstName
And match firstName == 'Janet'

Scenario: To verify get method with valid page number to fetch list of users
 Given url 'https://reqres.in/api/users?page=2'
 When method get
 Then status 200
 *	print response
 * def ActuallistOfUsers = response
 * print ActuallistOfUsers
 * def actualPageNumber = response.page
 * def actualID = response.data[0].id
 * def actual2ID = response.data[1].id
 
 * print actualPageNumber
 * print actualID
 * print actual2ID
 And match actualPageNumber == 2
 And match actualID == 7
 And match actual2ID == 8
 
 * def HeaderData = responseHeaders
 * print HeaderData
 * def headerContentType = responseHeaders["Content-Type"]
 * print headerContentType
 And match headerContentType == ["application/json; charset=utf-8"]
 * def ActualEmail = response.data[1].email
 * print ActualEmail
 And match ActualEmail == 'lindsay.ferguson@reqres.in'
 

