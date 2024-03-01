require_relative "player.rb"

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
  
    def play
      @players.each do |p|
        p.blam
        p.w00t
        p.blam
        p.blam
        puts "\n"
        puts p
        puts "".ljust(50,"-")  
      end
    end
  end

  if __FILE__ == $0
    game = Game.new("GAMES")

    game.add_player(Player.new("Tom", 30))
    game.add_player(Player.new("Sam", 34))

    game.play
  end