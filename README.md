# Grandma's Server

This project is an example of a simple webserver, created for Grandma, using Sinatra.

- The '/' endpoint returns a standard greeting, "Hi, welcome to Grandma's server!", if no parameters are given.

- If a name is given, e.g. '/Lucy', it will return "Hi, Lucy, welcome to Grandma's server!".

- The 'spec' folder contains tests that verify this is indeed the behaviour of the server.

- There is a second page on Grandma's server, found at the endpoint '/dogs', which displays some pictures of dogs that Grandma likes. The basic parts of this were built using TDD.

- There is some CSS styling in the project (although very minimal).

- The pages are linked by buttons. The welcome page has a button that redirects you to '/dogs' endpoint, and the dogs page has the option to enter your name and on submit you are redirected to '/', either with personalised greeting or with the default greeting, depending on whether or not a name was entered.


Adding CircleCI for automatic testing.