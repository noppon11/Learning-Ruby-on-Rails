class RssController < ApplicationController
  include RssHelper
  def index
    if(params[:url]==nil)
      url = 'http://www.ruby-lang.org/en/feeds/news.rss'
      @rssHelper = getFeed(url)
    else
      @rssHelper = getFeed(Params[:url])
    end
  end
end
