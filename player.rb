class Player
  attr_accessor :lives # allows read and change of lives
  attr_reader :name # reads name
   def initialize(name) # initalize name
    # setting values
    @name = name
    @lives = 3
  end

  def loseLife # func for losing a life when answer is wrong
    @lives -= 1
  end 

end
 