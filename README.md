# Xcvm

Xcode Version Manager is a command line utility and ruby gem for manipulating Xcode project versions in many different ways. It allows for expressive commands to bump build numbers and increment versions using semantic versioning conventions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xcvm'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xcvm

## Usage

To increment a build number, from within the directory containing the `Info.plist` file for your project, simply run:

```bash
xcvm bump build
```

If you'd like to print the current build number, simply type:

```bash
xcvm print build
```

You can also print the current version:

```bash
xcvm print version
```

Or increment/decrement a segment of the version by using:

```bash
xcvm increment major
```

or

```bash
xcvm decrement revision
```

Version numbers are interpreted as `major.minor.revision`.

You can also specify the path to your `Info.plist` file manually:

```
xcvm bump minor -p ~/Project/Info.plist
```

Alternatively you can use the more compact forms `version` and `build` as well. So you can do things like:

```
version print
```

or

```
build print
```

Or even

```
build bump
```
```
build increment
```

or

```
version increment major
```
```
version increment minor
```
```
version increment revision
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jaderfeijo/xcvm.

