class Virus < ApplicationRecord
  belongs_to :game
  belongs_to :city
end
