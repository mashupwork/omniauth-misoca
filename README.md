# Omniauth::Misoca

[![Code Climate](https://codeclimate.com/github/ruffnote/omniauth-misoca/badges/gpa.svg)](https://codeclimate.com/github/ruffnote/omniauth-misoca)
[![Test Coverage](https://codeclimate.com/github/ruffnote/omniauth-misoca/badges/coverage.svg)](https://codeclimate.com/github/ruffnote/omniauth-misoca/coverage)

## API Document

http://doc.misoca.jp/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-misoca', github: 'ruffnote/omniauth-misoca'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-misoca

## Example

Register application on https://app.misoca.jp/oauth2/applications/new.  
(Redirect URI: `http://localhost:PORT/auth/misoca/callback`)

```
$ cd example

# .env
MISOCA_CLIENT_ID="ID"
MISOCA_CLIENT_SECRET="SECRET"
MISOCA_SITE="https://app.misoca.jp/"

$ rails s -p PORT
$ open http://localhost:PORT/
```

## Acknowledgements

https://github.com/intridea/omniauth-github

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

