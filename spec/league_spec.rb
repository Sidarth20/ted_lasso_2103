require 'rspec'
require './lib/player'
require './lib/team'
require './lib/league'
require 'pry'

RSpec.describe League do
  it 'exists' do
    premier = League.new("Premier League")

    expect(premier).to be_instance_of(League)
  end

  it 'has a name' do
    premier = League.new("Premier League")

    expect(premier.name).to eq("Premier League")
  end

  it 'has teams' do
    premier = League.new("Premier League")

    expect(premier.teams).to eq([])
  end

  it 'adds teams' do
    premier = League.new("Premier League")

    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])

    expect(roy).to be_instance_of(Player)
    expect(sam).to be_instance_of(Player)
    expect(richmond).to be_instance_of(Team)

    expect(jamie).to be_instance_of(Player)
    expect(fernandinho).to be_instance_of(Player)
    expect(manchester).to be_instance_of(Team)

    premier.add_team(richmond)
    premier.add_team(manchester)

    expect(premier.teams).to eq([richmond, manchester])
  end

  it 'has captains' do
    premier = League.new("Premier League")

    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])

    premier.add_team(richmond)
    premier.add_team(manchester)

    expect(premier.captains).to eq([roy, fernandinho])
  end
end
