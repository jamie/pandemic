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

  def has_city_card?(city)
    city_cards = Card.find(cards)
    city_cards.map(&:name).include? city.name
  end

  def travel_to(city)
    if can_drive?(city)
      # Drive/Ferry
      self.city = city
    elsif has_city_card?(city)
      # Fly in
      self.cards.delete(city.player_card.id)
      self.city = city
    elsif has_city_card?(self.city)
      # Fly out
      self.cards.delete(self.city.player_card.id)
      self.city = city
    end
    save
  end

  def can_drive?(city)
    return false if city == self.city
    return true if self.city.connected?(city)
  end

  def can_travel?(city)
    return true if can_drive?(city)
    return true if has_city_card?(self.city)
    return true if has_city_card?(city)
    false
  end
end
