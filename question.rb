#Question psuedo 
# Question needs to be read, needs a question with 2 random numbers and something to check an answer?
# Start by making a question class, have a reader for the quesiton/answer
# make 2 variables for random numbers? then put inside of question string, answer is num 1 + num 2.

class Question
  attr_reader :question, answer
  def initialize()
    ranNumber1 = rand(1..20)
    ranNumber2 = rand(1..20)
    @question = "What does #{ranNumber1} + #{ranNumber2} equal?"
    @answer = ranNumber1 + ranNumber2
  end
 end
 