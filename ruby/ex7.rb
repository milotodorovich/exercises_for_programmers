puts "What is the length of the room in feet?"
input_length = gets.chomp

puts "What is the width of the room in feet?"
input_width = gets.chomp

Room = Struct.new(:length, :width) do
  SQUARE_FEET_TO_METERS = 0.0929
  def area
    length * width
  end

  def area_metric
    area * SQUARE_FEET_TO_METERS
  end

end

room = Room.new(Integer(input_length), Integer(input_width))

RoomFormatter = Struct.new(:room) do
  def to_s
    puts %Q(
The area is
  #{room.area} square feet
  #{room.area_metric} square meters.
    )
  end
end

puts RoomFormatter.new(room)
