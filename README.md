# Pronto runner for SimpleCov

Pronto runner for [SimpleCov](https://github.com/colszowka/simplecov), code coverage analysis tool for Ruby. [What is Pronto?](https://github.com/mmozuras/pronto)

It reports all changed lines which are not covered by the tests. `pronto-simplecov` relies on `SimpleCov`s [merged results](https://github.com/colszowka/simplecov#merging-results), this means `pronto` should be run after all test suits finished.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pronto-simplecov'
```

And then execute:

    $ bundle

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dsander/pronto-simplecov. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

