=begin

Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)



def ascii_value(string)
  ascii = []
  string.chars.map do |char| 
    ascii << char.ord
  end
  ascii.sum 
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

=end

=begin
  
PEDAC

(P)
Program

The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

Input: interger
Output: String

Rules:
Explicit
- positive integer indicates times after midnight
- negative integer indicates times before midnight
- the unit is minutes
- the output format is hh:mm

Implicit
- 

(E)
Example Problem

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"




p 800.divmod(60) 

def time_of_day(minutes)
  if minutes > -1 && minutes < 1440
    case minutes
    when 0
    "00:00"
    when 1..59
    "00:#{minutes}"
    else
    array = minutes.divmod(60)
    "#{array[0]}:#{array[-1]}"
    end
  elsif minutes > 1440
    array = (minutes % 1440).divmod(60)
    "#{array[0]}:#{array[-1]}"
  end
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"

p "-----------------------"
p 3000 % 60
p 3000.divmod(60)
p 3000 % 1440
p 3000.divmod(1440)
p 120.divmod(60)



MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY


def normalize_minutes_to_0_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end


def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(60)
  sprintf("%02d:%02d", hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"

=end

=begin
  
PEDAC

(P)
Problem

Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

Input: String
Output: String

Rules:
Explicit
- 

(E)
Example Problem

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

(D)
Data Structure

-string separated into individual words in an array

(A)
Algorithm

- create a method named swap
- split the string into words stored in an array
- loop through each word and remove the first and last letters
- store the letters in variables and then put the letters back in their new positions

(C)
Code

=end

def swap(string)
  reversed_array = string.split(' ').map do |word|
    first_letter = word[0]
      last_letter = word[-1]
      word_remainder = word[1..-2]
      last_letter + word_remainder + first_letter
  end
  reversed_array.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'


