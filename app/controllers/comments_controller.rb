class CommentsController < ApplicationController
  def create
    Comment.create(text: comment_params[:text], user_id: current_user.id, chapter_id: comment_params[:tweet_id])
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

