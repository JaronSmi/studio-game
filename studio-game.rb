require_relative "game.rb"

#instantiate players
player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
#instantiate game
knuckleheads = Game.new("Knuckleheads")

#add players to game
# knuckleheads.add_player(player1)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player3)
knuckleheads.load_players("players.csv")

puts "".ljust(50,"-")
#play game
loop do
    puts "\nHow many game rounds? ('quit' to exit)"
    answer = gets.chomp.downcase
    case answer
    when /^\d+$/
        knuckleheads.play(answer.to_i)
    when "quit", "exit"
        knuckleheads.print_stats
        break
    else
        puts "Please enter a number or 'quit'."
    end
end