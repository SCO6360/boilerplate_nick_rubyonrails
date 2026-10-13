# Rails Boilerplate

An opinionated, batteries-included starting point for new Ruby on Rails apps. Clone it, rename it, and start building.

## What's included

- **Rails 8.1** on **Ruby 3.4**
- **SQLite** by default, with a one-line switch to PostgreSQL or MySQL
- **Tailwind CSS** (via `tailwindcss-rails`), **Hotwire** (Turbo and Stimulus) and **Importmap**, so no Node is needed
- **Authentication** using the built-in Rails generator: sign in, sign out and password reset, with rate limiting
- A public landing page (`/`) and an authenticated dashboard (`/dashboard`) as examples of both access modes
- **Solid Queue, Solid Cache and Solid Cable**, so background jobs, caching and WebSockets need no Redis
- **Kamal** and a production `Dockerfile` for deployment
- **GitHub Actions CI** running Brakeman, bundler-audit, RuboCop and the test suite
- **Minitest** tests with fixtures, and Dependabot config

## Getting started

Requirements: Ruby 3.4 (see `.ruby-version`) and Bundler.

```bash
git clone https://github.com/<you>/boilerplate_nick_rubyonrails.git my_app
cd my_app
bin/setup          # installs gems, prepares the database, starts the server
```

Or step by step:

```bash
bundle install
bin/rails db:prepare db:seed
bin/dev            # Rails server and Tailwind watcher
```

Visit <http://localhost:3000>. In development, `db:seed` creates a demo user:

| Email              | Password   |
| ------------------ | ---------- |
| `demo@example.com` | `password` |

The seed user is never created in production.

## Making it your own

1. **Rename the app.** Search for `rails_boilerplate` and `RailsBoilerplate` (for example in `config/application.rb`, `config/database.yml`, `config/deploy.yml`, `Dockerfile` and the layout) and replace them with your app's name.
2. **Regenerate credentials** so you don't share secrets with the template:
   ```bash
   rm config/credentials.yml.enc config/master.key
   bin/rails credentials:edit
   ```
3. **Update the license** holder in `LICENSE`.
4. **Replace this README.**

## Common commands

| Task                      | Command                    |
| ------------------------- | -------------------------- |
| Run the app               | `bin/dev`                  |
| Run tests                 | `bin/rails test`           |
| Lint                      | `bin/rubocop`              |
| Security scan             | `bin/brakeman`             |
| Gem vulnerability audit   | `bin/bundler-audit`        |
| Open a console            | `bin/rails console`        |
| Deploy with Kamal         | `bin/kamal setup` / `bin/kamal deploy` |

## Switching databases

Generate a new app's `database.yml` for your database, or edit `config/database.yml` and the `Gemfile` by hand. For PostgreSQL, replace `sqlite3` with `pg` in the `Gemfile`, update `config/database.yml`, and run `bundle install`. The Solid Queue, Cache and Cable databases are configured in the same file.

## Project layout

```
app/
  controllers/   HomeController (public), DashboardController (auth required),
                 SessionsController, PasswordsController
  models/        User, Session, Current
  views/         layouts (with nav), home, dashboard, sessions, passwords
config/          routes, database, Kamal deploy config
test/            controller, model and mailer tests
.github/         CI workflow and Dependabot
```

Controllers require authentication by default. To make an action public, add `allow_unauthenticated_access` to the controller (see `HomeController`).

## Learning log

New to Rails? See [LEARNING.md](LEARNING.md) for notes, goals and resources, updated as I learn.

## License

[MIT](LICENSE)
