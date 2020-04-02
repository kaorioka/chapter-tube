class DashboardController < ApplicationController

    def index
      rand = Rails.env.production? ? "RANDOM()" : "rand()"
      @chapters = Chapter.all.order(rand).limit(21)
    end

  end