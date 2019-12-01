class ChaptersController < ApplicationController
  
  before_action :set_movie

  def show
    @chapter = Chapter.find(params[:id])
    # @chapters = Movie.chapters.find(params[:movie_id])
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end

end
