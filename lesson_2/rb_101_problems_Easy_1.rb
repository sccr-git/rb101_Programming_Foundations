#Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

=begin
def repeat(string, integer)
  integer.times {puts string}
end

repeat('hello', 5)
=end

#Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. 
#You may assume that the argument is a valid integer value.

=begin
def is_odd?(int)
  int % 2 != 0
end

puts is_odd?(10)
puts is_odd?(9)
puts is_odd?(8)
puts is_odd?(7)
puts is_odd?(-10)
puts is_odd?(-9)
puts is_odd?(0)
=end

#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

=begin
def digit_list(integer)
 p integer.to_s.chars.map(&:to_i)
  
end

digit_list(456)
digit_list(45665766)
digit_list(4)
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  vehicle = array.uniq.each {|item|}
  array.each do |item, count| 
    puts "#{vehicle} => #{count}"
  end
end

count_occurrences(vehicles)