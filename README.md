# README

## RSpecのセットアップ

* vim Gemfile

```ruby
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'poltergeist'
end
```

* bundle install

* bin/rails g rspec:install

* vim .rspec

```ruby
--color
--require spec_helper
--format documentation
```

* vim config/application.rb

```ruby
... 省略 ...
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
... 省略 ...
```

* bundle binstubs rspec-core

* bin/rspec

* git add .

* git commit -m 'Create a new branch to use with rspec'
