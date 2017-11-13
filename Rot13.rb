=begin
How can you tell an extrovert from an introvert at NSA? Va gur ryringbef,
gur rkgebireg ybbxf ng gur BGURE thl'f fubrf.

I found this joke on USENET, but the punchline is scrambled. Maybe you can
decipher it? According to Wikipedia, ROT13 (http://en.wikipedia.org/wiki/ROT13)
is frequently used to obfuscate jokes on USENET.

Hint: For this task you're only supposed to substitue characters. Not spaces,
punctuation, numbers etc. Test examples:

rot13("EBG13 rknzcyr.") == "ROT13 example.";
rot13("This is my first ROT13 excercise!" == "Guvf vf zl svefg EBG13 rkprepvfr!"

###solution below is before i had realised there was a very short terminal
application tr;
https://en.wikipedia.org/wiki/ROT13

https://stackoverflow.com/questions/5442436/using-rot13-and-tr-command-for-
having-an-encrypted-email-address

def rot13(message)
  result = ""
  newHash = Hash.new()

  outPut = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
            a b c d e f g h i j k l m n o p q r s t u v w x y z]
  inPut = %w[N O P Q R S T U V W X Y Z A B C D E F G H I J K L M
            n o p q r s t u v w x y z a b c d e f g h i j k l m]

  inPut.zip(outPut).each {|inpt, outpt| newHash[inpt.to_s] = outpt.to_s}

  #newHash.each {|k,v| puts "#{k} and #{v}"}
  #print newHash

  message = message.split("").to_a
  #print message

  result = ""

    for msg in message

      newHash.each do |k,v|

        if msg == k
          result.concat(v)
          elsif msg == " "
            result.concat(" ")
            break
          elsif msg
            #result.concat(msg)
            #puts msg

          else
          result
        end


      end

    end

    result
  end

=end



def rot13(string)
  string.tr('A-Za-z', 'N-ZA-Mn-za-m')
end









Test.expect(rot13("EBG13 rknzcyr.") == "ROT13 example.")
