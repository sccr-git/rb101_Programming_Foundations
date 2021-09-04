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
