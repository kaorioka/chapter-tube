class UsersController < ApplicationController

  def index
    @chapter = Chapter.all.order("RAND()").limit(6)
  end
  
end
