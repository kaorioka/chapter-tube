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
  end



end 
