=begin
Your task is to get Zodiac Sign using input day and month.

For exapmle:

get_zodiac_sign(1,5) => 'Taurus'
get_zodiac_sign(10,10) => 'Libra'
Correct answers are (preloaded):

SIGNS = ['Capricorn', 'Aquarius', 'Pisces', 'Aries', 'Taurus', 'Gemini',
'Cancer', 'Leo', 'Virgo', 'Libra', 'Scorpio', 'Sagittarius']
P.S. Each argument is correct integer number.

WESTERN ASTROLOGY STAR SIGN DATES

Aries (March 21-April 19)
Taurus (April 20-May 20)
Gemini (May 21-June 20)
Cancer (June 21-July 22)
Leo (July 23-August 22)
Virgo (August 23-September 22)
Libra (September 23-October 22)
Scorpio (October 23-November 21)
Sagittarius (November 22-December 21)
Capricorn (December 22-January 19)
Aquarius (January 20 to February 18)
Pisces (February 19 to March 20)
=end

def get_zodiac_sign(day, month)
  if month == 1 && day >= 20 || month == 2 && day <= 18
     "Aquarius"

  elsif month == 2 && day >= 19 || month == 3 && day <= 20
     "Pisces"

  elsif month == 3 && day >= 21 || month == 4 && day <= 19
     "Aries"

  elsif month == 4 && day >= 20 || month == 5 && day <= 20
     "Taurus"

  elsif month == 5 && day >= 21 || month == 6 && day <= 20
     "Gemini"

  elsif month == 6 && day >= 21 || month == 7 && day <= 22
     "Cancer"

  elsif month == 7 && day >= 23 || month == 8 && day <= 22
     "Leo"

  elsif month == 8 && day >= 23 || month == 9 && day <= 22
     "Virgo"

  elsif month == 9 && day >= 23 || month == 10 && day <= 22
     "Libra"

  elsif month == 10 && day >= 23 || month == 11 && day <= 21
     "Scorpio"

  elsif month == 11 && day >= 22 || month == 12 && day <= 21
     "Sagittarius"

  elsif month == 12 && day >= 22 || month == 1 && day <= 19
     "Capricorn"
  end
end

get_zodiac_sign(10,10)
