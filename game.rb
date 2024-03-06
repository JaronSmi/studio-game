require_relative "player.rb"
require_relative "game_turn.rb"
require_relative "die.rb"

class Game
    attr_reader :title
    attr_accessor :players
    def initialize(title="")
      @title = title
      @players = []
      puts "WELCOME TO #{@title.upcase}"
      puts "".ljust(50,"-")
    end
  
    def add_player(p)
      @players.push(p)
      puts p   
    end
  
    def play(rounds)
      puts "There are #{@players.size} players in #{@title}: "
      1.upto(rounds) do |round|
        puts "\nRound # #{round}:"
        @players.each do |player|
          GameTurn.take_turn(player)
          puts player
        end
      end
    end
  end

  if __FILE__ == $0
    game = Game.new("GAMES")

    game.add_player(Player.new("Tom", 30))
    game.add_player(Player.new("Sam", 34))

    game.play(2)
  end