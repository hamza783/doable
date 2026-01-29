# README

Simple todo app using Rails 8.0

* Ruby version: 3.4.4

* Rails version: 8.0.4

To run the app, do the following steps:

1. Create/migrate the database:
```bash
bin/rails db:migrate
```

2. Seed the database with some users (check `db/fixtures/users.yml` for users to log in with or create a new user):
```bash
bin/rails db:fixtures:load
```

3. Start the app:

```bash
bin/dev
```

Navigate to http://localhost:3000/todos or http://localhost:3000/projects to see the app.