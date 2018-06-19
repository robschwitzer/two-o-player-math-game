class Question

OPERATOR = %w[+ - *].sample

  attr_accessor :question, :correct_answer

  def initialize
    @num1     = Random.rand(1...100)
    @num2     = Random.rand(1...100)
    @question = @num1.to_s + OPERATOR + @num2.to_s
    @correct_answer   = eval(@question)
  end

  def question
    puts "What is #{@question}?"
    # puts "expecting #{@correct_answer}"
  end

  def answer
    input = gets.chomp.to_i
  end

end