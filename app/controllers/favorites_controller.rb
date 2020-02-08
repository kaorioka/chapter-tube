class FavoritesController < ApplicationController

  def index
    @chapters = Chapter.where(id: chapter_id = Favorite.where(user_id: current_user.id).select(:chapter_id))

    # @favorites = Favorite.where(user_id: current_user)

    # @chapters = []
    # @favorites.each do |f|
    #     @chapters << Chapter.where(id: f.chapter_id)
    # end
  end

end 
