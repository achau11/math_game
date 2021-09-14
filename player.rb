#This class creates a player with 3 health.

class Player
  attr_accessor :life, :name

  def initialize(name)
    @life = 3
    @name = name
  end

  def reduce_life
    @life -= 1
  end

end