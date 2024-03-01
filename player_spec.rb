require_relative 'player'

describe Player do

    #examples
    it "has a capitalized name" do
        player = Player.new("larry", 150)

        player.name.should == "Larry"
    end

    it "has an initial health" do
        player = Player.new("larry", 150)
        player.health.should == 150
    end

    it "has a string representation" do
        player = Player.new("larry", 150)
        player.to_s.should == "I'm Larry with a health of 150 and a score of 155"
    end

    it "computes a score as the sum of its health and length of name" do
        player = Player.new("larry", 150)

        player.score.should == (150 + 5)
    end

    it "increases health by 15 when w00ted" do
        initial_health = 150
        player = Player.new("larry", initial_health)
        player.w00t
      
        player.health.should == initial_health + 15
    end

    it "decreases health by 10 when blammed" do
        initial_health = 150
        player = Player.new("larry", initial_health)
        player.blam

        player.health.should == initial_health - 10
    end
end