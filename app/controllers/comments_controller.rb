class CommentsController < ApplicationController
  def create
    comment = Comment.create(text: comment_params[:text], user_id: current_user.id, chapter_id: comment_params[:chapter_id])
    redirect_to movie_chapter_path(comment.chapter.movie.id,comment.chapter.id) + "#comment"
  end

  def destroy
  end

  def update
  end

  private
  def comment_params
    params.permit(:text, :chapter_id)
  end
end