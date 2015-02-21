require 'optparse'
require 'chronic'
require 'twitter'

options = { until: 'now', batch: 100 }
OptionParser.new do |opts|
  opts.banner = "Usage: unfavoriter.rb [options]"

  opts.on("-b BATCH", "--batch BATCH", "Number of records to retrieve each request") do |u|
    options[:until] = u
  end

  opts.on("-u UNTIL", "--until UNTIL", "Unfav only until certain date") do |u|
    options[:until] = u
  end
end.parse!

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_ACCESS_SECRET"
end

begin
  deleted = 0
  limit_date = Chronic.parse(options[:until])
  raise StandardError.new('Invalid until date') if limit_date.nil?

  loop do
    favs = client.favorites(count: options[:batch]).select { |f| f.created_at < limit_date }
    break if favs.count.zero?
    client.unfavorite(favs)
    deleted += favs.count
  end
rescue
  puts $!
ensure
  puts "#{deleted} favorites have been unfav" unless deleted.zero?
end

