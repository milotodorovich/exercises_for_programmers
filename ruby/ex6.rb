puts "What is your age?"
age = gets.chomp

puts "At what age would you retire?"
desired = gets.chomp

year = Time.now.year

puts "It's #{year}, so you can retire in #{year + Integer(desired) - Integer(age)}."
