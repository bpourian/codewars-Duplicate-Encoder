=begin
Your task is to create functionisDivideBy (or is_divide_by) to check if an
integer number is divisible by each out of two arguments.
=end

def is_divide_by(number, a, b)
  number % a == 0 && number % b == 0
end
