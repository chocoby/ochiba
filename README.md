# Ochiba

[![Dependency Status](https://gemnasium.com/chocoby/ochiba.png)](https://gemnasium.com/chocoby/ochiba)

A simple photo blog.

## Development

Install gems:

```
bundle install --path .bundle
```

Start web server:

```
bundle exec rails s
```

## Production (Heroku)

```
heroku config:set SECRET_KEY_BASE=`bundle exec rake secret`
```
