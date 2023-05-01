# What does a player need?
# A player needs to have a name, lives and something to say what is their turn or not?
# We only need to read the player name and have access to change lives and turn status
# So total we need to access lives/turn, read name, then initalize a name with an @name, @lives and @turn

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
 