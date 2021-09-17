=begin
str = 'abcedefghi'
puts str[2,5]

hsh = { :a => 1, 'b' => 'two', :c => nil }

hsh['b']       # => "two"
hsh[:c]        # => nil
hsh['c']       # => nil
hsh[:d]        # => nil

hsh.fetch(:c)  # => nil
#hsh.fetch('c') # => KeyError: key not found: "c"
               #        from (irb):2:in `fetch'
               #        from (irb):2
               #        from /usr/bin/irb:11:in `<main>'
hsh.fetch(:d)  # => KeyError: key not found: :d
               #        from (irb):3:in `fetch'
               #        from (irb):3
               #        from /usr/bin/irb:11:in `<main>'
=end

=begin
str = 'Patricia'
arr = str.split('')
p arr.join
=end

=begin
str = 'How do you get to Carnegie Hall?'
arr = str.split # => ["How", "do", "you", "get", "to", "Carnegie", "Hall?"]
puts arr.join(' ')        # => "HowdoyougettoCarnegieHall?"
=end

=begin
arr = [1, 2, 3, 4, 5]

arr_plus_one = arr.map { |num| num += 1 }
puts arr_plus_one



arr[0] += 1 # => 2
arr         # => [2, 2, 3, 4, 5]
puts arr[1] += 1 # => 3
puts arr[2] += 1 # => 4
puts arr[3] += 1 # => 5
puts arr[4] += 1 # => 6
=end

=begin
hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh[:carrot] = 'vegetable'
hsh[:pear] = 'fruit'
hsh[:broccoli] = 'vegetable'
puts hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }
=end

=begin
loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end
=end

=begin
counter = 0

loop do
  puts 'hello'
  counter += 1
  break if counter == 5
end
=end

=begin
counter = 0

loop do
  counter += 1
  next if counter.odd?
  puts counter
  break if counter > 5
end
=end

=begin
alphabit = 'abcdefghijklmnopqrstuvwxyz'

counter = 0

loop do
  puts alphabit[counter]
  counter += 1
  break if counter >= alphabit.size
end
=end

=begin
colors = ['green', 'yellow', 'blue', 'orange']
counter = 0

loop do
  break if counter >= colors.length
  puts "I am the color #{colors[counter]}"
  counter += 1
end
=end

=begin
number_of_pets = {
  'dogs' => 2,
  'cats' => 3,
  'fish' => 4
}

counter = 0
pets = number_of_pets.keys

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}"
  counter += 1
end
=end

=begin
number_of_pets = {
  'dogs' => 4,
  'cats' => 2,
  'fish' => 1
}


counter = 0
pets = number_of_pets.keys

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}"
  counter += 1
end
=end

#######                        ########
######                         ########
####### Topic 4 Intro to Pedac ########


############ Revisit Loops 1 ################
=begin
iterations = 1
5.times do
  puts "Number of iterations = #{iterations}"
  iterations += 1
end
=end

=begin
  
rescue => exception
  
end
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

=end

=begin
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end
=end

#Modify the code below so "Hello!" is printed 5 times.

=begin
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end


###!!!!!!!! PROGRESS Loops 1 #5 complete !!!!!!!!!!!

#Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

numbers = []

while numbers.length < 5
 numbers << rand(0..99) 
end

puts numbers

=end

=begin
count = 1

until count > 10
  puts count
  count += 1
end
=end

=begin
numbers = [7, 9, 13, 25, 18]

count = 0
until count == numbers.length
puts numbers[count]
count += 1
end
=end

=begin
for i in 1..100
  puts i if i.odd?
end
=end

=begin
friends = ['Sarah', 'John', 'Hannah', 'Dave']


for friend in friends
  puts "Hello #{friend}"
end
=end

#################################################################################################################################################

# Write a loop that prints numbers 1-5 and whether the number is even or odd. 

=begin
count = 1

loop do
  if count.even? 
    puts "#{count} is even"
  else
    puts "#{count} is odd"
  end

  break if count == 5
  count += 1
end
=end

#Modify the following code so that the loop stops if number is equal to or between 0 and 10.

=begin
loop do
  number = rand(100)
  puts number
  
  if number.between?(0,10)
    break
  end
end
=end

=begin
Write an if/else statement that executes some code if the process_the_loop variable is true and some other code when process_the_loop is false. Specifically:

When process_the_loop is true, execute a loop that iterates exactly once and prints The loop was processed during that iteration.
When process_the_loop is false, just print The loop wasn't processed!.

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
    puts "The loop wasn't processed!"
end
=end

=begin

The code below asks the user "What does 2 + 2 equal?" and uses #gets to retrieve the user's answer. Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4. Print "Wrong answer. Try again!" if the user's answer doesn't equal 4.



loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  
  break if answer == 4
  puts "Wrong answer. Try again!"
end
  
puts "That's correct!"

=end

=begin
Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.



numbers = []

loop do
  puts 'Enter any number'
  input = gets.chomp.to_i

  numbers << input
  break if numbers.length == 5
end

puts numbers
=end

=begin

Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.



names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop()
  break if names.length == 0
end

=end

=begin
  
The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.



5.times do |index|
  puts index
  break if index == 4
end

=end

=begin
  
Using next, modify the code below so that it only prints even numbers.



number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
  
end

=end

=begin

The following code increments number_a and number_b by either 0 or 1. loop is used so that the variables can be incremented more than once, however, break stops the loop after the first iteration. Use next to modify the code so that the loop iterates until either number_a or number_b equals 5. Print "5 was reached!" before breaking out of the loop.



number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end



def greeting(number_of_greetings)
  count = 0
  while count < number_of_greetings
    puts 'Hello!'
    count += 1
  end
end

number_of_greetings = 2

greeting(number_of_greetings)

=end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

=begin
def select_fruit(produce_list)
  produce_keys = produce_list.keys
  selected_fruits = {}
  counter = 0

  loop do

    break if counter == produce_keys.size
    
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
    
  end

  selected_fruits
end

puts select_fruit(produce)

=end

=begin
def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
my_numbers                      # => [1, 4, 3, 7, 2, 6]
=end


=begin
def multiply(my_numbers, multiply_by)
  multiply_numbers = []
  counter = 0

  loop do
    break if counter == my_numbers.size

    current_number = my_numbers[counter]
    current_number *= multiply_by 
    multiply_numbers << current_number

    counter += 1
  end

  multiply_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts multiply(my_numbers, 3)  # => [3, 12, 9, 21, 6, 18]

# not mutated
my_numbers                      # => [1, 4, 3, 7, 2, 6]
=end


=begin
  
Let's write a method called select_letter, that takes a string and returns a new string containing only the letter that we specified.


PEDAC

(P)
Problem

Input: string
Output: new string

Rules:
Explicit
- input is a string
- output is a string of just those characters
- method must have an input of the character that is compared to characters in the string

Implicit:
- input string must be searched by each individual character
- must have a loop to continues until the length of the string has been met


(E)
Example Problems

question = 'How many times does a particular character appear in this sentence?'
select_letter(question, 'a') # => "aaaaaaaa"
select_letter(question, 't') # => "ttttt"
select_letter(question, 'z') # => ""

(D)
Data Structure

-string
-string

(A)
Algorithm

- create a method named "select_letter" with "string" and "chatacter" as the arguments
- create a counter variable named "counter" and set it to zero
- create an empty string set to a variable named "selected_letters"
- create a loop to search the string
  - create a condition to break to loop if the counter equals the length of the string
  - create a varaible named "current_character" and set it equal to "character[counter]"
  - search the string comparing the "current_character" to the "character" argument
  - append the empty string "selected letters" with mataching "current_characters"
  - add a line to increment the counter
- after the loop is broken return "selected_letters"

(C)
Code



def select_letter(string, character)
counter = 0
selected_letters = ''

  loop do
    break if counter == string.length
    current_character = string[counter]

    if current_character == character
      selected_letters << current_character
    end

    counter += 1
  end

  selected_letters
end

question = 'How many times does a particular character appear in this sentence?'
puts select_letter(question, 'a') # => "aaaaaaaa"
puts select_letter(question, 't') # => "ttttt"
puts select_letter(question, 'z') # => ""

=end


=begin

select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

PEDAC

(P)
Problem

Input: Hash
Output: hash with selected key value pairs

Rules:
Explicit
- the input must be a hash
- the output must be a hash
- the hash must be filtered to get only the/key value pairs with "fruit" as the value 

Implict
- must compare the hash values to "fruit"
- must loop through the hash

(E)
Example Problem

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

(D)
Data Structure

input: hash
-store in empty hash
output: hash

(A)
Algorithm

- create a method named "select_fruit" that takes a hash as an argument named "produce_list"
- create a counter varaible and set it equal to zero
- create an empty hash and set it to a variable named "selected_fruits"
- create a variable named "produce_keys" and set it equal to produce_list.keys

- loop over the hash
  - create a condition to break the loop if the counter is greater than the length of the keys
  - create a way to retrieve the current value
    - create a variable named "current_key" set the current_key variable equal to "produce_keys[counter]"
    - create a variable named "current_value" and set it equal to produce_list[current_key]
  - create a condition comparing the current_value to "fruit"
     - to create the entry in the empty hash named "selected_fruits" - set "selected_fruits[current_key]" equal to current_value
      -close/ end condition
  - increment the counter
- end the loop
- return selected_fruits
-end method "select_fruits"

(C)
Code



produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  counter = 0
  selected_fruits = {}
  produce_keys = produce_list.keys

loop do
  break if counter == produce_keys.length
  current_key = produce_keys[counter]
  current_value = produce_list[current_key]

  if current_value == 'Fruit'
    selected_fruits[current_key] = current_value
  end

  counter += 1
end

selected_fruits
end

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

=end

=begin
odd, even = [1,2,3].partition do |num|
  num.odd?
end

p odd
=end

=begin
long, short = { a: "ant", b: "bear", c: "cat"}.partition do |key, value|
  value.size > 3
end

p long 
p short

p long.to_h
p short.to_h
=end

=begin
var_select = nil

var_select = [1,2,3].select do |num|
  var_select = num > 5
  'hi'
end

p var_select
=end

=begin
count_var = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p count_var

=end

=begin
#Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash
=end

=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#values_of_ages = ages.values

#p values_of_ages.sum

total_ages = 0

ages.each { |_, ages| total_ages += ages }

p total_ages
=end

=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

filtered_ages = ages.select { |_, ages| ages <= 100}

p filtered_ages
=end

=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

minimun_age = ages.values.min

p minimun_age
=end

#Find the index of the first name that starts with "Be"
=begin
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index { |name| name[0,2] == 'Be'}
=end

#Amend this array so that the names are all shortened to just the first three characters:

=begin
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.map { |name| name[0,3]}
=end

#Create a hash that expresses the frequency with which each letter occurs in this string

=begin
PEDAC

(P)
Problem

Input: string
Output: Hash

Rules:
Explicit
- input is a string
- output is a hash
- hash has a sting for the key

Implicit
- case sensitive - "T" is different than 't'
- key is the letter

(E)
Example Problem

{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }


(D)
Data Structure
- string
- hash

(A)
Algorithm
- create a method named "letter_frequency"
- create an empty hash named "letters"
- sperate the letters of the string into an array
- loop through the string
  - create a condition that tests if the letter is already in the hash
  - if the letter is not in the hash then add the key/value pair
  - if the key value pair is in the hash then increment the value by 1

(C)
Code

### Doesn't work ####

statement = "The Flintstones Rock"


def letter_frequency(statement)
  letters = {}
  statement.chars.each do |letter|
    if letters.has_key?(letter)
      letters[letter] = 1
    else
      letters[letter] = 1
    end
  end
end

p letter_frequency(statement)

=end

### works ###

=begin
statement = "The Flintstones Rock"

letters = {}
characters = ('A'..'Z').to_a + ('a'..'z').to_a

characters.each do |character|
letter_frequency = statement.count(character)
letters[character] = letter_frequency if letter_frequency > 0
end

puts letters

=end

=begin
words = "the flintstones rock"

split_words = words.split(' ').each {|word| word.capitalize!}.join (' ')

puts split_words
=end

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

#Turn this array into a hash where the names are the keys and the values are the positions in the array.

=begin
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash
=end



#Add up all of the ages from the Munster family hash:

=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#p ages.values.sum

p ages.values.inject(:*)
=end

=begin
  
remove people with age 100 and greater



ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.select {|_, value| value <= 100}

=end

=begin

Pick out the minimum age from our current Munster family hash:



ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

=end

=begin
  
Find the index of the first name that starts with "Be"
  
=end

=begin
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#p flintstones.index {|name| name[0,2] == 'Be'}

p flintstones.map! { |name| name[0,3]}
=end


=begin
#Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |name,index|
 flintstones_hash[name] = index
end

p flintstones_hash
=end


=begin
#Amend this array so that the names are all shortened to just the first three characters:
flintstones = %w(Fred Wilma Barney Betty BamBam Pebbles)

flintstones.map! { |name| name[0,3] }

p flintstones
=end


=begin
#Create a hash that expresses the frequency with which each letter occurs in this string:


(P)
Problem
Input: string
Output: Hash

Rules:
Explicit
- input is a string
- output is a hash
- count the amount of times each letter occurs

Implicit
- capital and lowercase are different letter
- the key is the letter
- the value is the frequency

(E)
Example Problem

{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

(D)
Data Structure
string
hash

(A)
Algorithm

- create an empty hash named result
- create an array named 'letters' of all upper and lowercase letters of the alpabit
  - use a range of the uppercase aplphabit and convert to an array
  - use a range of the lowercase alphabit and convert to an array
  - concat the arrays together
- loop through the letters of the array "letters"
  - create a variable named "letter_frequency" to store the frequency of times a letter is counted
  - count the amount of times that the string "statement" has each letter
  - append the hash "result" with the letter and the fequency


statement = "The Flintstones Rock"
letters = ('A'..'Z').to_a + ('a'..'z').to_a 
result = {}

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
=end


=begin
  
Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

PEDCAC

(P)
Problem

Input: Hash
Output: Hash

Rules:
Explicit
- each member of the family gets an additional key/value pair
- the key is named "age_group"
- the value is one of three values defining the age group: kid, adult or senior
- kid ranges from ages 0-17, adult from 18-64 and senir is 65+

Implicit
- Note this is a nested Hash
  each name is a key with a value of other key value pairs

(E)
Example Problem

***This shows the age_group key added with its respective value

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

(D)
Data Structure
hashes

(A)
Algorithm

-loop through each hash
-extract the age
- compare the age to the ranges for kid, adult, senior
- add the key value pair to the hash

(C)
Code

=end

=begin
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#p munsters['Herman'].keys[-2]


munsters.each do |key, value|
#ages = value.values_at("age")
  case value["age"] 
  when 0...18
    value["age_group"] = "kid"
  when 18...65
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
end

p munsters

=end

=begin
p ['a', 'b', 'c'].map do |item|
  puts item
end
# => []
=end

p [1, 2, 3, 4, 5].each do |num|
  num + 1
end
# => []