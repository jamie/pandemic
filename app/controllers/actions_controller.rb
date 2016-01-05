class ActionsController < ApplicationController
  def create
    city = City.find(params[:city])
    player = Player.first
    if player.city.connected? city
      player.update_attributes(city: city)
    end
    redirect_to :back
  end
end
