require_relative "player.rb"
require_relative "game_turn.rb"
require_relative "treasure_trove.rb"

module StudioGame

  class Game
      attr_reader :title
      attr_accessor :players
      def initialize(title="")
        @title = title
        @players = []
        puts "WELCOME TO #{@title.upcase}"
        puts "".ljust(50,"-")
      end

      def load_players(from_file)
        File.readlines(from_file).each do |line|
          add_player(Player.from_csv(line))
        end
      end
    
      def add_player(p)
        @players.push(p)
        puts p   
      end

      def total_points
        @players.reduce(0) { |sum, player| sum + player.points }
      end
    
      def play(rounds)
        print_treasure_trove

        puts "\nThere are #{@players.size} players in #{@title}: "
        @players.each do |player|
          print_name_and_health(player)
        end

        1.upto(rounds) do |round|
          puts "\nRound # #{round}:"
          @players.each do |player|
            GameTurn.take_turn(player)
            puts player
          end
        end
      end

      def print_treasure_trove
        treasures = TreasureTrove::TREASURES
        puts "There are #{treasures.length} treasures to be found:"
        treasures.each do |t|
          puts "A #{t.name} is worth #{t.points}"
        end
      end

      def print_name_and_health(player)
        puts "#{player.name} (#{player.health})"
      end

      def high_score_entry(player)
        formatted_name = player.name.ljust(20, '.') 
        "#{formatted_name}" + "#{player.score}"
      end

      def print_stats
        strong_players, weak_players = @players.partition {|p| p.strong?}
      
        puts "\n#{@title} Statistics:"

        puts "Strong players:\n"
        strong_players.each do |player|
          print_name_and_health(player)
        end

        puts "Weak players:\n"
        weak_players.each do |player|
          print_name_and_health(player)
        end

        @players.sort.each do |player|
          puts "\n#{player.name}'s point totals:"
          player.each_found_treasure do |treasure|
            puts "#{treasure.points} total #{treasure.name} points"
          end
          puts "#{player.points} grand total points"
        end

        puts "\n#{@title} High Scores:"
        @players.sort.each do |player|
          puts high_score_entry(player)
        end
      end

      def save_high_scores(to_file="high_scores.txt")
        File.open(to_file, "w") do |file|
          file.puts "#{@title} High Scores:"
          @players.sort.each do |player|
            file.puts high_score_entry(player)
          end
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