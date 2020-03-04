class MoviesController < ApplicationController


  def index
    rand = Rails.env.production? ? "RANDOM()" : "rand()"
    @chapters = Chapter.all.limit(50)
  end

  def show
  end


end
