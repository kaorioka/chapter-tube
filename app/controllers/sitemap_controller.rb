class SitemapController < ApplicationController
  def index
    @chapters = Chapter.all
  end
end
