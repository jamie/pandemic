class ActionsController < ApplicationController
  def create
    game = Game.find(params[:game_id])
    city = City.find(params[:city])
    player = game.current_player
    if player.city.connected? city
      player.update_attributes(city: city)
      game.act!
    end
    redirect_back fallback_location: game_path(game)
  end
end
