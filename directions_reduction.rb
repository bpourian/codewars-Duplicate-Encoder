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

#used sorting method similar to a bubbles sort
def dirReduc(arr)
  for num in (0..arr.length - 1)
    for num in (0..arr.length - 1)
      #if the two indexes num and num+1 equal to EAST and WEST or vice versa then delete
      if arr[num] == 'WEST' && arr[num + 1] == 'EAST' || arr[num] == 'EAST' && arr[num + 1] == 'WEST'
        arr.delete_at(num + 1)
        arr.delete_at(num)
      #if the two indexes num and num+1 equal to NORTH and SOUTH or vice versa then delete
      elsif arr[num] == 'NORTH' && arr[num + 1] == 'SOUTH' || arr[num] == 'SOUTH' && arr[num + 1] == 'NORTH'
        arr.delete_at(num + 1)
        arr.delete_at(num)
      end
    end
  end
  #return array
  arr
end


#one of the tests from codewars
a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]

puts dirReduc(a)
