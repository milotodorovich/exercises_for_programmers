Item = Struct.new(:price, :quantity) do
  def subtotal
    price * quantity
  end
end

Cart = Struct.new(:items) do
  def add_item(item)
    items << item
  end

  def subtotal
    items.map(&:subtotal).sum
  end

  def tax
    subtotal * 0.055
  end

  def total
    subtotal + tax
  end
end

cart = Cart.new([])

count = 1

puts "Enter the price of item #{count}:"
input_price = gets.chomp

puts "Enter the quantity of item #{count}:"
input_quantity = gets.chomp

item = Item.new(Float(input_price), Integer(input_quantity))

cart.add_item(item)

puts "Subtotal: #{cart.subtotal}"
puts "Tax: #{cart.tax}"
puts "Total: #{cart.total}"
