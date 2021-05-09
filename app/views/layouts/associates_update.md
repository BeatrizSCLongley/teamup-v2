# Associates seeds

To update the db with a new associate or edit an existing associate

1. comment out the Osano Cookies tag on application.html.erb
2. change seeds.rb file
3. rails db:drop / db:create / db:migrate / db:seed
4. files to update:
  - app/views/associates/about... (partial)
  - render partial on app/views/associates/index.html.erb
5. uncomment the Osabo Cookies tag on application.html.erb
6. push branch to master
7. update heroku with heroku pg:reset / heroku run rails db:migrate / heroku run rails db:seed / heroku restart
