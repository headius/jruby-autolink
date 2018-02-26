# JRubyAutolink

JRubyAutolink is a wrapper around the autolink-java library. It provides a rinku/rails_autolink compatible
autolinking library for JRuby users.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jruby_autolink'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jruby_autolink

## Usage

```ruby
require "jruby_autolink"
puts JRubyAutolink.auto_link("Welcome to my new blog at http://www.myblog.com/.")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/headius/jruby_autolink.
