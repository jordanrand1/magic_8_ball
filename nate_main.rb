# Basic Objectives:

# - User inputs question
# - Computer outputs random answer
# - User inputs "QUIT"
# - Computer outputs a goodbye message and exits
# - ability to add more answers:
# - via easter egg question ("add_answers")
# - do not let them add the same answer if the eight ball 
  #already has that answer
# - ability to reset answers back to the original bank 
  #(hint: think arr.clone)
# - via easter egg question ("reset_answers")
# - ability to have eight ball print all answers
# - via easter egg question ("print_answers")


require_relative 'questions.rb'
require_relative 'answers.rb'

@response = []#dont need this here
@question

def print_menu
  puts "Welcome to the Magic 8 Ball (patent pending)"
  puts "Ask me a question or type 'quit' to exit program"
  puts ">>"
  @question = gets.strip
end

def chump
  if @question == "quit"
    exit
  else
    puts @response.sample
    #print_menu?
  end
end

while true
  print_menu
  chump
end