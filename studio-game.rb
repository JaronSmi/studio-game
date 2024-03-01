class Player
    attr_reader :health
    attr_accessor :name
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def score
    @name.length + @health
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end
end

class Game
  attr_reader :title
  attr_accessor :players
  def initialize(title="")
    @title = title
    @players = []
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

#Game intro
puts "WELCOME!\n\n"
#instantiate players
player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
#instantiate game
knuckleheads = Game.new("Knuckleheads")

#add players to game
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
puts "".ljust(50,"-")
#play game
knuckleheads.play