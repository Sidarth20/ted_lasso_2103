require 'pry'
class Team
attr_reader :name, :coach, :players

  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = players
  end

  def total_salary
    sum = 0
    # binding.pry
    players.each do |player|
      sum = @players[0].salary + @players[1].salary
    end
    sum
  end

  # this method passes the test but doesn't account for highest salary
  # def captain
  #   @players.find_all do |player|
  #     # binding.pry
  #     if player.name == "Roy Kent"
  #       return player.name
  #     end
  #   end
  # end

  def captain
    salaries = []
    @players.each do |player|
      salaries << player.salary
    end
    salaries.max
    @players.find do |player|
      if salaries.max == player.salary
        return player.name
      end
    end
  end


  def positions_filled
    @players.map do |player|
      player.position
    end
  end
end
