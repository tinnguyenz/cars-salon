# README

This appplication contains 2 objects: Car and Property

A Car has a `name` and a Property consists of attributes of the Car

A Property only exists with or without a Car, as the there is a chance that another car has similar specs.

* HOW-TO:
 - First clone the repo
 - Since Rails 7 and Ruby 3.1.12 are used, I guess RVM would help with the local environment:
 `rvm gemset create rails7`
 `rvm use ruby-3.1.12@rails7`
 - After bundle is install, run rake for database stuff:
 `rake db:drop db:create db:migrate db:test:prepare db:seed`
 - Start web server: `rails s` ~> http://localhost:3000/api/cars
 - Run RSpec:
  `rspec spec/models/*_spec.rb 
 

