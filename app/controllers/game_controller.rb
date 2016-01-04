class GameController < ApplicationController
  def index
    render
  end

  def show
    @grid = City.all_by_grid
    @players = Player.all
    render
  end
end
