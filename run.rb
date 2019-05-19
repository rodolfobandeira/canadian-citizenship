require 'byebug'
require 'colorize'

file = File.read('questions.txt')
questions = file.split("\n\n").shuffle

questions.each do |question|
  data = question.split("\n")
  answers = data[1..(data.size - 2)]
  correct_answer = data.last

  puts "Question: #{data.first}".yellow
  puts ''
  puts answers
  gets
  puts answers[correct_answer[-1].to_i].blue
  key_pressed = gets
  break if key_pressed == "q\n"

  puts '-' * 79
end


byebug

puts file
#You can vote in advance if:
#You know you will not be able to vote on Election Day
#Sick and physically disabled
#All of the above
#You are elderly
#Answer: 2
