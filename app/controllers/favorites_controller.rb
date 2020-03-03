class FavoritesController < ApplicationController

  def index
    if user_signed_in?
      # scopeで書いてスッキリさせるバージョン。これの定義さきはchapterモデル
      @chapters = Chapter.search_chapters(current_user)

      # まとめてSQLで書くパターン
      # @chapters = Chapter.where(id: chapter_id = Favorite.where(user_id: current_user.id).select(:chapter_id))
    else
    end
  end

  def create
    Favorite.create(chapter_id: favorite_params[:chapter_id], user_id: current_user.id)
    redirect_to root_path
  end

  private
  def favorite_params
    params.permit(:chapter_id)
  end

end 
