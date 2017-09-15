class Player

 attr_reader :name, :starting_points

  def initialize(name, points = 100)
    @name = name
    @starting_points = points.to_i
  end

  def attack(attack_value)
   @starting_points -= attack_value.to_i
  end



  #
  # def change_name(name)
  #   $player1 = name
  # end

end
