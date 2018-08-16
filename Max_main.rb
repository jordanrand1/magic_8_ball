#greeting from program
#input from user 
#computer chooses from array of answeres in answers.rb
#can loop 
#exits loop, via a exit command
require_relative 'Max_answers.rb'
require "colorize"
def menu
  puts "*****************************************\t"
  puts "\tthis is a magic eight ball\t\n".colorize:red
  puts "\task me a question\t".colorize:red
  puts "*****************************************\t"
  print 'Question --->>>'.colorize:red
  @question = gets.strip
  if @question == "exit"
    exit(0)
  else 
    puts @response.sample
  end
end 

while true
  menu
end



