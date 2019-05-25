puts "What is your input?"
input = gets.chomp

if input == ""
  puts "You need to input something."
else
  puts "#{input} has #{input.length} characters."
end
