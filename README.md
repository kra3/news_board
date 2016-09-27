# Simple News Publishing System Dashboard.

* A Dummy Login page (keeping registration/password recovery etc., out of scope)
* After login, redirect to a dashboard: will have an unseen counter (web-socket), 
  "see all news" link & a form to create new news entry.
* As and when a news is published by someone increment unseen count for 
  the logged in user by one (and decrement ones seen by the user)
* see all news link will get you into another page with all the news 
  published so far.
* Ability to add comments (without nesting)

Uses sqlite3, and run using ./bin/rails server
* Ruby version: 2.3.1
