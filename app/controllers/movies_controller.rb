class MoviesController < ApplicationController


  def index
    @chapters = Chapter.all.first(50)
  end

  def show
  end


end
