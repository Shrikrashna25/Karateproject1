Feature: Test cases for reqrues GET Method


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
 
 
 # resonse 
 # 1. Response status code -- status
 # 2. Resonse Body -- response
 # 3. Header --- responseHeaders
 
 # arrayName[index].keyname
 # response.data[0].id
 # data[1].email
 
 # responseHeaders."Content-Type"
 
 