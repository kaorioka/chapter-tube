class ChaptersController < ApplicationController
  
  def index
  end

  def show
    @chapter = Chapter.find(params[:id])
    @chapters = Chapter.find(params[:movie_id])
  end

end
