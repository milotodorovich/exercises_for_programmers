def greet(n)
  "Hello, #{n}, nice to meet you!"
end
puts "What is your name?"
name = gets.chomp

puts greet(name)
