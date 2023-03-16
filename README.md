# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Features

- View the "About us" page to read about the store and plants
- Login as Admin to manage and/or add to the store's dashboard, categories or products 
- Sign up to create an accountn or Login with your username and password if you already have one
- View the store's available and sold out products on the home page
- Add any items to you cart and manage in the "Cart" section of the store
- Visit individual product's page with all of its details by clicking on the item
- Place an order using the stripe API and receive an confirmation receipt with details of your order

## Home Page
![home](https://github.com/samnarduzzi/jungle-rails/blob/master/public/images/home.png?raw=true)

## Admin Dashbaord Page
![admin-dash](https://github.com/samnarduzzi/jungle-rails/blob/master/public/images/admin-dash.png?raw=true)

## Plants Page
![plants](https://github.com/samnarduzzi/jungle-rails/blob/master/public/images/plants.png?raw=true)

## Cart Page
![cart](https://github.com/samnarduzzi/jungle-rails/blob/master/public/images/cart.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server
9. Go to <http://localhost:3000/> in your browser

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- bcrypt
- cypress-rails
- database_cleaner-active_record
- sass-rails
- webpacker
- and others...
