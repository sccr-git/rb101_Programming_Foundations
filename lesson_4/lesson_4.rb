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

str = 'Patricia'
arr = str.split('')
p arr.join

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