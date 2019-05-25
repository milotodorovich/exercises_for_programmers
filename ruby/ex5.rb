puts "What is the first number?"
num1 = gets.chomp

puts "What is the second number?"
num2 = gets.chomp

Calculator = Struct.new(:n1, :n2) do
  def sum
    n1 + n2
  end

  def difference
    n1 - n2
  end

  def product
    n1 * n2
  end

  def dividend
    n1 / n2
  end
end

c = Calculator.new(Integer(num1), Integer(num2))

puts "#{c.n1} + #{c.n2} = #{c.sum}"
puts "#{c.n1} - #{c.n2} = #{c.difference}"
puts "#{c.n1} * #{c.n2} = #{c.product}"
puts "#{c.n1} / #{c.n2} = #{c.dividend}"
