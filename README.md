# Bookshelf

Hanami tutorial on their getting started page <http://hanamirb.org/guides/getting-started/>

The project was created with:

```bash
hanami new PROJECT_NAME
```

This will create a folder with the name `PROJECT_NAME`, and use sqlite3 by default.


## To initialize the app

```bash
bundle install
```


## To run the app

```bash
bundle exec hanami server
```

and go to <http://localhost:2300>

For browser reload, the shotgun gem is used. From Hanami's documentation:

> shotgun requires that the current environment supports fork(2). JRuby and Windows don't support it. If this is your case, shotgun is not compatible with your development environment, then you can remove that entry from the Gemfile or start the server with the `--no-code-reloading` argument.


## To run the tests

```bash
bundle exec rake
```

This will run both minitest and rubocop.
