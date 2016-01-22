class Game < ApplicationRecord
  has_many :players
  has_many :viri
  has_many :decks

  belongs_to :current_player, class_name: "Player"

  def player_deck
    decks.where(name: "Player").first
  end

  def infection_deck
    decks.where(name: "Infection").first
  end

  def start!
    self.current_player = players.first
    self.current_action = 1
    save
  end

  def act!
    self.current_action += 1
    end_of_turn! if current_action > current_player.actions
    save
  end

  def end_of_turn!
    infect!
    self.current_action = 1
    players = self.players.to_a
    self.current_player = players[(players.index(current_player) + 1) % players.count]
  end

  def infect!
    2.times do
      city_id = infection_deck.draw!
      city = City.find(city_id)
      viri.create(city: city, color: city.color)
      infection_deck.discard!(city_id)
    end
  end

  def treat!(city)
    return nil if viri.where(city: city).none?
    viri.where(city: city).first.destroy
    act!
  end
end
