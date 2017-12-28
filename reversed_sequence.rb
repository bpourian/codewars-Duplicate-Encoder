=begin
Get the number n to return the reversed sequence from n to 1.

Example : n=5 >> [5,4,3,2,1]
=end

def reverse_seq(n)
  (1..n).collect {|num| num}.reverse
end

puts reverse_seq(7)
