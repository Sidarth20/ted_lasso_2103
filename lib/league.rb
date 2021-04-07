require 'pry'
class League
  attr_reader :name, :teams

  def initialize(name)
    @name = name
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

  def captains
    #need to call captain method from Team class, can't figure out how
    # probably won't have enough time to finish, so I'm going to write out my logic
    #Need to call captain method from Team class to return the highest salary per player
    # per team. then, write another iteration to say if player.name == any of the players names
    # return an array of those instance variables
    players_array = @teams.map do |team|
      team.players
    end
      binding.pry
    salaries = []
    players_array.each do |player|
      salaries << player[0..1].salary
    end
    salaries.max
    @players.find do |player|
      if salaries.max == player.salary
        return player.name
      end
    end
  end
end
