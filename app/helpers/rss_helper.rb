require 'rss'
require 'open-url'

module RssHelper
    def getFeed(url)
        output = Feed.new
        URI.open(url) do |rss|
        feed = RSS::Parser.parse(rss)
        output.title = "Title: #{feed.channel.title}"
        output.item = []
            feed.items.each do |item|
                output.item.push("Item: #{item.title}")
            end
         end
         output
    end
end
