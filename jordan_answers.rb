class Answers
  attr_accessor :my_answers, :default_answers

  def initialize
    @my_answers = [
      "It is certain.",
      "It is decidedly so.",
      "Without a doubt.", 
      "Yes - definitely.", 
      "You may rely on it.", 
      "As I see it, yes.", 
      "Most likely.", 
      "Outlook good.", 
      "Yes.", 
      "Signs point to yes.", 
      "Reply hazy, try again", 
      "Ask again later.", 
      "Better not tell you now.", 
      "Cannot predict now.", 
      "Concentrate and ask again.", 
      "Don't count on it.", 
      "My reply is no.", 
      "My sources say no", 
      "Outlook not so good.", 
      "Very doubtful."
    ]

    @default_answers = @my_answers.clone
  end

  def add_answer(new_answer)
    puts "********* ADD AN ANSWER ***********"
    @my_answers << new_answer
  end
  
  def reset_answers
    @my_answers = @default_answers
  end
  
  def print_answers
    puts @my_answers
  end

end