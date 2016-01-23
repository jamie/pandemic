class Deck < ApplicationRecord
  belongs_to :game
  
  serialize :draw
  serialize :discard

  before_create do
    self.draw ||= []
    self.discard ||= []
  end

  def draw!
    draw.shift.tap{ save }
  end

  def discard!(card_id)
    discard.unshift(card_id).tap { save }
  end

  def shuffle!
    self.draw = self.draw.shuffle
    save
  end

  def shuffle_discards!
    self.discard = self.discard.shuffle
    save
  end
end
