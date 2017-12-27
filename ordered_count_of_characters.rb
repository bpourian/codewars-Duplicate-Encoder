=begin
Count the number of occurencences of each character and return it as a list of
tuples in order of appearance.

Example:

ordered_count("abracadabra") == [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]

=end

def ordered_count(str)
  str = str.scan(/\w|\s/).inject(Hash.new(0)){|h, c| h[c] += 1; h}
  str.to_a
end

ordered_count("abr acadabra")
