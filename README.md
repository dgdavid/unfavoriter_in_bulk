# Unfavoriter in bulk

Unfavoriter is a simple ruby script for unfav tweets in bulk. It is inspirated
by [Twitter Unfavourite All](https://github.com/whitewhim2718/Twitter_Unfavourite_All),
but using Ruby.

## Motivation

This script was made only for learning and practice, besides my need to
delete all my favs in twitter at once. **Use it at your own risk**.

## Installation

Your system must have Ruby and Rubygems installed.

The scripts depends of [Ruby interface for Twitter API](https://github.com/sferik/twitter) and
[Chronic](https://github.com/mojombo/chronic) gems; you can install them manually by:

```console
gem install twitter
gem install chronic
```

or using [Bundler](http://bundler.io/) if you have installed it:

```console
bundle
```

## Usage

After cloning the repo, you need to open "unfavoriter.rb" and enter the
required information for your account. You'll need also to create an app
on Twitter to get tokens.

Once everything is setup, run

```console
ruby unfavoriter.rb
```

or

```console
ruby unfavoriter.rb --until '1 year ago'
```


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
