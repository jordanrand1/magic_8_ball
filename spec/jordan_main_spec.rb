require 'spec_helper'
require_relative '../jordan_answers.rb'

describe Answers do
  before(:each) do
    @answer = Answers.new
  end

  it 'adds user input to answers' do
    expected = @answer.my_answers.length + 1
    actual = @answer.add_answer('test')
    expect(actual.length).to eq(expected)
  end

  it 're-sets array to default' do
    @answer.add_answer('Test')
    expected = @answer.default_answers
    @answer.reset_answers
    actual = @answer.my_answers
    expect(actual).to eq(expected)
  end

  it 'prints the answers' do
    expected = puts @answer.my_answers
    expect {@answer.print_answers}.to output(expected).to_stdout
  end

end
