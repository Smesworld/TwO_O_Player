class Question
  def initialize
    @number_one = get_random_number
    @number_two = get_random_number
  end

  def get_random_number
    rand(20) + 1
  end

  def ask
    "What does #{@number_one} plus #{@number_two} equal?"
  end

  def answer?(answer)
    answer.to_i == @number_one + @number_two
  end
end