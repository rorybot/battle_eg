class Player

 attr_reader :name, :starting_points

  def initialize(name, points = 100)
    @name = name
    @starting_points = points.to_i
  end

  def attack
    @starting_points - 50
  end



  #
  # def change_name(name)
  #   $player1 = name
  # end

end
