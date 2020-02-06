class SitemapController < ApplicationController
  def index
    @favorites = Favorite.where(params[:user_id])
  end
end
  