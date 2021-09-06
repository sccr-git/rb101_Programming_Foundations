# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more #characters reversed. 
# Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.


#PEDAC

=begin
 
PROBLEM:
  Input: String of Characters
  Output: New String
  
  Rules:
  Implicit:
  - only takes letters and spaces - no digits
  - spaces are only used to separate words
  - words that contain 5 or more characters are reversed

  Explicit:
  - Capitals and lowercase are returned "as is"
  - String is returned regardless of how many words have over 5 characters 0...

EXAMPLES:
  - puts reverse_words('Professional')          # => lanoisseforP
  - puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
  - puts reverse_words('Launch School')         # => hcnuaL loohcS

DATA STRUCTURES:
  -string
  -store values in an array
  -output as a string  

ALGORITHM:
  -create an empty method called reverse_words
  -create an empty array called words
  -loop through array
  -convert the string to an array
  -reverse words with over 5 characters
  -store to iterated word into the new array called words
  -return array as a string

=end

=begin
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.length >= 5
      words << word
    end
  
    words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

=end


##########################################################################################################################################################


#Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the #string should match the given integer.

=begin
PEDAC

(P)
PROBLEM:
Input: interger
Output: string

RULES:

-explicit:
-input is an interger
-output is a string
-the string output starts with a 1
-the second integer is a 0 then the pattern repeats
-the length of the string should match inputed integer

-implicit:
- the loop should perform an amount of times equal to the integer

(E)
EXAMPLES:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

(D)

(A)
ALGORITHM:

-create a method with an interger as the parameter
-create an empty array called "pattern"
- loop through a method the number of times indicated in the parameter
    -take the number of times the method is supposed to run and loop through that number of times
    -set the count equal to the index of the count
    if the count is even then output 1
      if the count is odd output 0
- append the array "pattern" with the output of the method
then join the "pattern" array into a string



def stringy(count)

pattern = []

count.times do |index|
  number = index.even? ? 1 : 0
  pattern << number

end
pattern.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=end


# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty # and the numbers will always be positive integers. Your result should also be an integer.

=begin

PEDAC

(P)
PROBLEM

Input: array of integers
Output: interger (average of all number in array)

RULES:
-EXPLICIT
-only one array as input
-output in one numner
-output is an integer

IMPLICIT
-integer divisions (no floats)

(E)
EXAMPLES

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

(D)
Data Structure
-array
-integer

(A)
Algorithm
-create a method called average that takes an array as the argument
- calculate the sum of all the numbers in the array
-divide the sum by the number of numbers added together
-return the sum

=end

=begin
def average(array)
  array.sum / array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
=end

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

=begin
PEDAC

(P)
Problem
Input: Integer
Output: Integer

Rules:
Explicit:
-only one argument
-argument is a positive number
-return is an interger

Implicit:
-only numbers
-need to handle test case with "_"

(E)
Example Problems

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

(D)
Data Structure
-integer
-array
-integer


(A)
Algorithm
-make method named "sum" with an argument of an integer
-create a variable named "Sum" that is set to zero (this variable will have the digits incrementally added to it)
-convert the integers to strings
-convert the strings into individual characters in an array
-store in a variable "str_characters"
-LOOP THROUGH EACH CHARACTER
  -convert the strings back to integers
  -add to sum variable
-return sum

=end

=begin
def sum(integer)
sum = 0

str_characters = integer.to_s.chars 

str_characters.each do |str_characters|
  sum += str_characters.to_i
end
sum
end
=end

=begin
def sum(integer)
  integer.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
=end

=begin
PEDAC

# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.


(P)
Problem

Input: Integer, boolean
Output: Interger

RULES:
Explicit:
- 2 arguments: 1 integer and the other boolean
- integer must be positive
- the output is either zero or half the forst input
- the first argument is an iteger the second argument is a boolean
- the output if the boolean is true is half of the integer argument

Implicit:
-

(E)
EXAMPLES

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

(D)
Data Structure
- integer
- integer

(A)
Algorithm
- create a method named "calculate_bonus"
- use a ternary operator to test boolean
- return 0 if false
-return the variable divided by 2 if true

(C)
CODE

=end

def calculate_bonus(interger, boolean)
boolean ? interger/2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

























