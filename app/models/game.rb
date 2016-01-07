class Game < ApplicationRecord
  has_many :players
  belongs_to :current_player, class_name: "Player"

  def start!
    self.current_player = players.first
    self.current_action = 1
    save
  end

  def act!
    self.current_action += 1
    if current_action > current_player.actions
      self.current_action = 1
      players = self.players.to_a
      self.current_player = players[(players.index(current_player) + 1) % players.count]
    end
    save
  end
end
