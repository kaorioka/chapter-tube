class FavoritesController < ApplicationController

  def index
    rand = Rails.env.production? ? "RANDOM()" : "rand()"
    @chapter = Chapter.all.order(rand).limit(6)
  end
  
end
