class ChaptersController < ApplicationController
  
  def index
  end

  def show
    @chapter = Chapter.find(params[:id])
    @chapters = Chapter.where(movie_id: @chapter.movie)
  end

end
