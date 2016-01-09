class Game < ApplicationRecord
  has_many :players
  has_many :viri

  belongs_to :current_player, class_name: "Player"

  def start!
    self.current_player = players.first
    self.current_action = 1
    save
  end

  def act!
    self.current_action += 1
    if current_action > current_player.actions
      infect!
      self.current_action = 1
      players = self.players.to_a
      self.current_player = players[(players.index(current_player) + 1) % players.count]
    end
    save
  end

  def infect!
    2.times do
      city = City.all.to_a[rand(City.count)]
      viri.create(city: city, color: city.color)
    end
  end

  def treat!(city)
    return nil if viri.where(city: city).none?
    viri.where(city: city).first.destroy
    act!
  end
end
