=begin
Create a function that takes an integer as an argument and returns "Even" for
even numbers or "Odd" for odd numbers.

=end

def even_or_odd(number)
  number.even? ? "Even" : "Odd"
  #return "Even" if number.even?
  #return "Odd" if number.odd?
end

puts even_or_odd(3)
