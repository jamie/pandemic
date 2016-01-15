require 'pp'

class Simulator
  attr_reader :seen

  RATE = [2, 2, 2, 3, 3, 4, 4]

  def initialize(players: 4, epidemics: 4)
    @infection_deck = (1..48).to_a.shuffle
    @infection_discard = []
    @infection_rate = 0
    
    # Initial deck
    @player_deck = (1..48).to_a
    # Add events
    players.times { @player_deck << :event }
    # Shuffle, deal
    @player_deck = @player_deck.shuffle
    players.times { @player_deck.shift; @player_deck.shift }
    # Partition, add epidemics
    n = (@player_deck.size / epidemics.to_f).ceil
    stacks = @player_deck.each_slice(n).to_a
    stacks.map!{|stack| (stack + [:epidemic]).shuffle}
    @player_deck = stacks.flatten

    # Initial epidemics
    @seen = Hash.new { 0 }
    9.times { infect! }
  end

  def run
    while !@player_deck.empty?
      draw!
      draw!
      infect!
    end
  end

  def draw!
    card = @player_deck.shift
    epidemic! if card == :epidemic
  end

  def infect!
    RATE[@infection_rate].times do
      @infection_discard << @infection_deck.shift
      @seen[@infection_discard.last] += 1
    end
  end

  def epidemic!
    # Inrease
    @infection_rate += 1
    # Infect
    @infection_discard << @infection_deck.pop
    @seen[@infection_discard.last] += 1
    # Intensify
    @infection_deck = @infection_discard.shuffle + @infection_deck
    @infection_discard = []
  end
end

require './lib/scripts/histogram'

depths = []
N=20_000
N.times do 
  Simulator.new(epidemics: 6).tap do |sim|
    sim.run
    depths << sim.seen.keys.size
  end
end

range = depths.min..depths.max
depths.histogram(range.to_a).transpose.each do |value, count|
  size = N/range.size
  puts "%2d %s" % [value, "#" * (count*40/size).to_i]
end

