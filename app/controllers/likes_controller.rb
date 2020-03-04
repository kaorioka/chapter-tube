class LikesController < ApplicationController
  def index
  end

  def create
    @like = Like.create(chapter_id: like_params[:chapter_id], user_id: current_user.id)
    redirect_to movie_chapter_path(@like.chapter.movie,@like.chapter)
  end

  def destroy
    @like = Like.find_by(chapter_id: like_params[:chapter_id], user_id: current_user.id)
    @like.destroy
    redirect_to movie_chapter_path(@like.chapter.movie,@like.chapter)
  end

  private
  def like_params
    params.permit(:chapter_id)
  end
end
