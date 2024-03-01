require_relative "player.rb"

class Game
    attr_reader :title
    attr_accessor :players
    def initialize(title="")
      @title = title
      @players = []
      puts "WELCOME TO #{@title.upcase}\n"
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
        puts p
        puts "".ljust(50,"-")  
      end
    end
  end