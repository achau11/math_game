#This class creates a new Question with random numbers

class Question
  attr_accessor :num1, :num2, :str

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @str = "What does #{@num1} plus #{@num2} equal?"
  end

end