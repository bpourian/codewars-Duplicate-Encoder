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
  #... your code ...
end

counts = Hash.new(0)

directions = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]


directions.each_with_object(Hash.new(0)) {|direction,count| counts[direction] += 1}

list_final = []

counts["NORTH"] > counts["SOUTH"] ? list_final << "NORTH" : (counts["SOUTH"] > counts["NORTH"] ? list_final << "SOUTH" : list_final)
counts["WEST"] > counts["EAST"] ? list_final << "WEST" : (counts["EAST"] > counts["WEST"] ? list_final << "EAST" : list_final)

print list_final
