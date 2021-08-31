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


































