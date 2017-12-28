=begin
Simple, remove the spaces from the string, then return the resultant string.
=end

def no_space(x)
  x.split.join
end

puts no_space('8 j 8   mBliB8g  imjB8B8  jl  B')
