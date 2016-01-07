class GamesController < ApplicationController
  def index
    render
  end

  def show
    @grid = City.all_by_grid
    @game = Game.first
    @players = @game.players.all
    render
  end
end
