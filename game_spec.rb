require_relative "game.rb"

describe Game do

  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "w00ts a player when high number rolled" do
    Die.any_instance.stub(:roll).and_return(5)

    @game.play (3)

    @player.health.should == @initial_health + (15 * 3)
  end

  it "skips a player when medium number rolled" do
    Die.any_instance.stub(:roll).and_return(3)

    @game.play(3)

    @player.health.should == @initial_health
  end

  it "blams a player when low number rolled" do
    Die.any_instance.stub(:roll).and_return(1)

    @game.play(3)

    @player.health.should == @initial_health - (10 * 3)
  end
end