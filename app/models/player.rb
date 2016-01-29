class Player < ApplicationRecord
  belongs_to :game
  belongs_to :city
  belongs_to :role

  serialize :card_ids

  before_create do
    self.card_ids ||= []
  end

  def cards
    card_ids.map{|id| Card.find(id) }
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

  def draw!(card)
    self.card_ids.push(card.id)
    # Temoprary. This should involve player interaction.
    discard! while self.card_ids.size > 7
    save
  end

  def discard!
    # TODO: Place card in player deck's discard pile
    # TODO: Human player chooses card
    self.card_ids.shift
  end

  def has_city_card?(city)
    cards.map(&:name).include? city.name
  end

  def travel_to(city)
    if can_drive?(city)
      # Drive/Ferry
      self.city = city
    elsif has_city_card?(city)
      # Fly in
      self.card_ids.delete(city.player_card.id)
      self.city = city
    elsif has_city_card?(self.city)
      # Fly out
      self.card_ids.delete(self.city.player_card.id)
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
