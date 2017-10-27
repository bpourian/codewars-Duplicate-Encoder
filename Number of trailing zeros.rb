=begin
Write a program that will calculate the number of trailing zeros
in a factorial of a given number.

http://mathworld.wolfram.com/Factorial.html

N! = 1 * 2 * 3 * 4 ... N

zeros(12) = 2     #1 * 2 * 3 .. 12 = 479001600
that has 2 trailing zeros 4790016(00)
=end

def zeros(n)
	zerolist = []
	(1..n).inject(:*)
		  .to_s
		  .split("")
		  .reverse
		  .each{|item| item.to_i == 0 ? zerolist.push(item) : break}
	
	zerolist.length
end












