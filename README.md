# Sniply

A simple snippet sharing site. You can see the site live at [sniply.me](http://sniply.me).

## Getting Started

Sniply has been testing on Ruby 2.1.8.

```bash
bundle install
rake db:create db:migrate
```

You need to create an application on the [Twitter Developer](https://dev.twitter.com) site. When creating a new application, set the 'callback URL' as the `http://localhost:3000/auth/callback`. Copy the 'consumer key' and the 'consumer secret' keys into `config/initializers/omniauth.rb` replacing `ENV['SNIPLY_TWITTER_KEY']` and `ENV['SNIPLY_TWITTER_SECRET']`.

When in production, the 'callback URL' needs to be changed to your site URL with `/auth/callback` on the end. Also you should set the environment variables set for `SNIPLY_TWITTER_KEY` and `SNIPLY_TWITTER_SECRET`. You can paste these into your source code but it is a security risk. You should keep these details secret.

Once everything is setup, start up the server with `rails server` and direct your web browser to [localhost:3000](http://localhost:3000). Login with Twitter and you will be greeted with a new snippet form.

## Contributing

Fork this project, make any changes and create a pull request :)

## Licence

This project is licensed under the [☺ Licence](http://licence.visualidiot.com/).