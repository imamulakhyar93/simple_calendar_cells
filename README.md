# SimpleCalendar::Cells

_Use Simple Calendar rails in Cells._

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_calendar_cells'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_calendar_cells

## Usage

To use the wonderful [SimpleCalendar](https://github.com/excid3/simple_calendar) gem in your Cells view models, just do

```ruby
  class Schedule < Cell::ViewModel
    include SimpleCalendar::Cells
```

You can now use `calendar`, `week_calendar` & `month_calendar` from simple calendar in your cell and it will work.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[imamulakhyar93]/simple_calendar_cells. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).