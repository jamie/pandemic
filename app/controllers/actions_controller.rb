class ActionsController < ApplicationController
  def create
    city = City.find(params[:city])
    Player.first.update_attributes(x: city.x, y: city.y)
    redirect_to :back
  end
end
