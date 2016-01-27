class ActionsController < ApplicationController
  def create
    game = Game.find(params[:game_id])
    city = City.find(params[:city])
    player = game.current_player
    if player.can_travel? city
      player.travel_to(city)
      game.act!
    elsif player.city == city
      game.treat!(city)
    end
    redirect_back fallback_location: game_path(game)
  end
end
