=begin
PEDAC

(P)
Problem

Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

Input: two srings
Output: one concatenated string

Rules:
Explicit
- one string is longer than the other
- in the concatenation: return the shorter string, then the longer string, then the shorter string

Implicit:
- still works with a blank space

(E)
Example cases

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

(D)
Data Structure

- 2 strings
- 1 concatenated string

(A)
Algorithm

- create a method named "short_long_short"
- compare the length of the two strings
- return an interpolated string with the order based on the comparison

(C)
Code



def short_long_short(string_1, string_2)
  if string_1.length > string_2.length
    return "#{string_2}#{string_1}#{string_2}"
  else 
    return "#{string_1}#{string_2}#{string_1}"
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

puts short_long_short('abc', 'defgh')

=end

=begin
PEDAC

(P)
Problem

Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

Input: interger
output: string

Rules:
Explicit
- string output must have st, nd, rd, th
- new centuries begin with 01 i.e 2001

Implicit
- year can be between 1 and 5 or more digits
- "st" is used for: 1, 4,

Edge cases:
- anything below 100 is the first century: 1, 50 , 99, 100...1 2 and 3 digit numbers
- 

(E)
Example Problem

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

(D)
Data Structure:
interger
string

(A)
Algorithm

- create a method named "century" that takes an integer as an argument
- create a helper method to get the century number
- if year is less than 100 then return "1st"
- get the century number from the helper method and create a case statement to determinbe weather its st, nd, rd, th 







def century(year)
  century = year / 100 + 1
  century -= 1 if year.to_s.end_with?('0')
  century.to_s + century_suffix(century)
end

def century_suffix(century)

  return 'th' if century.to_s.end_with?('11', '12', '13')

  
  if century.to_s.end_with?('1')
    then 'st'
  elsif century.to_s.end_with?('2')
    then 'nd'
  elsif century.to_s.end_with?('3')
    then 'rd'
  else
    'th'
  end

end





puts century(2000) #== '20th'
puts century(2001) #== '21st'
puts century(1965) #== '20th'
puts century(256) #== '3rd'
puts century(5) #== '1st'
puts century(10103) #== '102nd'
puts century(1052) #== '11th'
puts century(1127) #== '12th'
puts century(11201) #== '113th'

=end

=begin
 PEDAC
 
 (P)
 Problem

In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year. 

Input: interger
Output: boolean

Rules:
Explicit
- must be a number greater than 0
- leap year returns no remainder when divided by 4
- leap year if divisible by 100 then it has to be divisible by 400

Implicit
- can't be a negative number

(E)
Example Problem

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

(D)
Data Structure
- method

(A)
Algorithm

- create a method named "leap_year?"
- > than 0
- create a case statement with the conditions: % 4 = 0 true, % 100 = 0 and % 400 = 0, true

(C)
Code


def leap_year?(year)
  if year < 1
    puts "must enter # greater than 0"
  else
  case year
    when year % 4 == 0
      then true
    when year % 100 == 0 && year % 400 == 0
      then true
    else
      false
    end
  end
end



def leap_year?(year)
(year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end



def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

def leap_year?(year)
  if year % 400 == 0
    then true
  elsif year % 100 == 0
    then false
  else
    year % 4 == 0
  end
end



def leap_year?(year)
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

-----------------------------------------------------------------------------------------------------------------------------------------------
A continuation of the previous exercise.

The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leap years both before and after 1752.


def leap_year?(year)
  if year > 1751
    year % 400 == 0 || year % 4 == 0 && year % 100 != 0
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

=end

=begin
PEDAC

(P)
Program

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Input
- integer

Output
- Integer

Rules:
Explicit
- need to get a range between 2 numbers
- first number is one in range, the next number is the argument given to the method
- the multiples need to be added togther

Implicit
- a multiple can only be counted once.

(E)
Example Problem

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

(D)
Data Structure

integer
intergers stored in an array
integer

(A)
Algorithm

- create a method named multism with a parameter of "number"
- create an empty array for the multoples to be stored named "multiples"
- create a helper method for multiples of 3
- create a helper method for multiples of 5 
- add all of the multples together

(C)
Code





def multisum(number)
  multiples = []
  (1..number).each do |number|
    if number % 3 == 0 || number % 5 == 0
    multiples << number
    end
  end
  multiples.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

=end

=begin
PEDAC

(P)
Problem

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

Input
- array of integers

Output
- an array of integers

Rules:
Explicit
- input and return must be in the form of an array
- return array has to have the same amount of elements

Implicit
- the input array can be empty and it returns an empty array
- 


(E)
Example cases

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

(D)
Data Structure

- array
- array
- sum stored in a variable

(A)
Algorithm

- create a method named running total that takes a parameter named "array"
- create an empty array to store the totals named "array_total"
- itereate through array adding values to total and storing in the array "array_total"

(C)
Code



def running_total(array)
  sum = 0

  array.map {|item| sum += item}
end



def running_total(array)
  array.inject {|sum, num| sum + num}
end

p running_total([2, 5, 13]) #== [2, 7, 20]
#p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
#p running_total([3]) == [3]
#p running_total([]) == []

=end

=begin

PEDAC


(P)
Problem

Write a method that takes a String of digits, and returns the appropriate number as an integer

Input: String
Output: Integer

Rules:

Explicit
- can't use Ruby built in methods
- 

Implicit
- integer has a return value that is the same as the input string


(E)
Example

string_to_integer('4321') == 4321
string_to_integer('570') == 570

(D)
Data Structure

hash for conversions

(A)
Algorithm

write a has that has the key as the one digit string and the value as the one digit integer
create a method called "string_to_integer"
  - seperate the string into individual characters
  - in the method, search the hash using the map method for the match of the string character in the array with the individual characters 

(C)
Code

=end

=begin
HASH = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9

}

def string_to_integer(string)
  integers = string.chars.map {|char| HASH[char]}

  value = 0
  integers.each { |int| value = value * 10 + int} 
  value
end

#p string_to_integer('4321')

def string_to_signed_integer(string)
  if string[0] == '-'
    string_2 = string.slice(1..-1)
    remove_negative = string_to_integer(string_2)
    add_negative = -(remove_negative)
    add_negative
  elsif string[0] == '+'
    string_3 = string.slice(1..-1)
    string_to_integer(string_3)
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321')
p string_to_signed_integer('+570')
p string_to_signed_integer('-107')

=end

=begin
#Write a method that takes a positive integer or zero, and converts it to a string representation.

### *** Given answer - need to learn divmod 

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

=end
