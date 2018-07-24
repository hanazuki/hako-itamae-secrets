# hako-itamae-secrets

Provide variables to [Hako](https://github.com/eagletmt/hako) using [Itamae::Secrets](https://github.com/sorah/itamae-secrets).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hako-itamae-secrets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hako-itamae-secrets

## Usage

```console
itamae-secrets set somesecret 'SECRET_VALUE'
```

```jsonnet
local secretProvider = std.native('provide.itamae_secrets');
local secret(name) = secretProvider(std.toString({ base_dir: 'secrets' }), name);

secret('somesecret')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hako-itamae-secrets.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
