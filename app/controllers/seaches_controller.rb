class SeachesController < ApplicationController

  def index
    rand = Rails.env.production? ? "RANDOM()" : "rand()"
    @chapters = Chapter.all.order(rand).limit(6)
  end
  
end
