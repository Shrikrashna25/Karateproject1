

Feature: To verify Post method for reqres

Background:

* def reqPostEndPoint = 'https://reqres.in/api/users'
* def requestBodyPayLoad =
"""
{
    "name": "Test",
    "job": "Lead"
}
"""
* print requestBodyPayLoad

* def requestBodyPayloadForGoRest =
"""
{
    "name": "Test Rest1",
    "email": "test_Rest_gov@schultz1.test",
    "gender": "female",
    "status": "active"
  }
"""
* def GoRestEndPoint = 'https://gorest.co.in/public/v2/users' 
* def authToken = 'Bearer 197651a1d0841602b36a4f59e6c9afca86fce6c8ab0ee72757b785358b20d026'
* def content_Type = 'ContentType.JSON'


Scenario: To verify post method with valid data for GoRest
Given request requestBodyPayloadForGoRest
And header Authorization = authToken
And header contentType = content_Type
And url GoRestEndPoint
When method POST
* print responseStatus
* print responseHeaders
* print response
* def actuaqlStatusCode = responseStatus
And match actuaqlStatusCode == 201
* print response
* def actualHeaderContentType = responseHeaders["Content-Type"]
And match actualHeaderContentType == ["application/json; charset=utf-8"]

* def actulaResponseBodyName = response.name
* def actulaResponseBodyEmail = response.email
* def actulaResponseBodyGender = response.gender
* def actulaResponseBodyStatus = response.status
And match actulaResponseBodyName == 'Test Rest1'
And match actulaResponseBodyEmail == 'test_Rest_gov@schultz1.test'
And match actulaResponseBodyGender == 'female'
And match actulaResponseBodyStatus == 'active'
* print 'Balle balle, I am pass'



Scenario: To verify post method with valid data for Reqres
Given request requestBodyPayLoad
And url reqPostEndPoint
When method POST
* print responseStatus
* print responseHeaders
* print response

* def actualStatusCode = responseStatus
And match actualStatusCode == 201

* def actualHeadersContentType = responseHeaders["Content-Type"]
And match actualHeadersContentType == ["application/json; charset=utf-8"]

* def actualResponseName = response.name
* def actualResponseJob = response.job

* print actualResponseName
* print actualResponseJob

And match actualResponseName == 'Test'
And match actualResponseJob == 'Lead' 











