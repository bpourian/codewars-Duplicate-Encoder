# Check if it is a vowel(a, e, i, o, u,) on the n position in a
# string (the first argument). Don't forget about uppercase.
# {
# checkVowel('cat', 1)  ->   true // 'a' is a vowel
# checkVowel('cat', 0)  ->   false // 'c' is not a vowel
# checkVowel('cat', 4)  ->   false // this position doesn't eis_vowelist
# }

def check_vowel(string, position)
  string = string.downcase.split('')
  vowels = %w[a e i o u]

  is_vowel = false

  vowels.each do |vowel|
    is_vowel = true if string[position] == vowel
    break if is_vowel == true
  end
  is_vowel = false if position < 0
  puts is_vowel
end
