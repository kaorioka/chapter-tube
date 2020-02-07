class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.where(user_id: current_user)

    @chapters = []
    @favorites.each do |f|
        @chapters << Chapter.where(id: f.chapter_id)
    end
  end

end 
