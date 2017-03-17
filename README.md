# README

## Minitestのセットアップ

* vim Gemfile

```ruby
... 省略 ...
group :test do
  gem 'minitest-rails'
  gem 'shoulda'
  gem 'mocha'
  gem 'minitest-rails-capybara'
end
```

* bundle install

* bin/rails g minitest:install

```zsh
% bin/rails g minitest:install                                     (git)-[ch7_minitest] <U>
      create  test/test_helper.rb
```

* bin/rake test

* vim config/application.rb

```ruby
  config.generators do |g|
    g.test_framework :minitest,
      fixture: false
    g.factory_girl false
  end
```

* git add .

* git commit -m 'Create a new branch to use with minitest'
