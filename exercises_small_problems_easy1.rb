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



def calculate_bonus(interger, boolean)
boolean ? interger/2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

=end

### End of Easy1 ####

####Beginning of Easy2 #####

# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

=begin
PEDAC

(P)
Problem

Input: range of numbers
Output: interger

RULES:
Explicit
- random number between 20 and 200
- input and output are integers

Implicit
- does the output include 20 and 200? I think yes
- out put should include a string with the age interpolated

(E)
Example

Teddy is 69 years old!

(D)
Data Structure
-Range of integers
-integer

(A)
Algorithm
-create of method called "teddy_age"
- input the range of numbers 20 though 200
- generate a random number
-store the random number in avariable
- output the string with the random number inserted

(C)
Code



def teddy_age
puts "What is your name?"
name = gets.chomp
name = "Teddy" if name.empty?
 age = rand(20..200)
 puts "#{name} is #{age} years old!"
end

teddy_age

=end


=begin
  
################ Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet. #############

PEDAC

(P)
Problem

Input: strings for length and width
Output: String with Floats for the calculations

Rules:
Explicit
- need to inputs: legth and width
- both inputs are from user prompts
- need to answer in square metters and square feet
- no need to validate input

Implicit:
- multiply length in meters by width in meters to get the square meters
- multiply square meters by 10.7639

(E)
Example

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
  
(D)
Data Structure

input strings
convert strings to integers or floats
output floats

(A)
- Prompt user for the length of the room with "puts"
- store the length in a variable called "length"
- convert the length to a float
- prompt the user for the width of a room with "puts"
- store the width in a variable called "width"
- convert the width to a float 
- multiply the "length" and "width" variable
- store the answer in a variable named "square_meters"
- store conversion factore of 10.7639 in a variable named "square_feet_factor"
- multiple "square_meters" by "square_feet_factor"
- store answer in a variable named "square_feet"
- output a string with outs "The area of the room is..." with the answers added with string interpolation

(C)
Code



puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = (length * width).round(2)

square_feet_factor = 10.7639

square_feet = (square_meters * square_feet_factor).round(2)

puts "The area of the room is #{square_meters} (#{square_feet} square feet)."


=end

#### Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill. ##########

=begin
PEDAC

(P)
Problem

Input: String for bill amount and tip rate
Output: integer for tip total and bill total

RULES:
Explicit
- the inputs are collected through prompts
- the output is integers

Implicit
- the string collected in the prompts need to be converted to floats
- the input for the tip percentage needs to be convered to a decimal that can be multiplied by the bill

(E)
Examples

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

(D)
Data structure

strings as input
floats for calculations
floats for output

(A)
Algorithm

- with puts - prompt the user for the amount of the bill
- convert the bill amount to a float
- store the amountin a variable named "bill_amount"
- with puts - prompt the user for the tip percentage
- convert the tip percentage to a float
- store in a variable named "entered_tip_percentage"
- convert the tip percentage to the decimal equivilent by multiplying the "entered_tip_percentage" by .01
- store the converted tip percentage in a variable named "converted_tip_decimal"
- calculate tip amount (multiple the bill_amount by converted_tip_decimal) 

- store the tip amount in a variable called "calculated _tip"
- calculated the total (add the "bill_amount" to "calculated tip")
- store the total in a variable named "final_total" 
- output a string with puts - "The tip is "variable" and the total is "variable"


(C)
Code



puts "What is the bill?"
bill_amount = gets.chomp.to_f

puts "What is the tip percentage?"
entered_tip_percentage = gets.chomp.to_f

converted_tip_decimal = entered_tip_percentage * 0.01
calculated_tip = bill_amount * converted_tip_decimal

final_total = bill_amount + calculated_tip

puts "The tip is $#{calculated_tip.round(2)} and the total is $#{final_total.round(2)}"

=end


##### Build a program that displays when the user will retire and how many years she has to work till retirement. #####

=begin
  
PEDAC

(P)
Problem

Input: 2 strings for current age and future age
Output: 3 integers for current year, future year and years till retirement

Rules:
Explicit
- program will display the year the user will retire and how many more years left to work till retirement

Implicit:
- program will gather current age
- program will gather at what age the user wants to reire
- program will calculate the current year
- program will calculate the year of retirement
- program will calculate the number of years till retirement

Questions: How do I gather the current year without asking for the input?

(E)
Example Problem

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

(D)
Data Structures

strings for input
out put of a string with integers interpolated

(A)
Algorithm

- Print - "What is the current year"
- store the input in a variable named "current_year"
- convert current_year to an integer and store in a variable named "int_current_year"

- Print - "What is your age"
- store the input in a variable named "current_age"
- convert current_age to an integer and store in a variable named "int_current_age"

- Print - "At what age would you like to retire?"
- store the input in a variable named "age_at_retirement"
- convert age_at_retirement to an integer and store in a variable name "int_age_at_retirement"

- calculate years till retirement and store in a variable name "years_till_ret"
- (int_age_at_retirement - int current_age)

- calculate retirement year and store in a variable "ret_year"
- (int_current_year + years_till_ret )

- puts "It's #{int_current_year}. You will will retire in #{ret_year}"
- puts "Yoy only have #{years_till_ret} years of work to go!"




#print "What is the current year? "
#current_year = gets.chomp
#int_current_year = current_year.to_i

current_year = Time.new.year

print "What is your age? "
current_age = gets.chomp
int_current_age = current_age.to_i

print "At what age would you like to retire? "
age_at_retirement = gets.chomp
int_age_at_retirement = age_at_retirement.to_i

years_till_ret = (int_age_at_retirement - int_current_age)

ret_year = (current_year + years_till_ret)

puts " "
puts "It's #{current_year}. You will retire in #{ret_year}"
puts "Yoy only have #{years_till_ret} years of work to go!"

=end
###################################################################################################################################################

=begin

Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

PEDAC

(P)
Problem

Input: string
Output: String

RULES:
Explicit
- User will be prompt for their name
- The program will greet the user with "Hello name" if no !
- if ! the the computer responds with all CAPS "HELLO NAME. WHY ARE WE SCREAMING?"

Implicit?
- the ! will be tested as a boolean

Questions: Does the ! have to be at the end?

(E)
Examples

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

(D)
Data Structure

Input String
Output String

(A)
Algorithm

- Print "What is your name?"
- store the propmpt in a variable "name"
- test for an exclmation with a ternary operator
- if no exclamation - output lower case response
- if yes exclamation - output upper case response

(C)
Code



print "What is your name? "
name = gets.chomp
#name_char = name.char

if name[-1] == '!' 
  name = name.chop
   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?" 
else 
  puts "Hello #{name}"
end

=end


################################################################################################################################################

=begin

Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

PEDAC

(P)
Problem: range of integers
Output: Integers

Rules:
Explicit
- prinout only the odd numbers from 1 to 99
- each needs to be printed on a separate line

Implicit
- needs to use puts to print on a separate line

Questions: Do I need to store the nodd numbers in an array and then print? Or can I print with the method odd?

(E)
Example Problem
1
3
5
7
9...


(D)
Data Structure
range of integers
array to hold odd number
integers for output

(A)
Algorithm
- create an empty array named "odd_integers"
- filter the odd numbers from the range and store in the array
- loop through the array and print out each number

(C)
Code



#Try 1 (doesn't work)
#odd_integers = []

#[1..99].select{|num| num.odd?}.push(odd_integers)

Try 2 (works)
range = 1..99
range.step(2) do |num|
  puts num
end



try 3 (works)
range = 1..99

range.each do |num|
  puts num if num.odd?
end

try 4 (works)

range = (1..99).to_a

(1..99).select {|num| puts num if num.odd?}

=end


##############################################################################################################################################

=begin

Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.


PEDAC

(P)
Problem
Input: range of integers
Output: Integers

RULES
Explicit
- print all the even numbers in a range of 1 to 99
- each value printed on a separate line

Implicit
- 

(E)
Example Problem
2
4
6
8
10...

(D)
Data Structure
- range of integers
- integers

(A)
Algorithm
- create a loop that passes all values from 1 to 99
- select the even values
- print values

(C)
Code



#(1..99).each {|num| puts num if num.even? }

value = 1

while value <= 99
  puts value if value.even?
  value += 1
end

=end

#####################################################################################################################################################

=begin
  
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.


PEDAC

(P)
Problem

Input: Integer and string for product or sum
Output: string with integers

Rules:
Explicit
- the user needs to be propted for a number
- the number has to be greater than zero
- the user needs to be prompted as to if they want the sum or the product for the calculation

Implicit
- the user has to enter an s for sum and a p for product
- sum is addition
- product is multiplication


Questions:
- How are negative number or chaacter inputs handled?
- Is there an easy way to add or multiply factors

(E)
Example Problem

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

(D)
Data Structure
string
integer

(A)
Algorithm

- print statement asking for an integer greater than zero
- create a variable named "usr_integer"
- store the integer in the variable "usr_integer"
- convert the string into an integer
- print statement asking for 's' or 'p'
- create a variable named "usr_choice"
- store the input "p" or "s" in the variable "usr_choice"
- test the input to know what letter was entered
- compute the sum or product based on input
  
  - compute sum 
  - create a line with the range "1.."usr_integer"
  - use the sum method on the range
  - store calculation in a variable "usr_sum"

  - compute product
  - compute the product by looping through the range
  - create a line with the range "1.."usr_integer"
  - create a counter variable named counter
  - when the counter equals the length of the range then break the loop 
  - create a line that multiplies 1 by the second place in the range
  - create a sum variable that adds the answer to the multiplication
  - when the sum is broken return the sum

  (C)
  Code

=end

print "Please enter an integer greater than 0: "
usr_integer = gets.chomp.to_i

print "Enter 's' to compute the sum, 'p' to compute the product. "
usr_choice = gets.chomp

if usr_choice == 's'
  then usr_choice_word = 'sum'
else
  usr_choice_word = 'product'
end

if usr_choice == 's'
  answer = (1..usr_integer).sum
elsif usr_integer < 2
  answer = 1
else
  counter = 1
  product = 1
  array = [1..usr_integer]
  loop do
    (array[counter]) * product
    product += product
    counter += 1
    break if counter >= array.length
  end
answer = product

end

puts "The #{usr_choice_word} of the integers between 1 and #{usr_integer} is #{answer}"






































































































