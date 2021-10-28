class PublicController < ApplicationController
  def index
    @games = Game.all
    @total_minutes = @games.sum(:minute)
  end
end