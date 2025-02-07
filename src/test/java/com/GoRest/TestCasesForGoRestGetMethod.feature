
Feature: Test cases for GoRest Get Method 

Scenario: To verify get method with valid user ID
Given url 'https://gorest.co.in/public/v2/users/7001928'
When method GET
Then status 200
And print response

Scenario: To verify get method with invalid user ID
Given url 'https://gorest.co.in/public/v2/users/700234567'
When method GET
Then status 200
And print response


# body
# auth
# content type Path qu  validation