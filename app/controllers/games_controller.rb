class GamesController < ApplicationController
  def index
    render
  end

  def show
    @grid = City.all_by_grid
    @game = Game.find(params[:id])
    @players = @game.players.all
    render
  end
end
