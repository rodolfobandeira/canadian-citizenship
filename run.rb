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
  key_pressed = gets
  break if key_pressed.chomp == 'q'

  puts answers[correct_answer[-1].to_i].blue
  key_pressed = gets
  break if key_pressed.chomp == 'q'

  puts '-' * 79
end
