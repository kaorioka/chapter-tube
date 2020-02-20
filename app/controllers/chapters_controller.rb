class ChaptersController < ApplicationController
  
  def index

  end

  def show
    @chapter = Chapter.find(params[:id])
    @chapters = Chapter.where(movie_id: @chapter.movie)
    @comments = @chapter.comments.includes(:user).order(created_at: "DESC")
  end

end
