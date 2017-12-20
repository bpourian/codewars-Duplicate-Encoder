=begin
Once upon a time, on a way through the old wild west,…

… a man was given directions to go from one point to another.
The directions were "NORTH", "SOUTH", "WEST", "EAST".
Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too. Going to one
direction and coming back the opposite direction is a needless effort. Since
this is the wild west, with dreadfull weather and not much water, it's important
to save yourself some energy, otherwise you might die of thirst!

How I crossed the desert the smart way.

The directions given to the man are, for example, the following:

["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].

=end

def dirReduc(arr)

  sorted_array = Hash.new(0)
  arr.each_with_object(Hash.new(0)) {|direction,count| sorted_array[direction] += 1}

  good_direction = []
  sorted_array["NORTH"] > sorted_array["SOUTH"] ? good_direction << "NORTH" : (sorted_array["SOUTH"] > sorted_array["NORTH"] ? good_direction << "SOUTH" : good_direction)
  sorted_array["WEST"] > sorted_array["EAST"] ? good_direction << "WEST" : (sorted_array["EAST"] > sorted_array["WEST"] ? good_direction << "EAST" : good_direction)

end

puts dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])
