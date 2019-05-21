# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Screenshots
!['Screenshot1'](https://github.com/karlchvojka/jungle-rails/tree/master/docs/jungle1.png)
!['Screenshot2'](https://github.com/karlchvojka/jungle-rails/tree/master/docs/jungle2.png)
!['Screenshot3'](https://github.com/karlchvojka/jungle-rails/tree/master/docs/jungle3.png)
!['Screenshot4'](https://github.com/karlchvojka/jungle-rails/tree/master/docs/jungle4.png)

## Getting Started

### Prerequisites
* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

### Dependencies
There are many dependencies. Please look at the Gemfile for a list of them and the versions needed.
## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Create new vars for admin access:<br/>
    ADMIN_USERNAME=Jungle<br/>
    ADMIN_PASSWORD=Book
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>
