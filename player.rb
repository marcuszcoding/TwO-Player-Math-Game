class Player
  attr_reader :name, :lives # reads name
   def initialize(name) # initalize name
    # setting values
    @name = name
    @lives = 3
  end

  def loseLife # func for losing a life when answer is wrong
    @lives -= 1
  end 

end
 