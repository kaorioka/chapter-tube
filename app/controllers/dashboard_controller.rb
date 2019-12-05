class DashboardController < ApplicationController

    def index
      rand = Rails.env.production? ? "RANDOM()" : "rand()"
      @chapter = Chapter.all.order(rand).limit(15)
    end

  end