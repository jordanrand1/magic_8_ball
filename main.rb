require_relative 'answers.rb'
require 'pry'

def greetings
  puts "\n\n\n\tGreetings!!\n\n"
  puts "This is a magic eight ball -\n\n"
  puts "Ask me a question.  Good ahead . . ."
  print "---------------------------------------\n"
  @initial_run = false
  get_answer
end

def try_again
  puts "\nTry again?? ('Quit' to exit)\n"
  #puts "\n\n\n\tOkay.  Good ahead.  Ask me another . . ."
  print "---------------------------------------\n"
  get_answer
end
  
def ball_response    
  print "\n#{@question}???"
  puts "\t\t#{@response.sample.upcase}"
  try_again
end

def get_answer
  @question = gets.strip.capitalize
  if @question == "Quit"
    exit
  end
  ball_response
end


#until @question == 'Quit'
  @initial_run = false ? try_again : greetings
  

#end






