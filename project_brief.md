### Project Brief

1. Create a rails 6.1+ / bootstrap 5.1+ app template
1. Do not use ActiveRecord, use Sequel instead
   1. Postgres 13
1. Create a User model (`fname, lname, email, role, timestamps`) with a Sequel model and migration
1. Use devise (Sequel, not ActiveRecord)
1. Use standard devise session views
1. Create a Blog model (`title, text, category `(enum)`, timestamps`)
   1. Standard controller and rails views
   1. Use all 7 rails standard restful routes
   1. Use slim (not erb) in the views
1. Push daily to `dev` branch on this repository