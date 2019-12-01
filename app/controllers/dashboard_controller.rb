class DashboardController < ApplicationController

    def index
      @chapter = Chapter.all.order("RAND()").limit(9)
    end

end