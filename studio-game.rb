require_relative "game.rb"

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
knuckleheads.play(3)