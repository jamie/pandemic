class Deck < ApplicationRecord
  belongs_to :game
  
  serialize :draw
  serialize :discard

  before_create do
    self.draw ||= []
    self.discard ||= []
  end
end
