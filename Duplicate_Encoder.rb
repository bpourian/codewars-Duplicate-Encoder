=begin 
The goal of this exercise is to convert a string to a new string 
where each character in the new string is '(' if that character appears 
only once in the original string, or ')' if that character appears more 
than once in the original string. Ignore capitalization when determining 
if a character is a duplicate.

Examples:

"din" => "((("

"recede" => "()()()"

"Success" => ")())())"

"(( @" => "))(("

#alternative solution - not mine
def duplicate_encode(word)
  word.downcase.chars.map {|x| word.downcase.count(x) > 1 ? ")" : "("}.join("")
end

=end

#my solution 

def duplicate_encode(word)
  	array_me = word.downcase
	array_me = array_me.split("").to_a

	my_hash = Hash.new(0)
	array_me.each {|item| my_hash[item] += 1 }

	bracket_name = ""

	array_me.each do |char|
	if my_hash[char] >= 2
		bracket_name += ")"
		else
		bracket_name += "("
		end
		bracket_name
	end
	bracket_name
end





