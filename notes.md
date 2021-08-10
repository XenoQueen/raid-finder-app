- app in which players can create new raid groups and choose one to join

GET /register
- sign up form

POST /players
- create player in db with validation

GET /login
- present login form
POST /login
- create session and redirect
    - Tell player who they are logged in as
    - Forgot to build a logout
    - Create a protected page

GET /raids/new
- show form to create new raid
- enter raid name, player class, spec and item level

POST /raids
- take post request data and save it to db

GET /raids
- show list of all raid request entries

GET /raids/:id
- show details of raid request entry

PATCH /raids/:id