# README

A shopping application using the book: "Agile Web Development with Rails 8 by The Pragmatic Programmers"

# RUNNING DEV

Use [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) if on windows.

Run commands in root folder.

Migrate the database with: `bin/rails db:migrate`
Then run the server with: `bin/dev`

The webpage can be accessed by navigating to http://localhost:3000/

If you experience an error related to root "/" not existing, try navigating to http://localhost:3000/en first, it needs to cache something first or whatever it is. 

# INFO

Ruby 3.4.8
Rails 8.1.3.1
