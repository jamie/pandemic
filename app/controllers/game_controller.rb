class GameController < ApplicationController
  def index
    render
  end

  def show
    @grid = City.all_by_grid
    @players = [
      OpenStruct.new(x: 0, y: 2, role: 'Scientist'),
      OpenStruct.new(x: 0, y: 2, role: 'Medic'),
      OpenStruct.new(x: 0, y: 2, role: 'Dispatcher'),
    ]
    render
  end
end
