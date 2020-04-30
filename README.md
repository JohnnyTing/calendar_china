# CalendarChina

Due to the extremely weird holidays in China, we have to customize the calendar.

NOTE: need to update the lib/data/{xxxx}.json on time.

These datasource are retrieved from the [holiday-cn](https://github.com/NateScarlet/holiday-cn), and thanks to NateScarlet

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'calendar_china'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install calendar_china

## Usage

 By default, initialize current year and date. you also can specify the fields. Below is an example:
 ```ruby
  ccd = CalendarChina::Date.new("2020", "2020-01-01")
  
  # return true
  ccd.is_holiday?
  
  # return true
  ccd.is_rest?
  
  # return false
  ccd.is_workday?
  
  # return hash:  {:date=>"2020-01-02", :days=>0}, date field is next workday lasted, days field is via these days arrives next workday
  ccd.next_workday
 ```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JohnnyTing/calendar_china. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/JohnnyTing/calendar_china/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CalendarChina project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/JohnnyTing/calendar_china/blob/master/CODE_OF_CONDUCT.md).
