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
    player_deck.shuffle!
    infection_deck.shuffle!

    3.downto(1) do |virus_count|
      3.times do
        card = infection_deck.draw!
        city = City.find_by_name(card.name)
        virus_count.times { viri.create(city: city, color: city.color) }
        infection_deck.discard!(card)
      end
    end

    self.current_player = players.first
    self.current_action = 1
    players.each do |player|
      player.draw!(player_deck.draw!)
      player.draw!(player_deck.draw!)
    end
    save
  end

  def act!
    self.current_action += 1
    end_of_turn! if current_action > current_player.actions
    save
  end

  def end_of_turn!
    draw!
    infect!
    self.current_action = 1
    players = self.players.to_a
    self.current_player = players[(players.index(current_player) + 1) % players.count]
  end

  def draw!
    current_player.draw!(player_deck.draw!)
    current_player.draw!(player_deck.draw!)
  end

  def infect!
    2.times do
      card = infection_deck.draw!
      city = City.find_by_name(card.name)
      viri.create(city: city, color: city.color)
      infection_deck.discard!(card)
    end
  end

  def treat!(city)
    return nil if viri.where(city: city).none?
    viri.where(city: city).first.destroy
    act!
  end
end
