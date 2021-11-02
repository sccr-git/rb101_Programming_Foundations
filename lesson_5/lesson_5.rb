=begin

people = { Kate: 27, john: 25, Mike: 18}

sorted = people.sort_by do |_,age|
  age
end

p sorted

[2, 5, 3, 4, 1].sort # => [1, 2, 3, 4 ,5]

[2, 5, 3, 4, 1].sort do |a, b|
  a <=> b
end
# => [1, 2, 3, 4, 5]

[2, 5, 3, 4, 1].sort do |a, b|
  b <=> a
end
# => [5, 4, 3, 2, 1]

['arc', 'bat', 'cape', 'ants', 'cap'].sort
# => ["ants", "arc", "bat", "cap", "cape"]



['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end
# => ["mat", "bed", "cot"]

word_1 = ['cot', 'bed', 'mat'].sort_by do |word|
  word[2]
end
# => ["bed", "cot", "mat"]

p word_1


people = { Kate: 27, john: 25, Mike:  18 }

people_sorted = people.sort_by do |name, _|
  name.capitalize
end

p people_sorted

arr = [[1, 3], [2]]
arr[1] = "hi there"
arr                     # => [[1, 3], "hi there"]


arr = [[1, 3], [2]]
arr[0][1] = 5
arr # => [[1, 5], [2]]

arr = [[1], [2]]
arr[0] << [3]
arr # => [[1, [3]], [2]]

arr = [[1], [2]]
arr[0] << [3]
arr[0][1][0] = 5
p arr



arr = [{ a: 'ant' }, { b: 'bear' }]
arr[0][:c] = 'cat'
arr # => [{a: => 'ant', c: => 'cat'}, b: => 'bear']



arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']

arr[0]              # => ["a", ["b"]]
arr[0][1][0]        # => "b"
arr[1]              # => { :b => "bear", :c => "cat" }
arr[1][:b]          # => "bear"
arr[1][:b][0]       # => "b"
arr[2][2]           # => "b"



answer = [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

p answer

=end

=begin
arr = ['10', '11', '9', '7', '8']

answer = arr.sort do |a,b|
  b.to_i <=> a.to_i
end

p answer


answer = arr.map do |item|
item.to_i
end

sorted = answer.sort
p sorted
=end

=begin
# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?


books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

answer = books.sort_by do |book|
  book[:published]
end

p answer



arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}


p hsh1['b'][1]



munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

sum_of_age = 0
munsters.each_value do |value|
  sum_of_age += value["age"] if value["gender"] == "male"
end

p sum_of_age



munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  puts "#{key} is a #{value["age"]}-year-old #{value["gender"]}"
end



hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'

hsh.each do |key, values|
  values.each do |value|
    value.chars.each do |char|
      puts "#{char}" if vowels.include?(char)
    end
  end
end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

answer = arr.map do |array|
  array.sort do |a,b|
    b <=> a
  end
end

p answer

answer = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hashes|
incremented_hash = {}
  hashes.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

p answer



arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_array = arr.map do |array|
  array.select do |number|
    number % 3 == 0
  end
end

p new_array




arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}


  hash = {}
  arr.each do |item|
    hash[item[0]] = item[1]
  end


p hash



arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

sorted_array = arr.sort_by do |sub_array|
  sub_array.select do |num|
    num.odd?
  end
end

p sorted_array



hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}


new_arr = hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
      value[:size].upcase
  end
end

p new_arr


# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.



arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

answer = arr.select do |sub_array|
  sub_array.all? do |_,value|
    value.all? do |num|
      num.even?
    end
  end 
end

p answer

=end

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]

customer_orders = {}

order_data.each do |row|
  if customer_orders.key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << {
      order_fulfilled: row[:order_fulfilled],
      order_value: row[:order_value]
    }
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
  end
end

customer_orders = customer_orders.values

p customer_orders










