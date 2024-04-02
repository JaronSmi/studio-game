require_relative "player.rb"
require_relative "die.rb"
require_relative "treasure_trove.rb"

module GameTurn
  def self.take_turn(player)
    die = Die.new
    # die = LoadedDie.new
    case die.roll
    when 1..2
      player.blam
    when 3..4
      puts "#{player.name} was skipped."
    else
      player.w00t
    end
    
    treasure = TreasureTrove.random
    player.found_treasure(treasure)
  end
end
