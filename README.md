# Unfavoriter in bulk

Unfavoriter is a simple ruby script for unfav tweets in bulk. It is inspirated
by [Twitter Unfavourite All](https://github.com/whitewhim2718/Twitter_Unfavourite_All),
but using Ruby.

## Motivation

This script was made only for learning and practice, besides my need to
delete all my favs in twitter at once. **Use it at your own risk**.

## Installation

First of all ensures that your system have Ruby and Rubygems installed and
clone the repo:

```console
git clone https://github.com/dgdavid/unfavoriter_in_bulk.git
```

The scripts depends of [Ruby interface for Twitter API](https://github.com/sferik/twitter) and
[Chronic](https://github.com/mojombo/chronic) gems; you can install them manually by:

```console
gem install twitter
gem install chronic
```

or using [Bundler](http://bundler.io/) from project folder if you have installed it:

```console
bundle
```

## Usage

Before running the script, you need to open `unfavoriter.rb` file and enter
the required information for your account. You'll need also to create an app
on [Twitter](https://apps.twitter.com/) to get tokens.

Once everything is setup, run it for unfav all tweets:

```console
ruby unfavoriter.rb
```

or run it using the `--until` option for unfav tweets from the beginning until
certain date; a few examples:

```console
ruby unfavoriter.rb --until '1 year ago'
ruby unfavoriter.rb --until 'March 1, 2012'
ruby unfavoriter.rb --until '5 days ago saturday at 5:00 pm'
...
```
Visit [Chronic's documentation](https://github.com/mojombo/chronic#examples) to
see more date/time examples.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
