class City < ApplicationRecord
  def self.all_by_grid
    empty = (0...12).to_a.map{ [nil] * 8 }
    all.inject(empty) do |grid, city|
      grid[city.y][city.x] = city
      grid
    end
  end

  def connected?(other)
    connections.split(",").include? other.name
  end
end
