class GameController < ApplicationController
  def index
    render
  end

  def show
    @map = City.all_by_grid
    render
  end
end
