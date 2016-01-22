class Player < ApplicationRecord
  belongs_to :game
  belongs_to :city
  belongs_to :role

  serialize :cards

  before_create do
    self.cards ||= []
  end

  def actions
    4
  end

  def current?
    game.current_player == self
  end

  def image_url
    role.image_url
  end
end
