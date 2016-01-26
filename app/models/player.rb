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

  def draw!(card_id)
    self.cards.push(card_id)
    # Temoprary. This should involve player interaction.
    while self.cards.size > 7
      self.cards.shift
    end
    save
  end

  def can_travel?(city)
    return false if city == self.city
    return true if self.city.connected?(city)
    city_cards = Card.find(cards)
    return true if city_cards.map(&:name).include? self.city.name
    return true if city_cards.map(&:name).include? city.name
    false
  end
end
