class Player < ApplicationRecord
  belongs_to :game
  belongs_to :city
  belongs_to :role

  def actions
    4
  end

  def current?
    game.current_player == self
  end
end
