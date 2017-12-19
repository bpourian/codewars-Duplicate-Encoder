#Ninety Nine Thousand Nine Hundred Ninety Nine - 5kyu

#Write a method that takes a number and returns a string of that number in English.
#For example

#number_to_english(27) # => 'twenty seven'

#Your method should be able to handle any number between 0 and 99999.
#If given numbers outside of that range or non-Integer numbers, the method should
#return an empty string.

def number_to_english(n)

  numbers_to_name = {
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen",
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one",
      0 => "zero"
    }


  str = ""
  numbers_to_name.each do |num, name|

    if n == 0
      return str

    elsif n > 99999
      return str

    elsif n.to_s.length == 1 && n/num > 0
      return "#{name}"

    elsif n < 100 && n/num > 0

      return "#{name}" if n%num == 0
      return "#{name} " + number_to_english(n%num)

    elsif n/num > 0
      return number_to_english(n/num) + " #{name} " + number_to_english(n%num)

    end

  end
end




puts number_to_english(4) == "four"
puts number_to_english(27) == "twenty seven"
puts number_to_english(102) == "one hundred two"
puts number_to_english(38_079) == "thirty eight thousand seventy nine"
puts number_to_english(82102713) == "eighty two million one hundred two thousand seven hundred thirteen"
puts number_to_english(6000)
puts number_to_english(0)
