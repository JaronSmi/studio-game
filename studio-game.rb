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

#body
player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

players = [player1, player2, player3]

puts "There are #{players.length} players in the game."

players.each do |p|
  puts p
end

players.each do |p|
  puts p.health  
end

players.each do |p|
  p.blam
  p.w00t
  p.blam
  p.blam
  puts p  
end

players.pop
players.push(Player.new("shemp", 90))
puts "\n\n"
puts players