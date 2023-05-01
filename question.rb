class Question
  attr_reader :question, answer # reads our question and answer
  def initialize()
    ranNumber1 = rand(1..20) # random number with the specified range of 1 to 20 for the assignment
    ranNumber2 = rand(1..20)
    @question = "What does #{ranNumber1} + #{ranNumber2} equal?" # question with random numbers incorporated
    @answer = ranNumber1 + ranNumber2 # saves our answer for each question 
  end
 end
 