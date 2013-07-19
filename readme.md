# Casestudies extension for Refinery CMS.

## How to build this extension as a gem

    cd vendor/extensions/casestudies
    gem build refinerycms-casestudies.gemspec
    gem install refinerycms-casestudies.gem

    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-casestudies.gem







# Casestudy engine for [Refinery CMS](http://www.refinerycms.com)

## Installation

Simply use this by adding the following to your `Gemfile`:

```ruby
gem 'refinerycms-casestudies', '~> 1.0.0'
```

Now, run ``bundle install``

Next, to install the search plugin run:

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
