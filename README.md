# ZapServer

* This is the server side of Zap, a project of Group H for 2017 CSC 510 Software Engineering course.

### Documentation for API use:

* User register:
Method: POST

Api location: https://zapserver.herokuapp.com/api/users/

Content-Type: application/json

Accept: application/vnd.zapserver.v1

JSON:

{
	"user": {
		"email": "test@zapserver.com",
		"password": "12345678",
		"password_confirmation": "12345678"
	}
}

cURL example:
curl -k -v -H "Content-Type:application/json" -X POST -d '{"user":{"email":"test@zapserver.com","password":"12345678", "password_confirmation":"12345678"}}' https://zapserver.herokuapp.com/api/users/

* User log in:
Method: POST

Api location: https://zapserver.herokuapp.com/api/sessions

Content-Type: application/json

Accept: application/vnd.zapserver.v1

JSON:

{
	"session": {
		"email": "example@zapserver.com",
		"password": "12345678"
	}
}

cURL example:
curl -k -v -H "Content-Type:application/json" -X POST -d '{"session":{"password":"12345678","email":"example@zapserver.com"}}' https://zapserver.herokuapp.com/api/sessions/

* User log out:
Method: DELETE

Api location: https://zapserver.herokuapp.com/api/sessions/replace_auth_token_in_here

Content-Type: application/json

Accept: application/vnd.zapserver.v1

cURL example:
curl -k -v -H "Content-Type:application/json" -X DELETE https://zapserver.herokuapp.com/api/sessions/DxsBFrATCNxt_9J8f94a

* Magic link login:
METHOD: POST

Api location: https://zapserver.herokuapp.com/api/magiclinks

Content-Type: application/json

Accept: application/vnd.zapserver.v1

cURL example:
curl -k -v -H "Content-Type:application/json" -X POST -d '{"magiclink":{"email":"example@zapserver.com"}}' https://zapserver.herokuapp.com/api/magiclinks/



