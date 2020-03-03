class LikesController < ApplicationController
  def index
  end

  def create
    Like.create(chapter_id: like_params[:chapter_id], user_id: current_user.id)
    redirect_to movies_path
  end

  private
  def like_params
    params.permit(:chapter_id)
  end
end
