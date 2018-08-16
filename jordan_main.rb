require_relative 'jordan_answers.rb'

def add_answer
  puts "********* ADD AN ANSWER ***********"
  new_answer = gets.strip
  if @answers.my_answers.each != new_answer
    @answers.my_answers << new_answer
  else
    puts "Answer already added. Try again."
    add_answer
  end
end

def reset_answers
  @answers.my_answers = @default_answers
end

def print_answers
  puts @answers.my_answers
end

running = true

@answers = Answers.new

@default_answers = @answers.my_answers.clone

while running
  puts "========== MAGIC 8 BALL ==========="
  puts "=   Enter your question below...  ="
  puts "=       or press q to quit        ="
  case gets.strip
    when 'q'
      running = false 
      puts "Bye."
    when 'add_answer'
      add_answer
    when 'reset_answers'
      reset_answers
    when 'print_answers'
      print_answers
    else
      puts @answers.my_answers.sample
  end
end