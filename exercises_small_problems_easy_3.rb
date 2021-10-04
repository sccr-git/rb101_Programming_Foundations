=begin
PEDAC

(P)
Program

Input: strings of numbers
Output: string containing an array

Rules:
Explicit
- prompt user 6 times for an integer
- must search for the 6th number inputed in the first 5 that were inputed

Implicit
- get the boolean value of if the 6th number is contained in the first five numbers
- input must be converted to integers for a comparison
- first five numbers are stored in an array
- the 6th number is compared to the values in the array
- the output is an interpolated string

(E)
Example Problem

Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

(D)
Data Structure

input is strings converted to integers stored in an array
output is an interpolated string referencing the boolean value and outputing the array

(A)
Algorithm

- create an empty array named first_5_numbers
- create a counter and set it equal to 0

- create a loop that will continue until the array "first_5_numbers" is greater than or equal to 5
  - create a method caled "gather_5_numbers" to gather the input for the first 5 numbers 
    - prommpt for the number with the counted value + 1
    - convert input to an integer
    - store in the array "first_5_numbers"

- prompt for the 6th number
- convert input into an integer
- store in a variable named "sixth_num"

- compare the sixth_num variable to the array "first_5_numbers"
- if the sixth_num is in the array then print the string "The number (sixth_num) appears in [first_5_numbers]"
  - if it does not appear then print the string "The number (sixth_num) does not appear in []first_5_numbers]"




(C)
Code  



first_5_numbers = []


puts "Enter the 1st number:"
first_5_numbers << gets.chomp.to_i

puts "Enter the 2nd number:"
first_5_numbers << gets.chomp.to_i

puts "Enter the 3rd number:"
first_5_numbers << gets.chomp.to_i

puts "Enter the 4th number:"
first_5_numbers << gets.chomp.to_i

puts "Enter the 5th number:"
first_5_numbers << gets.chomp.to_i

puts "Enter the last number:"
last_num = gets.chomp.to_i

if first_5_numbers.include?(last_num)
  puts "The number #{last_num} appears in #{first_5_numbers}"
else
  puts "The number #{last_num} does not appear in #{first_5_numbers}"
end

=end

=begin
PEDAC

(P)
Problem

Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

Input: strings converted to integers
Output: integers

Rules:
Explicit
- user must be prompted for 2 integers
- the program must output 6 different math operations: addition, subtraction, multiplication, division, modulus, power

Implicit:
- the input will be in the form of a string and must be converted to an integer

(E)
Example Problem

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

(D)
Data Structure
input is string converted to integers
output is integers

(A)
Algorithm

- prompt the user for the first number
- convert the input to an integer and store in a variable called "first_number"
- prompt the user for the second number
- convert the input to an integer and store in a variable called "second_number"
- output an interpolated string with all of the math operations

(C)
Code



puts "Enter the first number: "
first_number = gets.chomp.to_i

puts "Enter the second number: "
second_number = gets.chomp.to_i

puts "#{first_number} + #{second_number} = #{first_number + second_number}"
puts "#{first_number} - #{second_number} = #{first_number - second_number}"
puts "#{first_number} * #{second_number} = #{first_number * second_number}"
puts "#{first_number} / #{second_number} = #{first_number / second_number}"
puts "#{first_number} % #{second_number} = #{first_number % second_number}"
puts "#{first_number} ** #{second_number} = #{first_number ** second_number}"

=end

=begin
PEDAC

(P)
Problem

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

Input: strings
Output: string with an integer 

Rules:
Explicit
- prompt user for words (strings)
- need to calculate the number of characters and return as an integer
- Spaces are not to be counted as characters

Implicit
- not case sensitive
- 

Questions: 

- is "a" a word?
- do I store the input initially in a string or an array?


(E)
Example Problem

Input:
Please write word or multiple words: walk

Output:
There are 4 characters in "walk".

Input:
Please write word or multiple words: walk, don't run

Output:
There are 13 characters in "walk, don't run".

(D)
Data Structure

- Input of string
- stored in an array
- out put is a string and an integer

(A)
Algorithm

- prompt the user for a word or words
- separate the words into separate characters and store the characters in an called "words"
- filter through the array named "words", eliminate the spaces, and store in a new array named "char_no_spaces"
- count the characters in the array named "char_no_spaces" and store in a variable named "character_count"
- output an interpolated string that displays the variable "character_count"

(C)
Code


puts "Please write a word or multiple words: "
words = gets.chomp
words_with_quotes = '"' + words + '"'
characters = words.chars()
char_no_spaces = characters.filter { |char| char != ' '}
character_count = char_no_spaces.count
puts "There are #{character_count} characters in #{words_with_quotes} "
#output = words.chars()

# p characters
# p char_no_spaces
p character_count

=end

=begin
PEDAC

(P)
Problem 

Create a method that takes two arguments, multiplies them together, and returns the result.

Input: 2 integers
Output: 1 integer

Rules:
Explict
- input is 2 numbers
- output is 1 number

Implit
- numbers can be positive negative or zero because the multiplication function can handle those

(E)
Example Problems

multiply(5, 3) == 15


(D)
Data Structure

Integers

(A)
Algorithm

create a method that multiples two numbers toether and prints an interpolated string with the answer

(C)
Code
  




def multiply(num1, num2)
  num1 * num2
 
end



p multiply(5, 3) == 15
p multiply(10, 3) == 30

=end

=begin
(P)
Problems

Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).  

Input:


  


def multiply(num1, num2)
  num1 ** num2
end

def square(num1, num2)
  multiply(num1, num2)
end

p square(4,4)

=end

=begin
def xor?(condition_1, condition_2)
  return true if condition_1 && !condition_2
  return true if condition_2 && !condition_1
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

#p xor?(5.even?, 4.odd?)

=end

=begin
PEDAC

(P)
Problem

Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Input: array
Output: array

Rules:
Explicit
- the output has to start with with the first element
- the output has to be an array

Implicit
- the items in the array can be any form of data: number, string, array

Questions:
- can one of the forms of data be a hash?

(E)
Example

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

(D)
Data structure

- input is an array
- output will be an empty array that is filled with items that meet the criteria

(A)
Algorithm

- first create a method named "oddities"
- create an empty array named "results_array"
- loop through the array
  -take every other element of the array and add it to the results array

(C)
Code





def oddities(array)
  results_array = []

  array.each_with_index do |item, index|
    
    index.even? ? results_array << item : next
    
  end

  p results_array
end



#def oddities(array)
  #array.select { |ele| array.index(ele).even? }
#end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

=end

=begin
def palindrome?(string)
  string.reverse == string
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true



def palindrome_array?(array)
  array.reverse == array
end

p palindrome_array?(['1', '2', '1']) == true
p palindrome_array?(['1', '2', '3']) == false
p palindrome_array?(['a', 'b', 'a']) == true
p palindrome_array?([ 1, 2, 1]) == true



def palindrome_2?(item)
  item.reverse == item
end

p palindrome_2?('madam') == true
p palindrome_2?('Madam') == false          # (case matters)
p palindrome_2?("madam i'm adam") == false # (all characters matter)
p palindrome_2?('356653') == true

p palindrome_2?(['1', '2', '1']) == true
p palindrome_2?(['1', '2', '3']) == false
p palindrome_2?(['a', 'b', 'a']) == true
p palindrome_2?([ 1, 2, 1]) == true



#Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

def palindrome?(string)
  string.reverse == string
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false



#Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(number)
  number.to_s.reverse == number.to_s
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

=end

def palindrome?(string)
  string.reverse == string
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true