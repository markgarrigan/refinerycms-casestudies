# Casestudy engine for [Refinery CMS](http://www.refinerycms.com)

## Installation

Simply use this by adding the following to your `Gemfile`:

```ruby
gem 'refinerycms-casestudies', '~> 1.1.0'
```

Now, run ``bundle install``

Next, to install the casestudy engine run:

```ruby
rails generate refinery:casestudies
```

Run database migrations:

```ruby
rake db:migrate
```

Finally seed your database and you're done.

```ruby
rake db:seed
```

## Upgrading from 1.0.x

From inside your RefineryCMS app directory run:

```ruby
rails c
```

Then run
```ruby
Refinery::Casestudies::Casestudy.all.map(&:save)
```