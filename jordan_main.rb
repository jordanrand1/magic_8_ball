require_relative 'jordan_answers.rb'

running = true

@answers = Answers.new

while running
  puts "========== MAGIC 8 BALL ==========="
  puts "=   Enter your question below...  ="
  puts "=       or press q to quit        ="
  case gets.strip
    when 'q'
      running = false 
      puts "Bye."
    when 'add_answer'
      @answers.add_answer
    when 'reset_answers'
      @answers.reset_answers
    when 'print_answers'
      @answers.print_answers
    else
      puts @answers.my_answers.sample
  end
end