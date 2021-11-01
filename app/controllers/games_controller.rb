class GamesController < ApplicationController
  before_action :set_game, only: %i[ edit update]

  def edit
  end
  def update
    if @game.update(game_params)
      Notification.create(action: @game.action ,user: current_user)
      render json: {status => 200}
    end
  end
  private
    def set_game
      @game = Game.find(params[:id])
    end
    def game_params
      params.require(:game).permit(:home_team_name, :away_team_name, :home_team_logo, :away_team_logo, :minute, :date, :reach, :channel, :league, :price_per_minute, :action)
    end
end
