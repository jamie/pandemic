class ActionsController < ApplicationController
  def create
    city = City.find(params[:city])
    Player.first.update_attributes(city: city)
    redirect_to :back
  end
end
