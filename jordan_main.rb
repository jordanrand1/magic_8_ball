require_relative 'jordan_answers.rb'

running = true

while running
  puts "========= MAGIC 8 BALL =========="
  puts "   Enter your question below...  "
  puts "       or press q to quit        "
  if gets.strip == 'q' 
    running = false 
    puts "Bye."
  else
    answers = Answers.new
    puts answers.my_answers.sample
  end
end