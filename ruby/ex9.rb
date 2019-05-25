puts "What is the length?"
input_length = gets.chomp

puts "What is the width?"
input_width = gets.chomp

Calculator = Struct.new(:length, :width) do
  SQUARE_FEET_PER_GALLON = 350.to_f

  def area
    length * width
  end

  def gallons
    (area / SQUARE_FEET_PER_GALLON).ceil
  end
end

c = Calculator.new(Integer(input_length), Integer(input_width))

puts "You need #{c.gallons} gallons to cover #{c.area} square feet."
