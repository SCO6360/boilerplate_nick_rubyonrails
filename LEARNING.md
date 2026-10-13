# Learning Rails

A running log of what I'm learning about Ruby on Rails while building on this boilerplate. Newest entries go at the top.

## Log

### Template for a new entry

```
### YYYY-MM-DD: short title
- What I tried:
- What I learned:
- What confused me / questions:
- Links:
```

### Getting oriented
- What I tried: generated the boilerplate and read through the files it created.
- What I learned (see the code in this repo for each):
  - **Routes** (`config/routes.rb`) map URLs to controller actions. `root "home#index"` means `/` runs `HomeController#index`.
  - **Controllers** (`app/controllers`) handle a request and pick a view. By default every controller here requires sign-in, and `allow_unauthenticated_access` opens one up.
  - **Views** (`app/views`) are ERB templates: HTML with Ruby embedded in `<%= %>`.
  - **Models** (`app/models`) represent database tables. `User` and `Session` back the sign-in system.
  - **Migrations** (`db/migrate`) change the database schema. `bin/rails db:migrate` applies them.
  - **Convention over configuration**: Rails guesses a lot from names, so `HomeController` finds views in `app/views/home/`.
- Questions to dig into next:
  - How do `has_many` and `belongs_to` associations work?
  - What do Turbo and Stimulus do, and when do I need them?
  - How do I add a first real feature, such as a resource with the scaffold generator?

## Learning goals

- [ ] Build a small CRUD feature end to end (`bin/rails generate scaffold`)
- [ ] Write a model test and a controller test
- [ ] Add a model association and validation
- [ ] Understand how Rails authentication works in `app/controllers/concerns/authentication.rb`
- [ ] Deploy somewhere with Kamal or another host

## Resources

- [Rails Guides](https://guides.rubyonrails.org/), especially "Getting Started"
- [Ruby documentation](https://www.ruby-lang.org/en/documentation/)
- [Rails API docs](https://api.rubyonrails.org/)
