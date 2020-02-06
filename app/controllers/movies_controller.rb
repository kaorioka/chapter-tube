class MoviesController < ApplicationController


  def index
    @chapters = Chapter.all 
  end

  def show
  end


end
