class CommentsController < ApplicationController
  def create
    chapter = Chapter.find(comment_params[:chapter_id])
    Comment.create(text: comment_params[:text], user_id: current_user.id, chapter_id: chapter.id)
    redirect_to movie_chapter_path(chapter.movie.id,chapter.id)
  end

  def destroy
  end

  def update
  end

  private
  def comments_params
    params.parmit(:text, :chapter_id)
  end
end