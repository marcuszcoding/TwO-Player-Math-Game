class Player
  attr_accessor :lives, :turn # allows read and change of lives/turn
  attr_reader :name # reads name
   def initialize(name) # initalize name
    # setting values
    @name = name
    @lives = 3
    @turn = false
  end
 end
 