class DashboardController < ApplicationController

    def index
      @chapter = Chapter.all.order("RAND()").limit(15)
    end

  end