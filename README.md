# Novel Bingo (Under Construction)

http://novelbingo.com (eventually)

![Screenshot](app/webpacker/images/Screenshot.png?raw=true "Novel Bingo")

The initial idea for Novel Bingo came from Reddit's r/fantasy reading bingo. Basically it gets you to get out of your comfort zone and lets you read books in categories that you normally wouldn't. I got super into it in 2020, what with the pandemic and all but didn't love using a simple spreadsheet to keep track of it. That's where Novel Bingo comes in. It allows users to create a new bingo with different book categories (so not just r/fantasy's bingo), or join an existing one. Users can choose a books for a square and pull data via Google Books API. You can also get recommendations for books that fit a square based on how many times other users have selected books. 

## Setup Instructions

1. Clone repo
2. Install `rbenv`
   - Install `ruby-2.7.2`
3. Install `postgres`
   - Make sure your root username has psql createdb permission `ALTER USER user CREATEDB;`
4. Set up ruby environment:
   - `bundle update --bundler`
   - `bundle install`
6. Create `.env` from `env.example` file
7. Set up database:
   - `rake db:migrate`
   - `rake db:seed`
8. Start rails:
   - `rails s`

## Stack

- Ruby
- Rails
- Postgres
- Heroku
- Google Books API
