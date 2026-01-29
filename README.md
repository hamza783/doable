# README

Simple todo app using Rails 8.0

* Ruby version: 3.4.4

* Rails version: 8.0.4

To create/migrate the database:
```bash
bin/rails db:migrate
```

To seed the database with some users (check `db/fixtures/users.yml` for users to log in with or create a new user):
```bash
bin/rails db:fixtures:load
```

Start the app:

```bash
bin/rails server
```

Navigate to http://localhost:3000/todos or http://localhost:3000/projects to see the app.