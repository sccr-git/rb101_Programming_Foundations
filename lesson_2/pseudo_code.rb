# a method that returns the sum of two integers
=begin
def add_two_numbers(num1,num2)
 answer = num1 + num2
 return answer
end

p add_two_numbers(2,4)
=end

# a method that takes an array of strings and returns a string that is all those strings concatenated together

=begin
array = ['scott', 'wayne', 'bob', 'steve']

def set_string(array)
  string = ''
  count = 1

  if count <= array.length
    array.each do |string|
      string += string
    end
    count += 1
  end

  return string
end

p set_string(array)
=end

# a method that takes an array of integers and retuns a new array with every other element

array = [1, 2, 3, 4, 5, 6]


def every_other(array)
  new_array = []
  count = 0
  while count <= array.length
    array.each do |item|
      new_array.push(item) if (array[count]).zero? || (array[count] % 2).zero?
      count += 1
      end
    end 
  end

p every_other(array)

