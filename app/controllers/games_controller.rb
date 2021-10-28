class GamesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_game, only: %i[ edit update]

  def edit
  end
  def update
    if @game.update(game_params)
      render json: {status => 200}
    end
  end
  private
    def set_game
      @game = Game.find(params[:id])
    end
    def game_params
      params.require(:game).permit(:home_team_name, :away_team_name, :home_team_logo, :away_team_logo, :minute, :date, :reach, :channel, :league, :price_per_minute)
    end
end
