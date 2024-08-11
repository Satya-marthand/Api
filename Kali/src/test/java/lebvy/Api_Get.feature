Feature: Test the Get Request


	Background:
	Given url 'https://reqres.in'
	
	Scenario: Verify the Employee Data
	And path '/api/users?page=1'
	And header Accept = 'application/json'
	When method get
	Then status 200
	And match response.data == '#[6]'
	
	Scenario: Verify the Employee Data
	And path '/api/users?page=1/'
	And header Accept = 'application/json'
	When method get
	Then status 200
	And match $ contains deep {"data":[{"id":1}]}
 	And match $.data[*].id == [1,2,3,4,5,6]
 	#[1,2,3,4,5,6]
 	#And print each $.data[*].id
 	
 	Scenario: Reterive Second Employee Data
	And path '/api/users/2'
	And header Accept = 'application/json'
	When method get
	Then status 200
	And print response.data.id
	And print response.data.email
	And print response.data.first_name
	And print response.data.last_name
	And print response.data.avatar
	
	
	Scenario: Reterive Second Employee Data
	And path '/api/users/3'
	And header Accept = 'application/json'
	When method get
	Then status 200
	And match $.data.id == 3
	And match $.data.id == '#number'
	And match $.data.first_name == 'Emma'
	And match $.data.first_name == '#string'
	
	
	
	
	