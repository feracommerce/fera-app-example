# Fera App Example
An working Fera Rails App example to help you get started with our partner app development.

To learn more about our APIs visit https://developers.fera.ai

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/feracommerce/fera-rails-app-example)

# Developer Setup
Here's how to get the app running on your local computer for development.

### Prerequisites
You must have the following to run this app:
1. Postgres 12+ (`brew install postgres` on OSX)
2. Redis 6+ (`brew install redis` on OSX)
3. Ruby 2.7.6 (install `rbenv` then install Ruby 2.7.6 with `rbenv install 2.7.6`)
4. [Ngrok 3+, Business Edition](ngrok.io) (`brew install ngrok` on OSX) - Also make sure your auth token is set.
5. Foreman (`gem install foreman`)
6. [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/#mac-stable) and NPM

### Create your app
First head over to https://partners.fera.ai/apps/new to create a new app.

If you don't have a partner account yet you can signup for one by going to https://www.fera.ai/partners/signup

Once you've created your app go to the "general" tab and grab your `Code`.

Then go to the setup tab and copy your:
1. Client ID
2. Client Secret

### Setup App
Copy over `.env-example` to `.env` and fill in all the values as instructed in the file.

1. Install the gems `bundle install`
1. Initialize the database `bin/setup`
1. Install yarn packages `yarn install`


### Run the development server
Once you're ready run `yarn run dev` to start your local development server. It'll tell you what URL to access. 🚀🚀🚀
