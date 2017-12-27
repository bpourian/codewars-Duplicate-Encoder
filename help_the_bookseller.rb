=begin
A bookseller has lots of books classified in 26 categories labeled A, B, ... Z.
Each book has a code c of 3, 4, 5 or more capitals letters. The 1st letter of a
code is the capital letter of the book category. In the bookseller's stocklist
each code c is followed by a space and by a positive integer n (int n >= 0)
which indicates the quantity of books of this code in stock.

For example an extract of one of the stocklists could be:

L = {"ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"}.
or

L = ["ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"] or ....
You will be given a stocklist (e.g. : L) and a list of categories in capital
letters e.g :

  M = {"A", "B", "C", "W"}
or

  M = ["A", "B", "C", "W"] or ...
and your task is to find all the books of L with codes belonging to each
category of M and to sum their quantity according to each category.

For the lists L and M of example you have to return the string
(in Haskell/Clojure a list of pairs):

  (A : 20) - (B : 114) - (C : 50) - (W : 0)
where A, B, C, W are the categories, 20 is the sum of the unique book of
category A, 114 the sum corresponding to "BKWRK" and "BTSQZ", 50 corresponding
to "CDXEF" and 0 to category 'W' since there are no code beginning with W.

If L or M are empty return string is "" (Clojure should return an empty array
instead).

Note:

In the result codes and their values are in the same order as in M.

=end

def stockList(listOfArt, listOfCat)
  finalString = ""
  return finalString if listOfArt.empty? || listOfCat.empty?
  result_hash = Hash.new(0)

  splitListOfArt = listOfArt.collect {|d| d.split}

  listOfCat.each do |cat|
    splitListOfArt.each do |book,sum|

      if book.chars.first == cat && result_hash[cat.to_sym] == 0
          result_hash[cat.to_sym] = sum.to_i
        elsif book.chars.first == cat && result_hash[cat.to_sym] != 0
          result_hash[cat.to_sym] += sum.to_i
        elsif result_hash[cat.to_sym] == 0
           result_hash[cat.to_sym] = 0.to_i
      end
    end
  end

  x = 0
  result_hash.each do |key,value|
    x += 1
    finalString.concat("(#{key} : #{value})")
    finalString.concat(" - ") if result_hash.length > x
    #(A : 20) -
  end
  finalString
end

L = ["ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"]
M = ["A", "B", "C", "W"]

#L = []
#M = []

puts stockList(L,M)
