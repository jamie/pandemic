class Deck < ApplicationRecord
  belongs_to :game
  
  serialize :draw
  serialize :discard

  before_create do
    self.draw ||= []
    self.discard ||= []
  end

  def draw!
    card_id = draw.shift
    save
    Card.find(card_id)
  end

  def discard!(card)
    discard.unshift(card.id).tap { save }
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
